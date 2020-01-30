# This file was automatically created by FeynRules 2.3.36
# Mathematica version: 12.0.0 for Mac OS X x86 (64-bit) (April 7, 2019)
# Date: Mon 27 Jan 2020 18:45:52



from object_library import all_parameters, Parameter


from function_library import complexconjugate, re, im, csc, sec, acsc, asec, cot

# This is a default parameter object representing 0.
ZERO = Parameter(name = 'ZERO',
                 nature = 'internal',
                 type = 'real',
                 value = '0.0',
                 texname = '0')

# User-defined parameters.
Vud = Parameter(name = 'Vud',
                nature = 'external',
                type = 'real',
                value = 0.974461,
                texname = 'V_{\\text{udR}}',
                lhablock = 'CKMBLOCK',
                lhacode = [ 1 ])

Vus = Parameter(name = 'Vus',
                nature = 'external',
                type = 'real',
                value = 0.224529,
                texname = 'V_{\\text{usR}}',
                lhablock = 'CKMBLOCK',
                lhacode = [ 2 ])

Vub = Parameter(name = 'Vub',
                nature = 'external',
                type = 'real',
                value = 0.00364284,
                texname = 'V_{\\text{ubR}}',
                lhablock = 'CKMBLOCK',
                lhacode = [ 3 ])

Vcd = Parameter(name = 'Vcd',
                nature = 'external',
                type = 'real',
                value = 0.224379,
                texname = 'V_{\\text{cdR}}',
                lhablock = 'CKMBLOCK',
                lhacode = [ 4 ])

Vcs = Parameter(name = 'Vcs',
                nature = 'external',
                type = 'real',
                value = 0.97359,
                texname = 'V_{\\text{csR}}',
                lhablock = 'CKMBLOCK',
                lhacode = [ 5 ])

Vcb = Parameter(name = 'Vcb',
                nature = 'external',
                type = 'real',
                value = 0.0421456,
                texname = 'V_{\\text{cbR}}',
                lhablock = 'CKMBLOCK',
                lhacode = [ 6 ])

Vtd = Parameter(name = 'Vtd',
                nature = 'external',
                type = 'real',
                value = 0.00896391,
                texname = 'V_{\\text{tdR}}',
                lhablock = 'CKMBLOCK',
                lhacode = [ 7 ])

Vts = Parameter(name = 'Vts',
                nature = 'external',
                type = 'real',
                value = 0.0413421,
                texname = 'V_{\\text{tsR}}',
                lhablock = 'CKMBLOCK',
                lhacode = [ 8 ])

Vtb = Parameter(name = 'Vtb',
                nature = 'external',
                type = 'real',
                value = 0.999105,
                texname = 'V_{\\text{tbR}}',
                lhablock = 'CKMBLOCK',
                lhacode = [ 9 ])

smixe = Parameter(name = 'smixe',
                  nature = 'external',
                  type = 'real',
                  value = 0.001,
                  texname = '\\sin \\left(\\theta _e\\right)',
                  lhablock = 'NUMIXING',
                  lhacode = [ 1 ])

smixm = Parameter(name = 'smixm',
                  nature = 'external',
                  type = 'real',
                  value = 0.001,
                  texname = '\\sin \\left(\\theta _{\\mu }\\right)',
                  lhablock = 'NUMIXING',
                  lhacode = [ 2 ])

smixt = Parameter(name = 'smixt',
                  nature = 'external',
                  type = 'real',
                  value = 0.001,
                  texname = '\\sin \\left(\\theta _{\\tau }\\right)',
                  lhablock = 'NUMIXING',
                  lhacode = [ 3 ])

aEWM1 = Parameter(name = 'aEWM1',
                  nature = 'external',
                  type = 'real',
                  value = 127.9,
                  texname = '\\text{aEWM1}',
                  lhablock = 'SMINPUTS',
                  lhacode = [ 1 ])

Gf = Parameter(name = 'Gf',
               nature = 'external',
               type = 'real',
               value = 0.0000116637,
               texname = 'G_f',
               lhablock = 'SMINPUTS',
               lhacode = [ 2 ])

aS = Parameter(name = 'aS',
               nature = 'external',
               type = 'real',
               value = 0.1184,
               texname = '\\alpha _s',
               lhablock = 'SMINPUTS',
               lhacode = [ 3 ])

ymdo = Parameter(name = 'ymdo',
                 nature = 'external',
                 type = 'real',
                 value = 0.00504,
                 texname = '\\text{ymdo}',
                 lhablock = 'YUKAWA',
                 lhacode = [ 1 ])

ymup = Parameter(name = 'ymup',
                 nature = 'external',
                 type = 'real',
                 value = 0.00255,
                 texname = '\\text{ymup}',
                 lhablock = 'YUKAWA',
                 lhacode = [ 2 ])

yms = Parameter(name = 'yms',
                nature = 'external',
                type = 'real',
                value = 0.101,
                texname = '\\text{yms}',
                lhablock = 'YUKAWA',
                lhacode = [ 3 ])

ymc = Parameter(name = 'ymc',
                nature = 'external',
                type = 'real',
                value = 1.27,
                texname = '\\text{ymc}',
                lhablock = 'YUKAWA',
                lhacode = [ 4 ])

ymb = Parameter(name = 'ymb',
                nature = 'external',
                type = 'real',
                value = 4.7,
                texname = '\\text{ymb}',
                lhablock = 'YUKAWA',
                lhacode = [ 5 ])

ymt = Parameter(name = 'ymt',
                nature = 'external',
                type = 'real',
                value = 172,
                texname = '\\text{ymt}',
                lhablock = 'YUKAWA',
                lhacode = [ 6 ])

yme = Parameter(name = 'yme',
                nature = 'external',
                type = 'real',
                value = 0.000511,
                texname = '\\text{yme}',
                lhablock = 'YUKAWA',
                lhacode = [ 11 ])

ymm = Parameter(name = 'ymm',
                nature = 'external',
                type = 'real',
                value = 0.10566,
                texname = '\\text{ymm}',
                lhablock = 'YUKAWA',
                lhacode = [ 13 ])

ymtau = Parameter(name = 'ymtau',
                  nature = 'external',
                  type = 'real',
                  value = 1.777,
                  texname = '\\text{ymtau}',
                  lhablock = 'YUKAWA',
                  lhacode = [ 15 ])

MZ = Parameter(name = 'MZ',
               nature = 'external',
               type = 'real',
               value = 91.1876,
               texname = '\\text{MZ}',
               lhablock = 'MASS',
               lhacode = [ 23 ])

Me = Parameter(name = 'Me',
               nature = 'external',
               type = 'real',
               value = 0.000511,
               texname = '\\text{Me}',
               lhablock = 'MASS',
               lhacode = [ 11 ])

MMU = Parameter(name = 'MMU',
                nature = 'external',
                type = 'real',
                value = 0.10566,
                texname = '\\text{MMU}',
                lhablock = 'MASS',
                lhacode = [ 13 ])

MTA = Parameter(name = 'MTA',
                nature = 'external',
                type = 'real',
                value = 1.777,
                texname = '\\text{MTA}',
                lhablock = 'MASS',
                lhacode = [ 15 ])

MU = Parameter(name = 'MU',
               nature = 'external',
               type = 'real',
               value = 0.00255,
               texname = 'M',
               lhablock = 'MASS',
               lhacode = [ 2 ])

MC = Parameter(name = 'MC',
               nature = 'external',
               type = 'real',
               value = 1.27,
               texname = '\\text{MC}',
               lhablock = 'MASS',
               lhacode = [ 4 ])

MT = Parameter(name = 'MT',
               nature = 'external',
               type = 'real',
               value = 172,
               texname = '\\text{MT}',
               lhablock = 'MASS',
               lhacode = [ 6 ])

MD = Parameter(name = 'MD',
               nature = 'external',
               type = 'real',
               value = 0.00504,
               texname = '\\text{MD}',
               lhablock = 'MASS',
               lhacode = [ 1 ])

MS = Parameter(name = 'MS',
               nature = 'external',
               type = 'real',
               value = 0.101,
               texname = '\\text{MS}',
               lhablock = 'MASS',
               lhacode = [ 3 ])

MB = Parameter(name = 'MB',
               nature = 'external',
               type = 'real',
               value = 4.7,
               texname = '\\text{MB}',
               lhablock = 'MASS',
               lhacode = [ 5 ])

MNe = Parameter(name = 'MNe',
                nature = 'external',
                type = 'real',
                value = 1.e8,
                texname = '\\text{MNe}',
                lhablock = 'MASS',
                lhacode = [ 9900012 ])

MNm = Parameter(name = 'MNm',
                nature = 'external',
                type = 'real',
                value = 1.e8,
                texname = '\\text{MNm}',
                lhablock = 'MASS',
                lhacode = [ 9900014 ])

MNt = Parameter(name = 'MNt',
                nature = 'external',
                type = 'real',
                value = 1.e8,
                texname = '\\text{MNt}',
                lhablock = 'MASS',
                lhacode = [ 9900016 ])

MH = Parameter(name = 'MH',
               nature = 'external',
               type = 'real',
               value = 125,
               texname = '\\text{MH}',
               lhablock = 'MASS',
               lhacode = [ 25 ])

MnuL = Parameter(name = 'MnuL',
                 nature = 'external',
                 type = 'real',
                 value = 1,
                 texname = '\\text{MnuL}',
                 lhablock = 'MASS',
                 lhacode = [ 9000005 ])

MnuR = Parameter(name = 'MnuR',
                 nature = 'external',
                 type = 'real',
                 value = 1,
                 texname = '\\text{MnuR}',
                 lhablock = 'MASS',
                 lhacode = [ 9000006 ])

WZ = Parameter(name = 'WZ',
               nature = 'external',
               type = 'real',
               value = 1.9139514791155336,
               texname = '\\text{WZ}',
               lhablock = 'DECAY',
               lhacode = [ 23 ])

WW = Parameter(name = 'WW',
               nature = 'external',
               type = 'real',
               value = 1.3350357686528007,
               texname = '\\text{WW}',
               lhablock = 'DECAY',
               lhacode = [ 24 ])

WT = Parameter(name = 'WT',
               nature = 'external',
               type = 'real',
               value = 1.4668843384363088,
               texname = '\\text{WT}',
               lhablock = 'DECAY',
               lhacode = [ 6 ])

WNe = Parameter(name = 'WNe',
                nature = 'external',
                type = 'real',
                value = 1.3126254581536943e12,
                texname = '\\text{WNe}',
                lhablock = 'DECAY',
                lhacode = [ 9900012 ])

WNm = Parameter(name = 'WNm',
                nature = 'external',
                type = 'real',
                value = 1.312625458153694e12,
                texname = '\\text{WNm}',
                lhablock = 'DECAY',
                lhacode = [ 9900014 ])

WNt = Parameter(name = 'WNt',
                nature = 'external',
                type = 'real',
                value = 1.3126254581536934e12,
                texname = '\\text{WNt}',
                lhablock = 'DECAY',
                lhacode = [ 9900016 ])

WH = Parameter(name = 'WH',
               nature = 'external',
               type = 'real',
               value = 0.006049581772258195,
               texname = '\\text{WH}',
               lhablock = 'DECAY',
               lhacode = [ 25 ])

WnuL = Parameter(name = 'WnuL',
                 nature = 'external',
                 type = 'real',
                 value = 1,
                 texname = '\\text{WnuL}',
                 lhablock = 'DECAY',
                 lhacode = [ 9000005 ])

WnuR = Parameter(name = 'WnuR',
                 nature = 'external',
                 type = 'real',
                 value = 1,
                 texname = '\\text{WnuR}',
                 lhablock = 'DECAY',
                 lhacode = [ 9000006 ])

aEW = Parameter(name = 'aEW',
                nature = 'internal',
                type = 'real',
                value = '1/aEWM1',
                texname = '\\alpha _{\\text{EW}}')

G = Parameter(name = 'G',
              nature = 'internal',
              type = 'real',
              value = '2*cmath.sqrt(aS)*cmath.sqrt(cmath.pi)',
              texname = 'G')

CKM1x1 = Parameter(name = 'CKM1x1',
                   nature = 'internal',
                   type = 'complex',
                   value = 'Vud',
                   texname = '\\text{CKM1x1}')

CKM1x2 = Parameter(name = 'CKM1x2',
                   nature = 'internal',
                   type = 'complex',
                   value = 'Vus',
                   texname = '\\text{CKM1x2}')

CKM1x3 = Parameter(name = 'CKM1x3',
                   nature = 'internal',
                   type = 'complex',
                   value = 'Vub',
                   texname = '\\text{CKM1x3}')

CKM2x1 = Parameter(name = 'CKM2x1',
                   nature = 'internal',
                   type = 'complex',
                   value = 'Vcd',
                   texname = '\\text{CKM2x1}')

CKM2x2 = Parameter(name = 'CKM2x2',
                   nature = 'internal',
                   type = 'complex',
                   value = 'Vcs',
                   texname = '\\text{CKM2x2}')

CKM2x3 = Parameter(name = 'CKM2x3',
                   nature = 'internal',
                   type = 'complex',
                   value = 'Vcb',
                   texname = '\\text{CKM2x3}')

CKM3x1 = Parameter(name = 'CKM3x1',
                   nature = 'internal',
                   type = 'complex',
                   value = 'Vtd',
                   texname = '\\text{CKM3x1}')

CKM3x2 = Parameter(name = 'CKM3x2',
                   nature = 'internal',
                   type = 'complex',
                   value = 'Vts',
                   texname = '\\text{CKM3x2}')

CKM3x3 = Parameter(name = 'CKM3x3',
                   nature = 'internal',
                   type = 'complex',
                   value = 'Vtb',
                   texname = '\\text{CKM3x3}')

cmixe = Parameter(name = 'cmixe',
                  nature = 'internal',
                  type = 'real',
                  value = 'cmath.sqrt(1 - smixe**2)',
                  texname = '\\cos \\left(\\theta _e\\right)')

cmixm = Parameter(name = 'cmixm',
                  nature = 'internal',
                  type = 'real',
                  value = 'cmath.sqrt(1 - smixm**2)',
                  texname = '\\cos \\left(\\theta _{\\mu }\\right)')

cmixt = Parameter(name = 'cmixt',
                  nature = 'internal',
                  type = 'real',
                  value = 'cmath.sqrt(1 - smixt**2)',
                  texname = '\\cos \\left(\\theta _{\\tau }\\right)')

MNue = Parameter(name = 'MNue',
                 nature = 'internal',
                 type = 'real',
                 value = '(MNe*smixe**2)/cmixe**2',
                 texname = '\\text{MNue}')

MNum = Parameter(name = 'MNum',
                 nature = 'internal',
                 type = 'real',
                 value = '(MNm*smixm**2)/cmixm**2',
                 texname = '\\text{MNum}')

MNut = Parameter(name = 'MNut',
                 nature = 'internal',
                 type = 'real',
                 value = '(MNt*smixt**2)/cmixt**2',
                 texname = '\\text{MNut}')

MW = Parameter(name = 'MW',
               nature = 'internal',
               type = 'real',
               value = 'cmath.sqrt(MZ**2/2. + cmath.sqrt(MZ**4/4. - (aEW*cmath.pi*MZ**2)/(Gf*cmath.sqrt(2))))',
               texname = 'M_W')

ee = Parameter(name = 'ee',
               nature = 'internal',
               type = 'real',
               value = '2*cmath.sqrt(aEW)*cmath.sqrt(cmath.pi)',
               texname = 'e')

sw2 = Parameter(name = 'sw2',
                nature = 'internal',
                type = 'real',
                value = '1 - MW**2/MZ**2',
                texname = '\\text{sw2}')

cw = Parameter(name = 'cw',
               nature = 'internal',
               type = 'real',
               value = 'cmath.sqrt(1 - sw2)',
               texname = 'c_w')

sw = Parameter(name = 'sw',
               nature = 'internal',
               type = 'real',
               value = 'cmath.sqrt(sw2)',
               texname = 's_w')

g1 = Parameter(name = 'g1',
               nature = 'internal',
               type = 'real',
               value = 'ee/cw',
               texname = 'g_1')

gw = Parameter(name = 'gw',
               nature = 'internal',
               type = 'real',
               value = 'ee/sw',
               texname = 'g_w')

vev = Parameter(name = 'vev',
                nature = 'internal',
                type = 'real',
                value = '(2*MW*sw)/ee',
                texname = '\\text{vev}')

lam = Parameter(name = 'lam',
                nature = 'internal',
                type = 'real',
                value = 'MH**2/(2.*vev**2)',
                texname = '\\text{lam}')

yb = Parameter(name = 'yb',
               nature = 'internal',
               type = 'real',
               value = '(ymb*cmath.sqrt(2))/vev',
               texname = '\\text{yb}')

yc = Parameter(name = 'yc',
               nature = 'internal',
               type = 'real',
               value = '(ymc*cmath.sqrt(2))/vev',
               texname = '\\text{yc}')

ydo = Parameter(name = 'ydo',
                nature = 'internal',
                type = 'real',
                value = '(ymdo*cmath.sqrt(2))/vev',
                texname = '\\text{ydo}')

ye = Parameter(name = 'ye',
               nature = 'internal',
               type = 'real',
               value = '(yme*cmath.sqrt(2))/vev',
               texname = '\\text{ye}')

ym = Parameter(name = 'ym',
               nature = 'internal',
               type = 'real',
               value = '(ymm*cmath.sqrt(2))/vev',
               texname = '\\text{ym}')

ys = Parameter(name = 'ys',
               nature = 'internal',
               type = 'real',
               value = '(yms*cmath.sqrt(2))/vev',
               texname = '\\text{ys}')

yt = Parameter(name = 'yt',
               nature = 'internal',
               type = 'real',
               value = '(ymt*cmath.sqrt(2))/vev',
               texname = '\\text{yt}')

ytau = Parameter(name = 'ytau',
                 nature = 'internal',
                 type = 'real',
                 value = '(ymtau*cmath.sqrt(2))/vev',
                 texname = '\\text{ytau}')

yup = Parameter(name = 'yup',
                nature = 'internal',
                type = 'real',
                value = '(ymup*cmath.sqrt(2))/vev',
                texname = '\\text{yup}')

muH = Parameter(name = 'muH',
                nature = 'internal',
                type = 'real',
                value = 'cmath.sqrt(lam*vev**2)',
                texname = '\\mu')

