# Example of using MicrOmegas

In your MicrOmegas directory, run:
```bash
./newProject higgsPortalDM
```
This will create a new directory called `higgsPortalDM`

In FeynRules, run:
```Mathematica
(* Load FeynRules *)
<< FeynRules`;
SetDirectory[NotebookDirectory[]];
(* Load Model *)
LoadModel[FileNameJoin[{"models", "sm_higgs_portal_dm.fr"}]]
(* Create CalcHEP files *)
WriteCHOutput[LSM]
```
This will create a folder called `Standard-Model-+-Higgs-Portal-DM-CH`. Copy this folder into the directory `MicrOmegas-path/higgsPortalDM/work/models` where `MicrOmegas-path` is the path to your MicrOmegas directory. Then, in the directory `MicrOmegas-path/higgsPortalDM`, create a new file called `rd_only.c`. Insert the following code into that file:
```c
#include"../include/micromegas.h"
#include"../include/micromegas_aux.h"
#include"lib/pmodel.h"

double compute_rd();

int main(int argc,char** argv){
    char cdmName[10];
    int err;

    ForceUG=0;  /* to Force Unitary Gauge assign 1 */
    VZdecay=0; VWdecay=0;

    if(argc==1) {
        printf(" Correct usage:  ./main  <file with parameters> \n");
        printf("Example: ./main data1.par\n");
        exit(1);
    }

    err=readVar(argv[1]);

    if(err==-1) {
        printf("Can not open the file\n"); exit(1);
    }
    else if (err>0) {
        printf("Wrong file contents at line %d\n",err);exit(1);
    }

    err=sortOddParticles(cdmName);
    if(err) {
        printf("Can't calculate %s\n",cdmName); return 1;
    }


    // Compute Relic density
    int fast=1;
    double Beps=1.E-4;
    double Omega;
    int err_rd;

    if(CDM1 && CDM2) {
        Omega= darkOmega2(fast,Beps);

        printf("Omega_1h^2=%.2E\n", Omega * (1-fracCDM2));
        printf("Omega_2h^2=%.2E\n", Omega * fracCDM2);
    } else {
        double xf;
        Omega=darkOmega(&xf, fast, Beps, &err_rd);
        printf("xf=%.5e\n", xf);
        printf("omega=%.5e\n", Omega);
    }


    // CLEAN
    system("rm -f HB.* HB.* hb.* hs.*  debug_channels.txt debug_predratio.txt  Key.dat");
    system("rm -f Lilith_*   particles.py*");
    system("rm -f   smodels.in  smodels.log  smodels.out  summary.*");


    killPlots();
    return 0;
}
```
Then, compile the code using:
```bash
make main=rd_only
```
Next, create a python file called `scan.py` in `MicrOmegas-path/higgsPortalDM`. Insert the following code in that file:
```python
import subprocess
import numpy as np
import matplotlib.pyplot as plt
from tqdm import tqdm  # so we can print a progress bar

PARAM_FILE = 'data.par'


def write_params(mdm, smix, msm, file='data.par'):
    """
    Write the intput parameters to par-file.

    Parameters
    ----------
    mdm: float
        Dark matter mass in GeV.
    smix: float
        Sine of the Higgs/scalar-mediator mixing angle.
    msm: float
        Scalar-mediator mass in GeV.
    file: {str, 'data.par'}
        File to write parameters to. Default is 'data.par'.
    """
    with open(file, 'w') as f:
        line_mdm = 'MDM {}\n'.format(mdm)
        line_smix = 'smix {}\n'.format(smix)
        line_msm = 'MSM {}'.format(msm)
        f.writelines([line_mdm, line_smix, line_msm])

    return None


def run(mdm, smix, msm, file='data.par', pbar=None):
    """
    Run MicrOmegas to compute relic-density with the given input parameters.

    Parameters
    ----------
    mdm: float
        Dark matter mass in GeV.
    smix: float
        Sine of the Higgs/scalar-mediator mixing angle.
    msm: float
        Scalar-mediator mass in GeV.
    file: {str, 'data.par'}
        File to write parameters to. Default is 'data.par'.

    Returns
    -------
    result: dict
        Dictionary of results. Key 'rd' is the relic-density and key 'xf' is
        value of 'x = mdm / T' at freeze-out.
    """
    # write the parameters to 'data.par'
    write_params(mdm, smix, msm, file=file)
    # run micromegas (NOTE: works with python 3.5 and greater)
    out = str(subprocess.run(["./rd_only", file],
                             capture_output=True).stdout, encoding="UTF-8")

    # read in the output
    try:
        xf, rd, _ = out.split("\n")
        xf = float(xf.split("=")[1])
        rd = float(rd.split("=")[1])
    except ValueError:
        rd, xf = {'rd': np.nan, 'xf': np.nan}

    if pbar is not None:
        pbar.update(1)

    return {'rd': rd, 'xf': xf}


def scan(parameters, file='data.par'):
    """
    Compute relic density and freeze-out temperatures for every value in
    'paramters'.

    Parameters
    ----------
    parameters: np.array(dict)
        An array of dictionaries contains parameters values, i.e.
            [{'mdm': 1.0, 'smix': 1.0, 'msm': 1.0}, ...]

    Returns
    -------
    results: np.array(dtype=dict)
        An array of the dictionaries.  Key 'rd' is the relic-density and key
        'xf' is value of 'x = mdm / T' at freeze-out.
    """
    with tqdm(total=len(parameters)) as pbar:
        results = np.array([run(par['mdm'], par['smix'], par['msm'], pbar=pbar)
                            for par in parameters])

    return results


mdm = 1e3  # 1 TeV
msms = np.logspace(2, 4, num=100)  # 100 GeV to 10 TeV
smixs = np.logspace(-7, 0, num=100)

parameters = np.array([[{'mdm': mdm, 'msm': msm, 'smix': smix}
                        for smix in smixs] for msm in msms]).flatten()

# perform scan
results = scan(parameters)

# resahpe the results into 2d array
rds = np.array([res['rd'] for res in results]).reshape((len(smixs), len(msms)))
xfs = np.array([res['xf'] for res in results]).reshape((len(smixs), len(msms)))

plt.figure(dpi=100)
plt.title(
    r'$\Omega h^2 = 0.112, m_{\mathrm{DM}} = 1 \ \mathrm{TeV}$', fontsize=16)
plt.contour(msms, smixs, rds, levels=[0.112])
plt.yscale('log')
plt.xscale('log')
plt.ylabel(r'$\sin(\theta_{\mathrm{mix}})$', fontsize=16)
plt.xlabel(r'$m_{\mathrm{S}} \ (\mathrm{GeV})$', fontsize=16)
plt.savefig('rd.pdf')
```
This code will scan over scalar-mediator masses and mixing angles and create a contour plot of the parameters which give the correct relic density.
