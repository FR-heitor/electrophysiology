%% INSPEÇÃO GERAL DO SINAL INDIVIDUAL
clc
clear all
close all

addpath('G:\Meu Drive\Projeto Lagartos\Funções utilizadas\DisciplinaMatlab\CircStat')
cd     ('G:\Meu Drive\Projeto Lagartos\2022\')

load AQ-CO-EV.mat

srate = 600;

%% REMOVER RUÍDO
srate = 600;
idx = 1/srate;
data = L16MUS3TESTE(:,:)*1e-3;
timevector = idx:idx:length(data)/srate;
plot(timevector,data);

%% CANAIS
% OBS: L17 TESTE (F3-T3-T4)
% F3-F4-T3-T4 - CONSOLIDAÇÃO E EVOCAÇÃO
% T3-F3-T4-F4 - AQUISIÇÃO
%MUSCIMOL - EVOCAÇÃO
srate = 600;

L16TRMUS3CP = L16MUS3TREINO([1:305*600,325*600:end],1:4);
L17TRMUS3CP = L17MUS3TREINO([1:304*600,325*600:end],1:4);
L18TRMUS3CP = L18MUS3TREINO([1:374*600,381.8*600:384.1*600,387.1*600:391*600,396.3*600:end],1:4);
L19TRMUS3CP = L19MUS3TREINO([1:307.5*600,326.5*600:end],1:4);
L20TRMUS3CP = L20MUS3TREINO([1:334.5*600,349.2*600:354.8*600, 365.1*600:end],1:4);


L16TTMUS3CP = L16MUS3TESTE([1:300*600, 340*600:end],1:4);
L17TTMUS3CP = L17MUS3TESTE([1:304*600,320*600:end],1:3);
L18TTMUS3CP = L18MUS3TESTE([1:311*600,313*600:316.5*600, 317.5*600:end],1:4);
L19TTMUS3CP = L19MUS3TESTE([1:302*600,310.5*600:end],1:4);
L20TTMUS3CP = L20MUS3TESTE([1:305*600, 314*600:172.3*600, 175*600:189.5*600, ...
                            190.5*600:266.8*600, 267.1*600:303*600, 305*600:310.4*600, ...
                            313.5*600:end],1:4)


%MUS2CIMOL - CONSOLIDAÇÃO
L11TRMUS2CP = L11MUS2TREINO([1:301.7*600,323.6*600:603*600],1:4);
L12TRMUS2CP = L12MUS2TREINO([1:302*600,327.9*600:end],1:4);
L13TRMUS2CP = L13MUS2TREINO([1:288.6*600,296.1*600:332*600,343.3*600:end ],1:4);
L14TRMUS2CP = L14MUS2TREINO([1:299.1*600,313.6*600:end],1:4);
L15TRMUS2CP = L15MUS2TREINO([1:303.8*600,328.3*600:end],1:4);


L11TTMUS2CP = L11MUS2TESTE([1:306.4*600,338.5*600:end],1:4);
L12TTMUS2CP = L12MUS2TESTE([1:305.5*600,317*600:end],1:4);
L13TTMUS2CP = L13MUS2TESTE([1:3*600,4.5*600:184.8*600, 185.5*600:304*600, ...
                            315*600:end],1:4);
L14TTMUS2CP = L14MUS2TESTE([1:305.5*600,315.1*600:end],1:4);
L15TTMUS2CP = L15MUS2TESTE([1:300*600, 330*600:494*600, 497*600:end],1:4);

%MUSCIMOL - AQUISIÇÃO
L01TRMUSCP = L01TRMUSCOMPORTAMENTO([2:360*600,480*srate:719.5*srate],1:4);
L05TRMUSCP = L05TRMUSCOMPORTAMENTO(2:359701,1:4);
L08TRMUSCP = L08TRMUSCOMPORTAMENTO(2:359701,1:4);
L12TRMUSCP = L12TRMUSCOMPORTAMENTO(2:359701,1:4);
L13TRMUSCP = L13TRMUSCOMPORTAMENTO(2:359701,1:4);
L14TRMUSCP = L14TRMUSCOMPORTAMENTO(2:359701,1:4);
L15TRMUSCP = L15TRMUSCOMPORTAMENTO(2:359701,1:4);
L19TRMUSCP = L19TRMUSCOMPORTAMENTO(2:359701,1:4);

L01TTMUSCP = L01TTMUS(1:359700,1:4);
L05TTMUSCP = L05TTMUS(1:359700,1:4);
L08TTMUSCP = L08TTMUS(1:359700,1:4);
L12TTMUSCP = L12TTMUS(1:359700,1:4);
L13TTMUSCP = L13TTMUS(1:359700,1:4);
L14TTMUSCP = L14TTMUS(1:359700,1:4);
L15TTMUSCP = L15TTMUS(1:359700,1:4);
L19TTMUSCP = L19TTMUS(1:359700,1:4);

%CONTROLE
L02TRCTLCP = L02TRCTLCOMPORTAMENTO(1:359700,1:4);
L06TRCTLCP = L06TRCTLCOMPORTAMENTO(1:359700,1:4);
L07TRCTLCP = L07TRCTLCOMPORTAMENTO(1:359700,1:4);
L18TRCTLCP = L18TRCTLCOMPORTAMENTO([1:234.5*srate, 234.9*srate:600*srate],1:4);
L20TRCTLCP = L20TRCTLCOMPORTAMENTO([1:289*srate, 289.4*srate:600*srate],1:4);
L01TRCTLCP = L1TR([1:36*600, 38*600:105*600, 108*600:110*600, ...
    114*600:116*600, 118*600:147*600, 149*600:191*600, ...
    194*600:202*600, 205*600:290*600, 292*600:405*600, ...
    407*600:411*600, 414*600:473*600, 475*600:519*600, ...
    524*600:587*600, 590*600:595*600, 597*600:600*600, ...
    600*600:608*600, 615*600:642*600, 645*600:777*600,...
    780*600:826*600, 844*600:end],1:4);

L03TRCTLCP = L2TR([1:81*600, 84*600:285*600, 300*600:600*600,620*600:end],1:4);
L04TRCTLCP = L4TR([1:7*600, 8*600:15*600, 17*600:30*600, ...
    32*600:74*600, 77*600:82*600, 85*600:102*600, ...
    105*600:116*600, 119*600:135*600, 138*600:187*600, ...
    189*600:216*600, 218*600:225*600, 227*600:248*600, ...
    250*600:281*600, 284*600:296*600, 299*600:348*600, ...
    351*600:361*600, 381*600:440*600, 442*600:470*600, ...
    478*600:520*600, 525*600:558*600, 563*600:580*600, ...
    591*600:595*600, 601*600:607*600, 610*600:652*600, ...
    660*600:697*600, 700*600:801*600, 803*600:814*600, ...
    815*600:821*600, 823*600:840*600, 842*600:846*600, ...
    848*600:871*600, 873*600:884*600, 886*600:894*600, ...
    895*600:900*600, 901*600:925*600, 936*600:950*600, ...
    952*600:967*600, 974*600:982*600, 989*600:998*600, ...
    1000*600:1003*600, 1009*600:1026*600, 1040*600:1085*600, ...
    1087*600:1119*600, 1125*600:1142*600, 1187*600:end],1:4);
L05TRCTLCP = L5TR([1*600:30*600, 35*600:81*600, 84*600:194*600, ...
    199*600:217*600, 248*600:438*600, 440*600:596*600, ...
    600*600:603*600, 614*600:920*600, 950*600:end],1:4);
L08TRCTLCP = L6TR([1:9*600, 13*600:21*600, 25*600:31.5*600, ...
    34*600:41*600, 43*600:60*600, 100*600:116*600, ...
    120*600:164*600, 170*600:220*600, 235*600:260*600, ...
    275*600:317*600, 321*600:360*600, 362*600:392*600, ...
    397*600:430*600, 433*600:443*600, 454*600:497*600, ...
    510*600:600*600, 620*600:813*600, 823*600:836*600, ...
    856*600:914*600, 916*600:end],1:4);

L02TTCTLCP = L02TTCTL(1:359700,1:4);
L06TTCTLCP = L06TTCTL(1:359700,1:4);
L07TTCTLCP = L07TTCTL(1:359700,1:4);
L18TTCTLCP = L18TTCTL([1:197*srate, 197.5*srate:600*srate],1:4);
L20TTCTLCP = L20TTCTL([1:569.4*srate, 569.9*srate:600*srate],1:4);
L01TTCTLCP = L1TT([1*600:17*600, 29*600:35*600, 38*600:106*600, ...
    123*600:152*600, 161*600:177.5*600, 182*600:214*600, ...
    217*600:267*600, 268*600:312*600, 321*600:333*600, ...
    336*600:370*600, 373*600:398.5*600, 445*600:495*600, ...
    499*600:529*600, 530*600:571*600, 571.5*600:578.4*600,...
    579*600:592*600, 595*600:600*600, 615*600:630.6*600, ....
    638*600:684*600, 685*600:716*600, 717*600:754.5*600, ...
    755*600:765.8*600,776.9*600:786.6*600, ...
    788.5*600:791*600, 798*600:806*600, 808*600:824.5*600, 831*600:843*600, ...
    845.2*600:857.9*600, 859.3*600:874.5*600, 877.2*600:915.5*600, ...
    916.3*600:938.5*600, 944.4*600:961.7*600, 972.9*600:983.3*600, ...
    984.7*600:995.5*600, 998*600:1019*600, 1023*600:1041*600, ...
    1056*600:1091*600, 1093*600:1153*600, 1157*600:1182*600, 1184*600:end],1:4);
L03TTCTLCP = L2TT([1*600:65*600, 68*600:92*600, 104*600:162*600, 165*600:231*600, ...
    233*600:262*600, 264*600:281*600, 283*600:305*600, 316*600:339*600, ...
    436*600:600*600, 620*600:627.8*600, 634*600:653.3*600, 659*600:673*600, ...
    676*600:685*600, 710*600:729.6*600, 742*600:787.2*600, 790*600:805*600, ...
    809*600:844.5*600, 846.5*600:865.5*600, 939.5*600:989.5*600, ...
    993.5*600:1072*600, 1074*600:1091*600, 1096*600:1162*600, 1166*600:end],1:4);
L04TTCTLCP = L4TT([1*600:16*600, 22*600:42.5*600, 56.5*600:163.5*600, ...
    172*600:289.5*600, 298*600:358*600, 363*600:393.5*600, ...
    396.5*600:414*600, 481.5*600:482*600, 483*600:502*600, ...
    502.6*600:530.6*600, 531.6*600:534*600, 534.5*600:542.5*600, ...
    552*600:555*600, 556.5*600:560.6*600, 561.5*600:575.7*600, ...
    578*600:584*600, 589*600:590.3*600, 590.8*600:593.4*600, ...
    594.2*600:600*600, 618.5*600:625.5*600, 628.5*600:659.7*600, ...
    666.9*600:675.8*600, 678.2*600:684.5*600, 686.6*600:701.6*600, ...
    702.3*600:714.5*600, 715.9*600:736*600, 737.2*600:757.6*600, ...
    760.3*600:792*600, 793.5*600:803.1*600, 804.5*600:811*600, ...
    814.5*600:944*600, 950.4*600:1072*600, 1079*600:end],1:4);
L05TTCTLCP = L5TT([1*600:8.2*600, 18*600:26.9*600, 106.7*600:155.5*600,...
    189.5*600:212.2*600, 226.5*600:270.7*600, ...
    287.4*600:316.5*600, 334.9*600:351.2*600, 372.3*600:390*600,...
    406*600:419.2*600, 429.7*600:442.5*600, 452.8*600:469*600, ...
    472.6*600:484.5*600, 495.5*600:573.5*600, 585.6*600:604*600, ...
    639.8*600:657.4*900, 663.5*600:678.8*600, ...
    690*600:728.9*600, 735.5*600:763.3*600, 766.3*600:840.2600, ...
    844.6*600:end],1:4);
L08TTCTLCP = L6TT([10.3*600:20.5*600, 24.3*600:30.7*600, 31.6*600:57.6*600, ...
    60.8*600:66.9*600, 69.3*600:85*600, 88*600:98.8*600, 100*600:138*600, ...
    140*600:176.6*600, 179.8*600:190.3*600, 194.4*600:206.3*600, ...
    208.7*600:290*600, 292.5*600:341.5*600, 344*600:349.5*600, ...
    351*600:444*600, 445.5*600:476.5*600, 480.5*600:492*600, ...
    496*600:525.3*600, 526.2*600:583.5*600, 587*600:600*600, ...
    610*600:676*600, 678.5*600:709.3*600, 711.2*600:730*600, ....
    733.5*600:780.4*600, 782.5*600:789*600, 792*600:800.5*600, 816*600:821*600, ...
    825.5*600:884.5*600, 893.5*600:950.8*600, 955.6*600:1070*600, 1078*600:1091*600, ...
    1094*600:1173*600, 1182*600:end],1:4);

%CONTROLE 2

L01TRCTL2CP = L1CTL2TREINO(1:359700,1:4);
L03TRCTL2CP = L3CTL2TREINO([1:303.5*600,323.6*600:end],1:4);
L04TRCTL2CP = L4CTL2TREINO([1:291*600,306.5*600:end],1:4);
L06TRCTL2CP = L6CTL2TREINO([1:297.5*srate, 320.8*srate:end],1:4);
L09TRCTL2CP = L9CTL2TREINO([1:304*srate,324*srate:end],1:4);

L01TTCTL2CP = L1CTL2TESTE([1:306*600,316*600:end],1:4);
L03TTCTL2CP = L3CTL2TESTE([1:302*600,312*600:end],1:4);
L04TTCTL2CP = L4CTL2TESTE(1:359700,1:4);
L06TTCTL2CP = L6CTL2TESTE([1:303*600, 315*600:end],1:4);
L09TTCTL2CP = L9CTL2TESTE([1:303*srate,310*600:end],1:4);
%% FOUR CHANNELS

% CDM channels 2 and 4
% CL channels 1 and 3

%% AQUISIÇÃO
%GRUPO CTL   - ANIMAIS 1:5
%GRUPO MUS 1 - ANIMAIS 1 2 3 6 7
%
% CCDMtr - grupo CTL córtex dorso-medial treino
% CCDMtt - grupo CTL córtex dorso-medial teste
% MCDMtr - grupo MUS córtex dorso-medial treino
% MCDMtt - grupo MUS córtex dorso-medial teste

% CCLtr - grupo CTL córtex lateral treino
% CCLtt - grupo CTL córtex lateral teste
% MCLtr - grupo MUS córtex lateral treino
% MCLtt - grupo MUS córtex lateral teste


%MUSCIMOL TREINO
MCDMtr2 = ([L01TRMUSCP(1:359700,2), L05TRMUSCP(1:359700,2),...
    L08TRMUSCP(1:359700,2), L12TRMUSCP(1:359700,2),...
    L13TRMUSCP(1:359700,2), L14TRMUSCP(1:359700,2),...
    L15TRMUSCP(1:359700,2), L19TRMUSCP(1:359700,2)])'.*1e-3;
MCDMtr4 = ([L01TRMUSCP(1:359700,4), L05TRMUSCP(1:359700,4),...
    L08TRMUSCP(1:359700,4), L12TRMUSCP(1:359700,4),...
    L13TRMUSCP(1:359700,4), L14TRMUSCP(1:359700,4),...
    L15TRMUSCP(1:359700,4), L19TRMUSCP(1:359700,4)])'.*1e-3;

MCLtr3 = ([L01TRMUSCP(1:359700,3), L05TRMUSCP(1:359700,3),...
    L08TRMUSCP(1:359700,3), L12TRMUSCP(1:359700,3),...
    L13TRMUSCP(1:359700,3), L13TRMUSCP(1:359700,3),...
    L15TRMUSCP(1:359700,3), L19TRMUSCP(1:359700,3)])'.*1e-3;
MCLtr1 = ([L01TRMUSCP(1:359700,1), L05TRMUSCP(1:359700,1),...
    L08TRMUSCP(1:359700,1), L12TRMUSCP(1:359700,1),...
    L13TRMUSCP(1:359700,1), L13TRMUSCP(1:359700,1),...
    L15TRMUSCP(1:359700,1), L19TRMUSCP(1:359700,1)])'.*1e-3;

%MUSCIMOL TESTE
MCDMtt2 = ([L01TTMUSCP(1:359700,4),L05TTMUSCP(1:359700,4),...
    L08TTMUSCP(1:359700,4), L12TTMUSCP(1:359700,4),...
    L13TTMUSCP(1:359700,4), L14TTMUSCP(1:359700,4),...
    L15TTMUSCP(1:359700,4), L19TTMUSCP(1:359700,4)])'.*1e-3;
MCDMtt4 = ([L01TTMUSCP(1:359700,4), L05TTMUSCP(1:359700,4),...
    L08TTMUSCP(1:359700,4), L12TTMUSCP(1:359700,4),...
    L13TTMUSCP(1:359700,4), L14TTMUSCP(1:359700,4),...
    L15TTMUSCP(1:359700,4), L19TTMUSCP(1:359700,4)])'.*1e-3;

MCLtt3 =  ([L01TTMUSCP(1:359700,3), L05TTMUSCP(1:359700,3),...
    L08TTMUSCP(1:359700,3), L12TTMUSCP(1:359700,3),...
    L13TTMUSCP(1:359700,3), L13TTMUSCP(1:359700,3),...
    L15TTMUSCP(1:359700,3), L19TTMUSCP(1:359700,3)])'.*1e-3;
MCLtt1 =  ([L01TTMUSCP(1:359700,1),L05TTMUSCP(1:359700,1),...
    L08TTMUSCP(1:359700,1), L12TTMUSCP(1:359700,1),...
    L13TTMUSCP(1:359700,1), L13TTMUSCP(1:359700,1),...
    L15TTMUSCP(1:359700,1), L19TTMUSCP(1:359700,1)])'.*1e-3;

%CONTROLE TREINO
CCDMtr2 = ([L02TRCTLCP(1:359700,2), L06TRCTLCP(1:359700,2), ...
    L07TRCTLCP(1:359700,2), L18TRCTLCP(1:359700,2), L20TRCTLCP(1:359700,2), ...
    L01TRCTLCP(100001:459700,2), L04TRCTLCP(100001:459700,2), L08TRCTLCP(100001:459700,2)])'.*1e-3;
CCDMtr4 = ([L02TRCTLCP(1:359700,4), L06TRCTLCP(1:359700,4), ...
    L07TRCTLCP(1:359700,4), L18TRCTLCP(1:359700,4), L20TRCTLCP(1:359700,4), ...
    L01TRCTLCP(100001:459700,4), L04TRCTLCP(100001:459700,4), L08TRCTLCP(100001:459700,4)])'.*1e-3;

CCLtr3 = ([L02TRCTLCP(1:359700,3), L06TRCTLCP(1:359700,3), ...
    L07TRCTLCP(1:359700,3), L18TRCTLCP(1:359700,3), L20TRCTLCP(1:359700,3), ...
    L01TRCTLCP(100001:459700,3), L04TRCTLCP(100001:459700,3), L08TRCTLCP(100001:459700,3)])'.*1e-3;
CCLtr1 = ([L02TRCTLCP(1:359700,1), L06TRCTLCP(1:359700,1), ...
    L07TRCTLCP(1:359700,1), L18TRCTLCP(1:359700,1), L20TRCTLCP(1:359700,1), ...
    L01TRCTLCP(100001:459700,1), L04TRCTLCP(100001:459700,1), L08TRCTLCP(100001:459700,1)])'.*1e-3;

%CONTROLE TESTE
CCDMtt2 = ([L02TTCTLCP(1:359700,2), L06TTCTLCP(1:359700,2), ...
    L07TTCTLCP(1:359700,2), L18TTCTLCP(1:359700,2), L20TTCTLCP(1:359700,2), ...
    L01TTCTLCP(100001:459700,2), L04TTCTLCP(100001:459700,2), L08TTCTLCP(100001:459700,2)])'.*1e-3;
CCDMtt4 = ([L02TTCTLCP(1:359700,4), L06TTCTLCP(1:359700,4), ...
    L07TTCTLCP(1:359700,4), L18TTCTLCP(1:359700,4), L20TTCTLCP(1:359700,4), ...
    L01TTCTLCP(100001:459700,4), L04TTCTLCP(100001:459700,4), L08TTCTLCP(100001:459700,4)])'.*1e-3;

CCLtt3 =  ([L02TTCTLCP(1:359700,3), L06TTCTLCP(1:359700,3), ...
    L07TTCTLCP(1:359700,3), L18TTCTLCP(1:359700,3), L20TTCTLCP(1:359700,3), ...
    L01TTCTLCP(100001:459700,3), L04TTCTLCP(100001:459700,3), L08TTCTLCP(100001:459700,3)])'.*1e-3;
CCLtt1 =  ([L02TTCTLCP(1:359700,1), L06TTCTLCP(1:359700,1), ...
    L07TTCTLCP(1:359700,1), L18TTCTLCP(1:359700,1), L20TTCTLCP(1:359700,1), ...
    L01TTCTLCP(100001:459700,1), L04TTCTLCP(100001:459700,1), L08TTCTLCP(100001:459700,1)])'.*1e-3;

%% CONSOLIDAÇÃO
% F3-F4-T3-T4 - CONSOLIDAÇÃO E EVOCAÇÃO
%GRUPO CTL e MUS2  - ANIMAIS 1:5

%CTL
%TREINO
CCDM2tr2 = ([L01TRCTL2CP(1:346981,1), L03TRCTL2CP(1:346981,1), ...
    L04TRCTL2CP(1:346981,1), L06TRCTL2CP(1:346981,1), L09TRCTL2CP(1:346981,1)])'*1e-3;
CCDM2tr4 = ([L01TRCTL2CP(1:346981,2), L03TRCTL2CP(1:346981,2), ...
    L04TRCTL2CP(1:346981,2), L06TRCTL2CP(1:346981,1), L09TRCTL2CP(1:346981,2)])'*1e-3;
CCL2tr1 = ([L01TRCTL2CP(1:346981,3), L03TRCTL2CP(1:346981,3), ...
    L04TRCTL2CP(1:346981,3), L06TRCTL2CP(1:346981,1), L09TRCTL2CP(1:346981,3)])'*1e-3;
CCL2tr3 = ([L01TRCTL2CP(1:346981,4), L03TRCTL2CP(1:346981,4), ...
    L04TRCTL2CP(1:346981,4), L06TRCTL2CP(1:346981,1), L09TRCTL2CP(1:346981,4)])'*1e-3;

%TESTE
CCDM2tt2 = ([L01TTCTL2CP(1:346981,1), L03TTCTL2CP(1:346981,1), ...
    L04TTCTL2CP(1:346981,1), L06TTCTL2CP(1:346981,1), L09TTCTL2CP(1:346981,1)])'*1e-3;
CCDM2tt4 = ([L01TTCTL2CP(1:346981,2), L03TTCTL2CP(1:346981,2), ...
    L04TTCTL2CP(1:346981,2), L06TTCTL2CP(1:346981,2), L09TTCTL2CP(1:346981,2)])'*1e-3;
CCL2tt1 = ([L01TTCTL2CP(1:346981,3), L03TTCTL2CP(1:346981,3), ...
    L04TTCTL2CP(1:346981,3), L06TTCTL2CP(1:346981,3), L09TTCTL2CP(1:346981,3)])'*1e-3;
CCL2tt3 = ([L01TTCTL2CP(1:346981,4), L03TTCTL2CP(1:346981,4), ...
    L04TTCTL2CP(1:346981,4), L06TTCTL2CP(1:346981,4), L09TTCTL2CP(1:346981,4)])'*1e-3;

%MUS-2
%TREINO
MCDM2tr2 = ([L11TRMUS2CP(1:342200,1), L12TRMUS2CP(1:342200,1), ...
    L13TRMUS2CP(1:342200,1), L14TRMUS2CP(1:342200,1), L15TRMUS2CP(1:342200,1)])'*1e-3;
MCDM2tr4 = ([L11TRMUS2CP(1:342200,2), L12TRMUS2CP(1:342200,2), ...
    L13TRMUS2CP(1:342200,2), L14TRMUS2CP(1:342200,2), L15TRMUS2CP(1:342200,2)])'*1e-3;
MCL2tr1 = ([L11TRMUS2CP(1:342200,3), L12TRMUS2CP(1:342200,3), ...
    L13TRMUS2CP(1:342200,3), L14TRMUS2CP(1:342200,3), L15TRMUS2CP(1:342200,3)])'*1e-3;
MCL2tr3 = ([L11TRMUS2CP(1:342200,4), L12TRMUS2CP(1:342200,4), ...
    L13TRMUS2CP(1:342200,4), L14TRMUS2CP(1:342200,4), L15TRMUS2CP(1:342200,4)])'*1e-3;

%TESTE
MCDM2tt2 = ([L11TTMUS2CP(1:342200,1), L12TTMUS2CP(1:342200,1), ...
    L13TTMUS2CP(1:342200,1), L14TTMUS2CP(1:342200,1), L15TTMUS2CP(1:342200,1)])'*1e-3;
MCDM2tt4 = ([L11TTMUS2CP(1:342200,2), L12TTMUS2CP(1:342200,2), ...
    L13TTMUS2CP(1:342200,2), L14TTMUS2CP(1:342200,2), L15TTMUS2CP(1:342200,2)])'*1e-3;
MCL2tt1 = ([L11TTMUS2CP(1:342200,3), L12TTMUS2CP(1:342200,3), ...
    L13TTMUS2CP(1:342200,3), L14TTMUS2CP(1:342200,3), L15TTMUS2CP(1:342200,3)])'*1e-3;
MCL2tt3 = ([L11TTMUS2CP(1:342200,4), L12TTMUS2CP(1:342200,4), ...
    L13TTMUS2CP(1:342200,4), L14TTMUS2CP(1:342200,4), L15TTMUS2CP(1:342200,4)])'*1e-3;

%% EVOCAÇÃO
% OBS: L17 TESTE (F3-T3-T4)
% F3-F4-T3-T4 - CONSOLIDAÇÃO E EVOCAÇÃO
%GRUPO CTL e MUS3  - ANIMAIS 1:5
clc
%MUS-3
%TREINO
MCDM3tr2 = ([L16TRMUS3CP(1:335542,1), L17TRMUS3CP(1:335542,1), ...
    L18TRMUS3CP(1:335542,1), L19TRMUS3CP(1:335542,1), L20TRMUS3CP(1:335542,1)])'*1e-3;
MCDM3tr4 = ([L16TRMUS3CP(1:335542,2), L17TRMUS3CP(1:335542,2), ...
    L18TRMUS3CP(1:335542,2), L19TRMUS3CP(1:335542,2), L20TRMUS3CP(1:335542,2)])'*1e-3;
MCL3tr1 = ([L16TRMUS3CP(1:335542,3), L17TRMUS3CP(1:335542,3), ...
    L18TRMUS3CP(1:335542,3), L19TRMUS3CP(1:335542,3), L20TRMUS3CP(1:335542,3)])'*1e-3;
MCL3tr3 = ([L16TRMUS3CP(1:335542,4), L17TRMUS3CP(1:335542,4), ...
    L18TRMUS3CP(1:335542,4), L19TRMUS3CP(1:335542,4), L20TRMUS3CP(1:335542,4)])'*1e-3;

%TESTE
MCDM3tt2 = ([L16TTMUS3CP(1:335542,1), L17TTMUS3CP(1:335542,1), ...
    L18TTMUS3CP(1:335542,1), L19TTMUS3CP(1:335542,1), L20TTMUS3CP(1:335542,1)])'*1e-3;
% MCDM3tt4 = ([L16TTMUS3CP(1:335542,2), L17TTMUS3CP(1:335542,2), ...
%     L18TTMUS3CP(1:335542,2), L19TTMUS3CP(1:335542,2), L20TTMUS3CP(1:335542,2)])'*1e-3;
MCL3tt1 = ([L16TTMUS3CP(1:335542,2), L17TTMUS3CP(1:335542,2), ...
    L18TTMUS3CP(1:335542,2), L19TTMUS3CP(1:335542,2), L20TTMUS3CP(1:335542,2)])'*1e-3;
MCL3tt3 = ([L16TTMUS3CP(1:335542,3), L17TTMUS3CP(1:335542,3), ...
    L18TTMUS3CP(1:335542,3), L19TTMUS3CP(1:335542,3), L20TTMUS3CP(1:335542,3)])'*1e-3;

%%
clear L* srate
%% CARREGA O BANCO DE DADOS LIMPO
clear all
cd 'G:\Meu Drive\Projeto Lagartos\2022'
load CDM-CL.mat


%% FILTRO DE 60
% d = designfilt('lowpassiir','FilterOrder',10, ...
%     'PassbandFrequency',60,'PassbandRipple',1, ...
%     'SampleRate',600);
d = designfilt('bandstopiir','FilterOrder',10, ...
    'HalfPowerFrequency1',59,'HalfPowerFrequency2',61, ...
    'DesignMethod','butter','SampleRate',600);
% FILTRO PARA MUSCIMOL
for a = 1:8
    MCDMtr2(a,:) = filtfilt(d,MCDMtr2(a,:));
    MCDMtt2(a,:) = filtfilt(d,MCDMtt2(a,:));
    MCLtr3(a,:) =  filtfilt(d,MCLtr3(a,:));
    MCLtt3(a,:) =  filtfilt(d,MCLtt3(a,:));
    MCDMtr4(a,:) = filtfilt(d,MCDMtr4(a,:));
    MCDMtt4(a,:) = filtfilt(d,MCDMtt4(a,:));
    MCLtr1(a,:) =  filtfilt(d,MCLtr1(a,:));
    MCLtt1(a,:) =  filtfilt(d,MCLtt1(a,:));
end

% FILTRO PARA MUSCIMOL-2
for a = 1:5
    MCDM2tr2(a,:) = filtfilt(d,MCDM2tr2(a,:));
    MCDM2tt2(a,:) = filtfilt(d,MCDM2tt2(a,:));
    MCL2tr3(a,:) =  filtfilt(d,MCL2tr3(a,:));
    MCL2tt3(a,:) =  filtfilt(d,MCL2tt3(a,:));
    MCDM2tr4(a,:) = filtfilt(d,MCDM2tr4(a,:));
    MCDM2tt4(a,:) = filtfilt(d,MCDM2tt4(a,:));
    MCL2tr1(a,:) =  filtfilt(d,MCL2tr1(a,:));
    MCL2tt1(a,:) =  filtfilt(d,MCL2tt1(a,:));
end

% FILTRO PARA MUSCIMOL-3
for a = 1:5
    MCDM3tr2(a,:) = filtfilt(d,MCDM3tr2(a,:));
    MCDM3tt2(a,:) = filtfilt(d,MCDM3tt2(a,:));
    MCL3tr3(a,:) =  filtfilt(d,MCL3tr3(a,:));
    MCL3tt3(a,:) =  filtfilt(d,MCL3tt3(a,:));
    MCDM3tr4(a,:) = filtfilt(d,MCDM3tr4(a,:));

    MCL3tr1(a,:) =  filtfilt(d,MCL3tr1(a,:));
    MCL3tt1(a,:) =  filtfilt(d,MCL3tt1(a,:));
end
% FILTRO PARA CONTROLE
for a = 1:8
    CCDMtr2(a,:) = filtfilt(d,CCDMtr2(a,:));
    CCDMtt2(a,:) = filtfilt(d,CCDMtt2(a,:));
    CCLtr3(a,:) =  filtfilt(d,CCLtr3(a,:));
    CCLtt3(a,:) =  filtfilt(d,CCLtt3(a,:));
    CCDMtr4(a,:) = filtfilt(d,CCDMtr4(a,:));
    CCDMtt4(a,:) = filtfilt(d,CCDMtt4(a,:));
    CCLtr1(a,:) =  filtfilt(d,CCLtr1(a,:));
    CCLtt1(a,:) =  filtfilt(d,CCLtt1(a,:));
end

% FILTRO PARA CONTROLE-2
for a = 1:5
    CCDM2tr2(a,:) = filtfilt(d,CCDM2tr2(a,:));
    CCDM2tt2(a,:) = filtfilt(d,CCDM2tt2(a,:));
    CCL2tr3(a,:) =  filtfilt(d,CCL2tr3(a,:));
    CCL2tt3(a,:) =  filtfilt(d,CCL2tt3(a,:));
    CCDM2tr4(a,:) = filtfilt(d,CCDM2tr4(a,:));
    CCDM2tt4(a,:) = filtfilt(d,CCDM2tt4(a,:));
    CCL2tr1(a,:) =  filtfilt(d,CCL2tr1(a,:));
    CCL2tt1(a,:) =  filtfilt(d,CCL2tt1(a,:));
end
d = designfilt('highpassiir', 'FilterOrder',5, ...
    'PassbandFrequency',0.9, ...
    'PassbandRipple',0.5,'SampleRate',600);
% FILTRO PARA MUSCIMOL
for a = 1:8
    MCDMtr2(a,:) = filtfilt(d,MCDMtr2(a,:));
    MCDMtt2(a,:) = filtfilt(d,MCDMtt2(a,:));
    MCLtr3(a,:) =  filtfilt(d,MCLtr3(a,:));
    MCLtt3(a,:) =  filtfilt(d,MCLtt3(a,:));
    MCDMtr4(a,:) = filtfilt(d,MCDMtr4(a,:));
    MCDMtt4(a,:) = filtfilt(d,MCDMtt4(a,:));
    MCLtr1(a,:) =  filtfilt(d,MCLtr1(a,:));
    MCLtt1(a,:) =  filtfilt(d,MCLtt1(a,:));
end

% FILTRO PARA MUSCIMOL-2
for a = 1:5
    MCDM2tr2(a,:) = filtfilt(d,MCDM2tr2(a,:));
    MCDM2tt2(a,:) = filtfilt(d,MCDM2tt2(a,:));
    MCL2tr3(a,:) =  filtfilt(d,MCL2tr3(a,:));
    MCL2tt3(a,:) =  filtfilt(d,MCL2tt3(a,:));
    MCDM2tr4(a,:) = filtfilt(d,MCDM2tr4(a,:));
    MCDM2tt4(a,:) = filtfilt(d,MCDM2tt4(a,:));
    MCL2tr1(a,:) =  filtfilt(d,MCL2tr1(a,:));
    MCL2tt1(a,:) =  filtfilt(d,MCL2tt1(a,:));
end

% FILTRO PARA MUSCIMOL-3
for a = 1:5
    MCDM3tr2(a,:) = filtfilt(d,MCDM3tr2(a,:));
    MCDM3tt2(a,:) = filtfilt(d,MCDM3tt2(a,:));
    MCL3tr3(a,:) =  filtfilt(d,MCL3tr3(a,:));
    MCL3tt3(a,:) =  filtfilt(d,MCL3tt3(a,:));
    MCDM3tr4(a,:) = filtfilt(d,MCDM3tr4(a,:));

    MCL3tr1(a,:) =  filtfilt(d,MCL3tr1(a,:));
    MCL3tt1(a,:) =  filtfilt(d,MCL3tt1(a,:));
end
% FILTRO PARA CONTROLE
for a = 1:8
    CCDMtr2(a,:) = filtfilt(d,CCDMtr2(a,:));
    CCDMtt2(a,:) = filtfilt(d,CCDMtt2(a,:));
    CCLtr3(a,:) =  filtfilt(d,CCLtr3(a,:));
    CCLtt3(a,:) =  filtfilt(d,CCLtt3(a,:));
    CCDMtr4(a,:) = filtfilt(d,CCDMtr4(a,:));
    CCDMtt4(a,:) = filtfilt(d,CCDMtt4(a,:));
    CCLtr1(a,:) =  filtfilt(d,CCLtr1(a,:));
    CCLtt1(a,:) =  filtfilt(d,CCLtt1(a,:));
end

% FILTRO PARA CONTROLE-2
for a = 1:5
    CCDM2tr2(a,:) = filtfilt(d,CCDM2tr2(a,:));
    CCDM2tt2(a,:) = filtfilt(d,CCDM2tt2(a,:));
    CCL2tr3(a,:) =  filtfilt(d,CCL2tr3(a,:));
    CCL2tt3(a,:) =  filtfilt(d,CCL2tt3(a,:));
    CCDM2tr4(a,:) = filtfilt(d,CCDM2tr4(a,:));
    CCDM2tt4(a,:) = filtfilt(d,CCDM2tt4(a,:));
    CCL2tr1(a,:) =  filtfilt(d,CCL2tr1(a,:));
    CCL2tt1(a,:) =  filtfilt(d,CCL2tt1(a,:));
end
%% PARAMETROS CDM
%                 DATA = CCDM2tr2(3,:)
%                 srate = 600; % frequencia de amostragem em Hz
%                 dt = 1/srate; % Passo em segundos
%                 time_vector = dt:dt:length(DATA)/srate; % Vetor de tempo em segundos
%                 LFP = DATA;
%                 
%                 
%                 %TFD
%                 frequency_vector = 1:0.1:100;
%                 frequency_width = 1;
%                 clear TFDcont
%                 TFDcont = zeros(length(frequency_vector),length(LFP));
%                 
%                 for j=1:length(frequency_vector)
%                     filtrado = eegfilt(LFP,srate,frequency_vector(j),...
%                         frequency_vector(j)+frequency_width);
%                     
%                     TFDcont(j,:)= abs(hilbert(filtrado ));
%                     
%                     
%                 end
%                 
%                 % FILTRA O SINAL
%                 
%                 delta = eegfilt(LFP,srate,1,4);
%                 theta = eegfilt(LFP,srate,6,12);
%                 beta  = eegfilt(LFP,srate,15,25);
%                 gamma = eegfilt(LFP,srate,25,40);
%                 % gamma2 = eegfilt(LFP,srate,36,40);
%                 
%                 
%                 
%                 %OBTEM O ENVELOPE DE AMPLITUDE
%                 deltaAmp = abs(hilbert(delta));
%                 thetaAmp = abs(hilbert(theta));
%                 betaAmp = abs(hilbert(beta));
%                 gammaAmp = abs(hilbert(gamma));
%                 % gammaAmp2 = abs(hilbert(gamma2));
%                 
%                 
%                 
%                 Bands={'Delta','Teta','Beta','Gama'};
%                 
%                 % plot
%                 close all
%                 fig1 = figure(1);clf
%                 set(gcf,'color','white')
%                 subplot(2,2,1)
%                 plot(time_vector,LFP,'k','linewidth',1)
%                 set(gca,'fontsize',12)
%                 ylim([-1 1])
%                 x11 = gca;
%                 ylabel('Voltage (mV)')
%                 xlabel('Tempo (s)')
%                 box off
%                 
%                 
%                 subplot(2,2,3)
%                 imagesc(time_vector,frequency_vector+frequency_width/2,(TFDcont))
%                 axis xy
%                 xlabel('Tempo (s)')
%                 ylabel('Frequência (Hz)')
%                 xlim([1 600])
%                 ylim([1 50])
%                 caxis([0 0.05])
%                 set(gca,'fontsize',12)
%                 box off
%                 title('Decomposição de frequências no tempo','fontsize',16)
%                 x12 = gca;
%                 
%                 subplot(2,2,[2 4])
%                 var=0.2;
%                 plot(time_vector,delta+6*var,'b','linewidth',1)
%                 hold on
%                 plot(time_vector,deltaAmp+6*var,'b','linewidth',2)
%                 
%                 plot(time_vector,theta+3*var,'c-','linewidth',1)
%                 plot(time_vector,thetaAmp+3*var,'c-','linewidth',2)
%                 
%                 plot(time_vector,beta-3*var,'g-','linewidth',1)
%                 plot(time_vector,betaAmp-3*var,'g-','linewidth',2)
%                 
%                 plot(time_vector,gamma-6*var,'m-','linewidth',1)
%                 plot(time_vector,gammaAmp-6*var,'m-','linewidth',2)
%                 
%                 plot(time_vector,LFP-9*var,'k-','linewidth',1)
%                 plot(time_vector,LFP-9*var,'k-','linewidth',1)
%                 
%                 title('Decomposição dos sinais','fontsize',16)
%                 set(gca,'fontsize',12)
%                 xlim([295 298])
%                 ylim([-2.4 2.4])
%                 xlabel('Tempo(s)')
%                 set(gca,'YTick',[-6*var:0.4:6*var],'YTickLabel',flip(Bands))
%                 linkaxes([x11 x12],'x');
%                 box off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Espectro de densidade, espectrograma e Correlação
%% AQUISIÇÃO
%GRUPO CTL   - ANIMAIS 1:5
%GRUPO MUS 1 - ANIMAIS 1 2 3 6 7
% CONSOLIDAÇÃO E EVOCAÇÃO
%GRUPO CTL  E MUS 2 E 3 - ANIMAIS 1:5

% CCDMtr - grupo CTL córtex dorso-medial treino
% CCDMtt - grupo CTL córtex dorso-medial teste
% MCDMtr - grupo MUS córtex dorso-medial treino
% MCDMtt - grupo MUS córtex dorso-medial teste

% CCLtr - grupo CTL córtex lateral treino
% CCLtt - grupo CTL córtex lateral teste
% MCLtr - grupo MUS córtex lateral treino
% MCLtt - grupo MUS córtex lateral teste
clc
clear  Psd*  T* ACG* P* Spect* freq t
for a=1:5
    clear data* PSDT
    dataDM1    = MCDMtr2(a,:);
    dataDM2    = MCDM2tr4(a,:);
    dataCL1    = MCDMtt2(a,:);
    dataCL2    = MCDM3tt2(a,:);
    srate      = 600;
    idx        = 1/srate;
    window     = 3*srate;
    overlap    = window*0.2;
    nfft       = 2^13;
    
    [PSDT,F]   = pwelch((dataDM1),window,overlap,nfft,srate);
    PsdDM1(a,:) = (PSDT);
    [S F TT{a} PDM1{a}]  = spectrogram((dataDM1),window,overlap,nfft,srate);
    [PSDT,F]   = pwelch((dataDM2),window,overlap,nfft,srate);
    PsdDM2(a,:) = (PSDT);
    [S F TT{a} PDM2{a}]  = spectrogram((dataDM2),window,overlap,nfft,srate);
    [ACG1(a,:), lags] = xcorr(dataDM1,dataDM2,srate,'coeff');
    
    [PSDT,F]   = pwelch((dataCL1),window,overlap,nfft,srate);
    PsdCL1(a,:) = (PSDT);
    [S F TT{a} PCL1{a}]  = spectrogram((dataCL1),window,overlap,nfft,srate);
    [PSDT,F]   = pwelch((dataCL2),window,overlap,nfft,srate);
    PsdCL2(a,:) = (PSDT);
    [S F TT{a} PCL2{a}]  = spectrogram((dataCL2),window,overlap,nfft,srate);
    [ACG2(a,:), lags] = xcorr(dataCL1,dataCL2,srate,'coeff');
    
    
end

%
clear Spect*
TTmax = size(TT{2},2);

for a = 1:5
    
    SpectDM1(:,:,a) = PDM1{a}(:,1:TTmax);
    SpectDM2(:,:,a) = PDM2{a}(:,1:TTmax);
    SpectCL1(:,:,a) = PCL1{a}(:,1:TTmax);
    SpectCL2(:,:,a) = PCL2{a}(:,1:TTmax);

end
%%
clf
timevec = dt:dt:(length(CCDMtr2(1:179869))/srate);
plot (timevec, mean(CCDM2tr4(1:179869),1)+1, 'k')
hold on
plot (timevec, mean(CCL2tr3(1:179869),1)-1,'r')
ylim([-2 2])
title 'Sinal bruto'
xlabel 'Tempo (s)'
ylabel 'Amplitude (mV)'
Legend={'CDM.','CL.'};
legend(Legend,'box','off')
box off





%% Espectro de densidade, espectrograma e Correlação
clc
clear  Psd*  T* ACG* P* TAMB* TEXP*
c = 1;
for a = 1:5
    
    clear data* PSD P
    data       = (MCDM2tr2(a,:));
    data1      = (MCDM2tr2(a,1:length(data)/2));
%     data3      = (MCDM3tt2(c,length(data)/2:length(data)));
    data2      = (MCDM2tr2(a,length(data)/2:length(data)));
%     data4      = (MCDMtr2(a,length(MCDM2tr2)/2:length(MCDM2tr2)));
    srate      = 600;
    idx        = 1/srate;
    window     = 5*srate;
    overlap    = window*0.3;
    nfft       = 2^13;
    [PSD1, F]   = pwelch((data1),window,overlap,nfft,srate);
    Psd1(c,:) = (PSD1);
%     [PSD3, F]   = pwelch((data3),window,overlap,nfft,srate);
%     Psd3(c,:) = (PSD3);
   [S F TAMB{c} PAMB{c}]  = spectrogram((data1),window,overlap,nfft,srate);
    
    [PSD2, F]   = pwelch((data2),window,overlap,nfft,srate);
    Psd2(c,:) = (PSD2);
%     [PSD4, F]   = pwelch((data4),window,overlap,nfft,srate);
%     Psd4(c,:) = (PSD4);
   [S F TEXP{c} PEXP{c}]  = spectrogram((data2),window,overlap,nfft,srate);
    c = c +1;
end

%
clear Spect* 
TAMBmax = size(TAMB{2},2);
TEXPmax = size(TEXP{3},2);
for a = 1:length(PAMB)
    SpectAMB(:,:,a) = PAMB{a}(:,1:TAMBmax);
    SpectEXP(:,:,a) = PEXP{a}(:,1:TEXPmax);
end

% %% TFD
% frequency_vector = 1:0.1:59;
% frequency_width = 1;
% clear TFDcont
% TFDcont = zeros(length(frequency_vector),length(data(1,:)));
% 
% for j=1:length(frequency_vector)
%     filtrado = eegfilt(mean(data(:,:),1),srate,frequency_vector(j),...
%         frequency_vector(j)+frequency_width);
%     TFDcont(j,:)= abs(hilbert(filtrado ));
% end
% 
% %%
% figure()
% 
% data = MCDM3tt2(1,:);
% % Bands=[2,4; 4,8; 12,18; 30,40];%definir bandas de interesse
% dt = 1/srate;
% time_vector = dt:dt:length(data)/srate;
% subplot(4,4,1:2)
% plot(time_vector,data,'k-','linewidth',1)
% title('Sinal bruto','fontsize',14)
% ylim([-1.5 1.5])
% box off
% xlabel 'Tempo (s)'
% set(gca,'fontsize',10)
% subplot(4,4,3:4)
% imagesc(time_vector,frequency_vector+frequency_width/2,(TFDcont))
% axis xy
% xlabel('Tempo (s)')
% ylabel('Frequência (Hz)')
% xlim([1 600])
% ylim([20 50])
% caxis([0 0.005])
% set(gca,'fontsize',10)
% box off
% title('Frequências no tempo','fontsize',14)
% subplot(4,4,7:8)
% imagesc(time_vector,frequency_vector+frequency_width/2,(TFDcont))
% axis xy
% xlabel('Tempo (s)')
% ylabel('Frequência (Hz)')
% xlim([1 600])
% ylim([1 20])
% caxis([0 0.1])
% set(gca,'fontsize',10)
% box off
% subplot(4,4,[5 6 9 10])
% plot(F,(mean(Psd1)),'k','linewidth',1)
% hold on
% plot(F,(mean(Psd2)),'r','linewidth',1)
% plot(F,(mean(Psd1)+std(Psd1)/sqrt(5)),'k--')
% plot(F,(mean(Psd1)-std(Psd1)/sqrt(5)),'k--')
% plot(F,(mean(Psd2)+std(Psd2)/sqrt(5)),'r--')
% plot(F,(mean(Psd2)-std(Psd2)/sqrt(5)),'r--')
% xlim([0 50])
% title 'CDM - AMB vs. EXP'
% xlabel 'Frequência (Hz)'
% ylabel 'Densidade de Potência'
% Legend={'AMB.','EXP.'};
% legend(Legend,'box','off')
% box off
% set(gca,'fontsize',10)
% subplot(4,4,[13 14])
% plot(F,(mean(Psd1)),'k','linewidth',1)
% hold on
% plot(F,(mean(Psd2)),'r','linewidth',1)
% plot(F,(mean(Psd1)+std(Psd1)/sqrt(5)),'k--')
% plot(F,(mean(Psd1)-std(Psd1)/sqrt(5)),'k--')
% plot(F,(mean(Psd2)+std(Psd2)/sqrt(5)),'r--')
% plot(F,(mean(Psd2)-std(Psd2)/sqrt(5)),'r--')
% xlim([20 50])
% xlabel 'Frequência (Hz)'
% ylabel 'Densidade de Potência'
% Legend={'AMB.','EXP.'};
% legend(Legend,'box','off')
% box off
% set(gca,'fontsize',10)
% %Spectrograms
% subplot(4,4,[11 12])
% plot(F,(mean(Psd1)),'k','linewidth',1)
% hold on
% plot(F,(Psd1),'linewidth',1)
% title 'CDM - AMB'
% xlabel 'Frequência (Hz)'
% ylabel 'Densidade de Potência'
% box off
% subplot(4,4,[15 16])
% plot(F,(mean(Psd2)),'k','linewidth',1)
% hold on
% plot(F,(Psd2),'linewidth',1)
% title 'CDM - EXP'
% xlabel 'Frequência (Hz)'
% ylabel 'Densidade de Potência'
% box off

%  TESTE T NOS DADOS NORMALIZADOS PELA MEDIA - TEMPO TOTAL
clc
% Bands=[2,6; 7,12; 15,25; 36,40];%definir bandas de interesse
Bands=[2,4; 7,12; 15,25; 29,33; 36,40];%definir bandas de interesse
clear h* p s IC NormAMB NormEXP idx TGH
for b = 1:5
    clear idx Norm
    idx          = find(F>Bands(b,1) & F<Bands(b,2));
    Norm         = mean([mean(Psd1(:,idx),2), mean(Psd2(:,idx),2)],2);
    NormAMB(:,b) = mean((Psd1(:,idx)),2)./Norm;
    NormEXP(:,b) = mean((Psd2(:,idx)),2)./Norm;    
    TGH{b} = ([NormAMB(:,b);NormEXP(:,b)]);
    [hv{b},pv{b},adstat{b},cv{b}] = adtest(TGH{b});
    group = ([1;1;1;1;1;2;2;2;2;2]);
    
%     vartestn(TGH{b},group,'TestType','Bartlett');
    [h(b) p(b) ci stats]  = ttest(NormAMB(:,b), NormEXP(:,b),'Alpha',0.05,'Tail','left');
    IC(:,:,b) = ci;
    s{b} = stats;
    effect(:,b) = computeCohen_d(NormAMB(:,b), NormEXP(:,b));
    
    
%     [h2(b) p2(b) ci2 stats2]  = ttest(NormAMB(:,1), NormAMB(:,b),'Alpha',0.05,'Tail','both');
%     IC2(:,:,b) = ci2;
%     s2{b} = stats2;
%     effect2(:,b) = computeCohen_d(NormAMB(:,1), NormAMB(:,b), 'paired');
    
end
p([1,2,3,4,5])
%% PSD
FIG1=figure(1);clf
subplot(4,4,[1 4])
LFP_1 = data1;
LFP_2 = data2(:,1:length(data1));
dt = 1/srate;
time_vector = dt:dt:length(LFP_1)/srate;
plot(time_vector,LFP_1,'k','linewidth',1)
hold on
plot(time_vector,LFP_2-1,'r','linewidth',1)
ylim([-1.8 .5])
box off
xlabel 'Tempo (s)'
x1=195;
xlim([x1 x1+3])

set(gca,'ytick',[-1 0],'yticklabels',{'Exposição','Ambientação'})
set(gca, 'Fontsize', 10)
% % 
clear delta* alfa* beta* gama*
delta_AMB = eegfilt(LFP_1,srate,1,4);
delta_EXP = eegfilt(LFP_2,srate,1,4);

theta_AMB = eegfilt(LFP_1,srate,6,12);
theta_EXP = eegfilt(LFP_2,srate,6,12);

beta_AMB = eegfilt(LFP_1,srate,12,25);
beta_EXP = eegfilt(LFP_2,srate,12,25);

gama_AMB = eegfilt(LFP_1,srate,30,50);
gama_EXP = eegfilt(LFP_2,srate,30,50);

subplot(4,4,[1 4])
plot(time_vector,delta_AMB-0.2,'k','linewidth',1)
plot(time_vector,delta_EXP-1.2,'r','linewidth',1)
plot(time_vector,theta_AMB-0.35,'k','linewidth',1)
plot(time_vector,theta_EXP-1.35,'r','linewidth',1)
plot(time_vector,beta_AMB-0.5,'k','linewidth',1)
plot(time_vector,beta_EXP-1.5,'r','linewidth',1)
plot(time_vector,gama_AMB-0.5,'k','linewidth',1)
plot(time_vector,gama_EXP-1.5,'r','linewidth',1)

% %
%Spectrograms
subplot(4,4,[5 6 7])
imagesc(TAMB{1},F,mean(SpectAMB,3))
hold on
imagesc(TEXP{1}+TAMB{1}(end),F,mean(SpectEXP,3))
axis xy
ylim([20 40])
xlim([0 560])
caxis([0 0.005])
title 'CDM - AMB.'
xlabel 'Tempo (s)'
ylabel 'Frequência (Hz)'
colorbar
set(gca, 'Fontsize', 10)

subplot(4,4,[9 10 11])
imagesc(TAMB{1},F,mean(SpectAMB,3))
hold on
imagesc(TEXP{1}+TAMB{1}(end),F,mean(SpectEXP,3))
axis xy
ylim([1 20])
xlim([0 560])
caxis([0 0.01])
xlabel 'Tempo (s)'
ylabel 'Frequência (Hz)'
colorbar
set(gca, 'Fontsize', 10)

subplot(4,4,[13 14])
plot(F,(mean(Psd1)),'k','linewidth',1)
hold on
plot(F,(mean(Psd2)),'r','linewidth',1)
xlim([0 40])
plot(F,(mean(Psd1)+std(Psd1)/sqrt(5)),'k--')
plot(F,(mean(Psd1)-std(Psd1)/sqrt(5)),'k--')
plot(F,(mean(Psd2)+std(Psd2)/sqrt(5)),'r--')
plot(F,(mean(Psd2)-std(Psd2)/sqrt(5)),'r--')

title 'CDM - AMB vs. EXP'
xlabel 'Frequência (Hz)'
ylabel 'Potência (log)'
Legend={'AMB.','EXP.'};
legend(Legend,'box','off')
box off
set(gca, 'Fontsize', 10)
subplot(4,4,[15 16])
bar([1:1:5],[mean(NormAMB)],0.2,'k')
hold on
bar([1.25:1:5.25],[mean(NormEXP)],0.2,'r')
errorbar([1:1:5],[mean(NormAMB)],[std(NormAMB)/sqrt(5)],'.k')
errorbar([1.25:1:5.25],[mean(NormEXP)],[std(NormEXP)/sqrt(5)],'.k')
xlabel 'Banda da frequência (Hz)'
ylabel 'Potência norm'
ylim([0.6 1.4])
xlim([0.75 5.75])
box off
set(gca, 'Fontsize', 10)
set(gca,'xtick',[1.125:1:5.125],'xticklabels',{'2-4','7-12','15-25','29-33','36-40'})
%set(gca,'xtick',[1:5],'xticklabels',{'Delta','Theta','Beta','Gamma'})
for b=1:5
    if p(b)<0.05
        text(b,1.3,'*')
    end
end


%% PLOT BARS
figure(3),clf
c=1;
for b=1:5
    subplot(5,2,c)
    
    bar(1,mean(NormAMB(:,b)),0.5,'w')
    hold on
    bar(2,mean(NormEXP(:,b)),0.5,'w')
    errorbar(1,mean(NormAMB(:,b)),std(NormAMB(:,b))/sqrt(5),'k-')
    errorbar(2,mean(NormEXP(:,b)),std(NormEXP(:,b))/sqrt(5),'k-')
    plot(1,NormAMB(:,b),'ko')
    plot(2,NormEXP(:,b),'ro')
    
    text((2),(2),num2str(p(b)))
    title (['Banda ' num2str(b)])
    axis square
    box off
    title (['Banda ' num2str(b)])
    ylabel 'Pot (norm)'
    xlabel 'AMB - AMB'

    %ylim([0 2e-1])
    c=c+2;
end
%%
c=2;
for b=1:5
    subplot(5,2,c)
    bar(1,mean(NormAMB(:,b)),0.5,'w')
    hold on
    bar(2,mean(NormEXP(:,b)),0.5,'w')
    errorbar(1,mean(NormAMB(:,b)),std(NormAMB(:,b))/sqrt(5),'k-')
    errorbar(2,mean(NormEXP(:,b)),std(NormEXP(:,b))/sqrt(5),'k-')
    plot(1,NormAMB(:,b),'ko')
    plot(2,NormEXP(:,b),'ro')
    
    text((2),(2),num2str(p(b)))
    title (['Banda ' num2str(b)])
    axis square
    box off
    title (['Banda ' num2str(b)])
    ylabel 'Pot (norm)'
    xlabel 'EXP - EXP'
    %ylim([0 2e-1])
    c=c+2;
end
set(gcf,'color','w');



%% Coerência  CTL
clear LFP*
LFP1 = rand.*CCDM2tr2(:,:);
LFP2 = rand.*CCL2tr1(:,:);
LFP3 = rand.*CCDM2tt2(:,:);
LFP4 = rand.*CCL2tt1(:,:);
dt = 1/srate;
time_vector = dt:dt:length(LFP1(1,:))/srate;

subplot(311)
plot(time_vector,mean(LFP1,1),'k-')
hold on
plot(time_vector,mean(LFP2,1)-1,'b-')
plot(time_vector,mean(LFP3,1)-2,'r-')
plot(time_vector,mean(LFP4,1)-3,'g-')
hold off
title(['LFPs ',' CTL'],'fontsize',14)
xlim([0 600])
ylim([-4 1])
ylabel('mV')
xlabel('Tempo (s)')
set(gca,'FontSize',12)


subplot(312)
plot(time_vector,eegfilt(mean(LFP1,1),srate,2,6),'k-')
hold on
plot(time_vector,eegfilt(mean(LFP2,1),srate,2,6),'b-')
plot(time_vector,eegfilt(mean(LFP3,1),srate,2,6)-.5,'r-')
plot(time_vector,eegfilt(mean(LFP4,1),srate,2,6)-.5,'g')
hold off
xlim([290 310])
ylabel('mV')
title('LFP Filtrado','fontsize',13)
xlabel('Time (s)')
set(gca,'FontSize',12)


% Calculando o Espectro de Coerencias
window = 5*srate;
overlap = window/2; % window/2; %3*srate;
[Cxy, F] = mscohere(mean(LFP2,1),mean(LFP1,1),window,overlap,2^13,srate);
[Cxy2, F] = mscohere(mean(LFP4,1),mean(LFP3,1),window,overlap,2^13,srate);

subplot(313)
plot(F,Cxy,'k')
hold on
plot(F,Cxy2,'r')
xlim([0 50])
xlabel('Frequência (Hz)')
ylabel(' Coerência','fontsize',13)
ylim([0 1])
title('Coerência')
set(gcf,'color','white')
set(gca,'FontSize',12)

%% Coerência  MUS


clear LFP*
LFP1 = MCDM2tr2(:,:);
LFP2 = MCL2tr1(:,:);
LFP3 = MCDM2tt2(:,:);
LFP4 = MCL2tt1(:,:);
dt = 1/srate;
time_vector = dt:dt:length(LFP1(1,:))/srate;

subplot(311)
plot(time_vector,mean(LFP1,1))
hold on
plot(time_vector,mean(LFP2,1)-1,'k-')
plot(time_vector,mean(LFP3,1)-2,'r-')
plot(time_vector,mean(LFP4,1)-3,'b-')
hold off
title(['LFPs ','MUS'],'fontsize',14)
xlim([0 600])
ylim([-4 1])
ylabel('mV')
xlabel('Tempo (s)')
set(gca,'FontSize',12)


subplot(312)
plot(time_vector,eegfilt(mean(LFP1,1),srate,2,6))
hold on
plot(time_vector,eegfilt(mean(LFP2,1),srate,2,6),'k-')
plot(time_vector,eegfilt(mean(LFP3,1),srate,2,6)-.5,'r-')
plot(time_vector,eegfilt(mean(LFP4,1),srate,2,6)-.5,'b')
hold off
xlim([290 310])
ylabel('mV')
title('LFP Filtrado','fontsize',13)
xlabel('Time (s)')
set(gca,'FontSize',12)


% Calculando o Espectro de Coerencias
window = 5*srate;
overlap = window/2; % window/2; %3*srate;
[Cxy, F] = mscohere(mean(LFP2,1),mean(LFP1,1),window,overlap,2^13,srate);
[Cxy2, F] = mscohere(mean(LFP4,1),mean(LFP3,1),window,overlap,2^13,srate);

subplot(313)
plot(F,Cxy)
hold on
plot(F,Cxy2)
xlim([0 50])
xlabel('Frequência (Hz)')
ylabel(' Coerência','fontsize',13)
ylim([0 1])
title('Coerência')
set(gcf,'color','white')
set(gca,'FontSize',12)
% 
%%  Coherogram
% 
% windowlength = 10;
% stepsize = 5;
% 
% window2 = srate*windowlength/2;
% overlap = window2/5;
% 
% clear T CxyAll
% for nwindow=1:((time_vector(end)-(windowlength-stepsize))/stepsize);
%     window = (1:(windowlength*srate)) + (nwindow-1)*stepsize*srate;
%     T(nwindow) = time_vector(round(median(window)));
%     [Cxy, F] = mscohere(LFP1(window),LFP2(window),window2,overlap,2^13,srate);
%     CxyAll(nwindow,:)=Cxy;
% end
% 
% 
% figure
% imagesc(T,F,CxyAll')
% 
% axis xy
% set(gca,'fontsize',13)
% ylim([0 50])
% xlabel('Tempo (s)')
% ylabel('Frequência (Hz)' )
% colorbar
% set(gcf,'color','white')

%% Acoplamento de fase
%GRUPO CTL   - ANIMAIS 1:5
%GRUPO MUS 1 - ANIMAIS 1 2 3 6 7
%
% CCDMtr - grupo CTL córtex dorso-medial treino
% CCDMtt - grupo CTL córtex dorso-medial teste
% MCDMtr - grupo MUS córtex dorso-medial treino
% MCDMtt - grupo MUS córtex dorso-medial teste

% CCLtr - grupo CTL córtex lateral treino
% CCLtt - grupo CTL córtex lateral teste
% MCLtr - grupo MUS córtex lateral treino
% MCLtt - grupo MUS córtex lateral teste

%GRUPO CDM 
figure(1),clf
clear CFC* Comodulogram*
% Treino
% CDM
c = 0;
for a = 1:5
    c = c + 1;
    tic
    disp 'CFC'
    clear data data2 PSD P
    data1      = CCDMtr2(a,60*srate:80*srate);
    data2      = CCDMtr2(a,300*srate:320*srate);
    srate      = 600;
    dt         = 1/srate;
    
    
    PhaseFreqVector =  0:1:20;      %  (3)
    AmpFreqVector   =  20:5:150;     %  (3)
    
    PhaseFreq_BandWidth = 3;      %  (3)
    AmpFreq_BandWidth   = 10;      %  (3)
    
    
    nbin     = 20;
    position = zeros(1,nbin); % this variable will get the beginning (not the center) of each phase bin (in rads)
    winsize  = 2*pi/nbin;
    for j=1:nbin
        position(j) = -pi+(j-1)*winsize;
    end
    
    % FOR DATA 1
    data_length          = length(data1);
    Comodulogram1        = single(zeros(length(PhaseFreqVector),length(AmpFreqVector)));
    AmpFreqTransformed   = zeros(length(AmpFreqVector), data_length);
    PhaseFreqTransformed = zeros(length(PhaseFreqVector), data_length);
    
    for ii=1:length(AmpFreqVector)
        Af1 = AmpFreqVector(ii);
        Af2 = Af1+AmpFreq_BandWidth;
        AmpFreq                   = eegfilt(data1,srate,Af1,Af2); % just filtering
        AmpFreqTransformed(ii, :) = abs(hilbert(AmpFreq)); % getting the amplitude envelope
    end
    
    for jj=1:length(PhaseFreqVector)
        Pf1 = PhaseFreqVector(jj);
        Pf2 = Pf1 + PhaseFreq_BandWidth;
        PhaseFreq                   = eegfilt(data1,srate,Pf1,Pf2); % this is just filtering
        PhaseFreqTransformed(jj, :) = angle(hilbert(PhaseFreq)); % this is getting the phase time series
    end
    
    counter1 = 0;
    for ii = 1:length(PhaseFreqVector)
        counter1 = counter1+1;
        Pf1      = PhaseFreqVector(ii);
        Pf2      = Pf1+PhaseFreq_BandWidth;
        
        counter2 = 0;
        for jj = 1:length(AmpFreqVector)
            counter2 = counter2+1;
            
            Af1 = AmpFreqVector(jj);
            Af2 = Af1+AmpFreq_BandWidth;
            [MI,MeanAmp] = ModIndex_v2(PhaseFreqTransformed(ii, :), AmpFreqTransformed(jj, :), position);
            Comodulogram1(counter1,counter2) = MI;
        end
    end
    
    
    CFC1(:,:,c) = Comodulogram1;
    
    % FOR DATA 2
    data_length          = length(data2);
    Comodulogram2        = single(zeros(length(PhaseFreqVector),length(AmpFreqVector)));
    AmpFreqTransformed   = zeros(length(AmpFreqVector), data_length);
    PhaseFreqTransformed = zeros(length(PhaseFreqVector), data_length);
    
    for ii=1:length(AmpFreqVector)
        Af1 = AmpFreqVector(ii);
        Af2 = Af1+AmpFreq_BandWidth;
        AmpFreq                   = eegfilt(data2,srate,Af1,Af2); % just filtering
        AmpFreqTransformed(ii, :) = abs(hilbert(AmpFreq)); % getting the amplitude envelope
    end
    
    for jj=1:length(PhaseFreqVector)
        Pf1 = PhaseFreqVector(jj);
        Pf2 = Pf1 + PhaseFreq_BandWidth;
        PhaseFreq                   = eegfilt(data2,srate,Pf1,Pf2); % this is just filtering
        PhaseFreqTransformed(jj, :) = angle(hilbert(PhaseFreq)); % this is getting the phase time series
    end
    
    counter1 = 0;
    for ii = 1:length(PhaseFreqVector)
        counter1 = counter1+1;
        Pf1      = PhaseFreqVector(ii);
        Pf2      = Pf1+PhaseFreq_BandWidth;
        
        counter2 = 0;
        for jj = 1:length(AmpFreqVector)
            counter2 = counter2+1;
            
            Af1 = AmpFreqVector(jj);
            Af2 = Af1+AmpFreq_BandWidth;
            [MI,MeanAmp] = ModIndex_v2(PhaseFreqTransformed(ii, :), AmpFreqTransformed(jj, :), position);
            Comodulogram2(counter1,counter2) = MI;
        end
    end
    CFC2(:,:,c) = Comodulogram2;
    toc
end

% CL
c = 0;
for a= 1:5
    c = c +1;
    tic
    disp 'CFC'
    clear data data2 PSD P
    data1      = CCLtr1(a,60*srate:80*srate);
    data2      = CCLtr1(a,300*srate:320*srate);
    srate      = 600;
    dt         = 1/srate;
    
    
    PhaseFreqVector =  0:1:20;      %  (3)
    AmpFreqVector   =  20:5:150;     %  (3)
    
    PhaseFreq_BandWidth = 3;      %  (3)
    AmpFreq_BandWidth   = 10;      %  (3)
    
    
    nbin     = 20;
    position = zeros(1,nbin); % this variable will get the beginning (not the center) of each phase bin (in rads)
    winsize  = 2*pi/nbin;
    for j=1:nbin
        position(j) = -pi+(j-1)*winsize;
    end
    
    % FOR DATA 1
    data_length          = length(data1);
    Comodulogram1        = single(zeros(length(PhaseFreqVector),length(AmpFreqVector)));
    AmpFreqTransformed   = zeros(length(AmpFreqVector), data_length);
    PhaseFreqTransformed = zeros(length(PhaseFreqVector), data_length);
    
    for ii=1:length(AmpFreqVector)
        Af1 = AmpFreqVector(ii);
        Af2 = Af1+AmpFreq_BandWidth;
        AmpFreq                   = eegfilt(data1,srate,Af1,Af2); % just filtering
        AmpFreqTransformed(ii, :) = abs(hilbert(AmpFreq)); % getting the amplitude envelope
    end
    
    for jj=1:length(PhaseFreqVector)
        Pf1 = PhaseFreqVector(jj);
        Pf2 = Pf1 + PhaseFreq_BandWidth;
        PhaseFreq                   = eegfilt(data1,srate,Pf1,Pf2); % this is just filtering
        PhaseFreqTransformed(jj, :) = angle(hilbert(PhaseFreq)); % this is getting the phase time series
    end
    
    counter1 = 0;
    for ii = 1:length(PhaseFreqVector)
        counter1 = counter1+1;
        Pf1      = PhaseFreqVector(ii);
        Pf2      = Pf1+PhaseFreq_BandWidth;
        
        counter2 = 0;
        for jj = 1:length(AmpFreqVector)
            counter2 = counter2+1;
            
            Af1 = AmpFreqVector(jj);
            Af2 = Af1+AmpFreq_BandWidth;
            [MI,MeanAmp] = ModIndex_v2(PhaseFreqTransformed(ii, :), AmpFreqTransformed(jj, :), position);
            Comodulogram1(counter1,counter2) = MI;
        end
    end
    
    
    CFC3(:,:,c) = Comodulogram1;
    
    % FOR DATA 2
    data_length          = length(data2);
    Comodulogram2        = single(zeros(length(PhaseFreqVector),length(AmpFreqVector)));
    AmpFreqTransformed   = zeros(length(AmpFreqVector), data_length);
    PhaseFreqTransformed = zeros(length(PhaseFreqVector), data_length);
    
    for ii=1:length(AmpFreqVector)
        Af1 = AmpFreqVector(ii);
        Af2 = Af1+AmpFreq_BandWidth;
        AmpFreq                   = eegfilt(data2,srate,Af1,Af2); % just filtering
        AmpFreqTransformed(ii, :) = abs(hilbert(AmpFreq)); % getting the amplitude envelope
    end
    
    for jj=1:length(PhaseFreqVector)
        Pf1 = PhaseFreqVector(jj);
        Pf2 = Pf1 + PhaseFreq_BandWidth;
        PhaseFreq                   = eegfilt(data2,srate,Pf1,Pf2); % this is just filtering
        PhaseFreqTransformed(jj, :) = angle(hilbert(PhaseFreq)); % this is getting the phase time series
    end
    
    counter1 = 0;
    for ii = 1:length(PhaseFreqVector)
        counter1 = counter1+1;
        Pf1      = PhaseFreqVector(ii);
        Pf2      = Pf1+PhaseFreq_BandWidth;
        
        counter2 = 0;
        for jj = 1:length(AmpFreqVector)
            counter2 = counter2+1;
            
            Af1 = AmpFreqVector(jj);
            Af2 = Af1+AmpFreq_BandWidth;
            [MI,MeanAmp] = ModIndex_v2(PhaseFreqTransformed(ii, :), AmpFreqTransformed(jj, :), position);
            Comodulogram2(counter1,counter2) = MI;
        end
    end
    CFC4(:,:,c) = Comodulogram2;
    toc
end

% Teste
% CDM
c = 0;
for a = 1:5 
    c = c + 1;
    tic
    disp 'CFC'
    clear data data2 PSD P
    data1      = CCDMtt2(a,60*srate:80*srate);
    data2      = CCDMtt2(a,300*srate:320*srate);
    srate      = 600;
    dt         = 1/srate;
    
    
    PhaseFreqVector =  0:1:20;      %  (3)
    AmpFreqVector   =  20:5:150;     %  (3)
    
    PhaseFreq_BandWidth = 3;      %  (3)
    AmpFreq_BandWidth   = 10;      %  (3)
    
    
    nbin     = 20;
    position = zeros(1,nbin); % this variable will get the beginning (not the center) of each phase bin (in rads)
    winsize  = 2*pi/nbin;
    for j=1:nbin
        position(j) = -pi+(j-1)*winsize;
    end
    
    % FOR DATA 1
    data_length          = length(data1);
    Comodulogram1        = single(zeros(length(PhaseFreqVector),length(AmpFreqVector)));
    AmpFreqTransformed   = zeros(length(AmpFreqVector), data_length);
    PhaseFreqTransformed = zeros(length(PhaseFreqVector), data_length);
    
    for ii=1:length(AmpFreqVector)
        Af1 = AmpFreqVector(ii);
        Af2 = Af1+AmpFreq_BandWidth;
        AmpFreq                   = eegfilt(data1,srate,Af1,Af2); % just filtering
        AmpFreqTransformed(ii, :) = abs(hilbert(AmpFreq)); % getting the amplitude envelope
    end
    
    for jj=1:length(PhaseFreqVector)
        Pf1 = PhaseFreqVector(jj);
        Pf2 = Pf1 + PhaseFreq_BandWidth;
        PhaseFreq                   = eegfilt(data1,srate,Pf1,Pf2); % this is just filtering
        PhaseFreqTransformed(jj, :) = angle(hilbert(PhaseFreq)); % this is getting the phase time series
    end
    
    counter1 = 0;
    for ii = 1:length(PhaseFreqVector)
        counter1 = counter1+1;
        Pf1      = PhaseFreqVector(ii);
        Pf2      = Pf1+PhaseFreq_BandWidth;
        
        counter2 = 0;
        for jj = 1:length(AmpFreqVector)
            counter2 = counter2+1;
            
            Af1 = AmpFreqVector(jj);
            Af2 = Af1+AmpFreq_BandWidth;
            [MI,MeanAmp] = ModIndex_v2(PhaseFreqTransformed(ii, :), AmpFreqTransformed(jj, :), position);
            Comodulogram1(counter1,counter2) = MI;
        end
    end
    
    
    CFC5(:,:,c) = Comodulogram1;
    
    % FOR DATA 2
    data_length          = length(data2);
    Comodulogram2        = single(zeros(length(PhaseFreqVector),length(AmpFreqVector)));
    AmpFreqTransformed   = zeros(length(AmpFreqVector), data_length);
    PhaseFreqTransformed = zeros(length(PhaseFreqVector), data_length);
    
    for ii=1:length(AmpFreqVector)
        Af1 = AmpFreqVector(ii);
        Af2 = Af1+AmpFreq_BandWidth;
        AmpFreq                   = eegfilt(data2,srate,Af1,Af2); % just filtering
        AmpFreqTransformed(ii, :) = abs(hilbert(AmpFreq)); % getting the amplitude envelope
    end
    
    for jj=1:length(PhaseFreqVector)
        Pf1 = PhaseFreqVector(jj);
        Pf2 = Pf1 + PhaseFreq_BandWidth;
        PhaseFreq                   = eegfilt(data2,srate,Pf1,Pf2); % this is just filtering
        PhaseFreqTransformed(jj, :) = angle(hilbert(PhaseFreq)); % this is getting the phase time series
    end
    
    counter1 = 0;
    for ii = 1:length(PhaseFreqVector)
        counter1 = counter1+1;
        Pf1      = PhaseFreqVector(ii);
        Pf2      = Pf1+PhaseFreq_BandWidth;
        
        counter2 = 0;
        for jj = 1:length(AmpFreqVector)
            counter2 = counter2+1;
            
            Af1 = AmpFreqVector(jj);
            Af2 = Af1+AmpFreq_BandWidth;
            [MI,MeanAmp] = ModIndex_v2(PhaseFreqTransformed(ii, :), AmpFreqTransformed(jj, :), position);
            Comodulogram2(counter1,counter2) = MI;
        end
    end
    CFC6(:,:,c) = Comodulogram2;
    toc
end

% CL
c = 0;
for a= 1:5
    c = c+1;
    tic
    disp 'CFC'
    clear data data2 PSD P
    data1      = CCLtt1(a,60*srate:80*srate);
    data2      = CCLtt1(a,300*srate:320*srate);
    srate      = 600;
    dt         = 1/srate;
    
    
    PhaseFreqVector =  0:1:20;      %  (3)
    AmpFreqVector   =  20:5:150;     %  (3)
    
    PhaseFreq_BandWidth = 3;      %  (3)
    AmpFreq_BandWidth   = 10;      %  (3)
    
    
    nbin     = 20;
    position = zeros(1,nbin); % this variable will get the beginning (not the center) of each phase bin (in rads)
    winsize  = 2*pi/nbin;
    for j=1:nbin
        position(j) = -pi+(j-1)*winsize;
    end
    
    % FOR DATA 1
    data_length          = length(data1);
    Comodulogram1        = single(zeros(length(PhaseFreqVector),length(AmpFreqVector)));
    AmpFreqTransformed   = zeros(length(AmpFreqVector), data_length);
    PhaseFreqTransformed = zeros(length(PhaseFreqVector), data_length);
    
    for ii=1:length(AmpFreqVector)
        Af1 = AmpFreqVector(ii);
        Af2 = Af1+AmpFreq_BandWidth;
        AmpFreq                   = eegfilt(data1,srate,Af1,Af2); % just filtering
        AmpFreqTransformed(ii, :) = abs(hilbert(AmpFreq)); % getting the amplitude envelope
    end
    
    for jj=1:length(PhaseFreqVector)
        Pf1 = PhaseFreqVector(jj);
        Pf2 = Pf1 + PhaseFreq_BandWidth;
        PhaseFreq                   = eegfilt(data1,srate,Pf1,Pf2); % this is just filtering
        PhaseFreqTransformed(jj, :) = angle(hilbert(PhaseFreq)); % this is getting the phase time series
    end
    
    counter1 = 0;
    for ii = 1:length(PhaseFreqVector)
        counter1 = counter1+1;
        Pf1      = PhaseFreqVector(ii);
        Pf2      = Pf1+PhaseFreq_BandWidth;
        
        counter2 = 0;
        for jj = 1:length(AmpFreqVector)
            counter2 = counter2+1;
            
            Af1 = AmpFreqVector(jj);
            Af2 = Af1+AmpFreq_BandWidth;
            [MI,MeanAmp] = ModIndex_v2(PhaseFreqTransformed(ii, :), AmpFreqTransformed(jj, :), position);
            Comodulogram1(counter1,counter2) = MI;
        end
    end
    
    
    CFC7(:,:,c) = Comodulogram1;
    
    % FOR DATA 2
    data_length          = length(data2);
    Comodulogram2        = single(zeros(length(PhaseFreqVector),length(AmpFreqVector)));
    AmpFreqTransformed   = zeros(length(AmpFreqVector), data_length);
    PhaseFreqTransformed = zeros(length(PhaseFreqVector), data_length);
    
    for ii=1:length(AmpFreqVector)
        Af1 = AmpFreqVector(ii);
        Af2 = Af1+AmpFreq_BandWidth;
        AmpFreq                   = eegfilt(data2,srate,Af1,Af2); % just filtering
        AmpFreqTransformed(ii, :) = abs(hilbert(AmpFreq)); % getting the amplitude envelope
    end
    
    for jj=1:length(PhaseFreqVector)
        Pf1 = PhaseFreqVector(jj);
        Pf2 = Pf1 + PhaseFreq_BandWidth;
        PhaseFreq                   = eegfilt(data2,srate,Pf1,Pf2); % this is just filtering
        PhaseFreqTransformed(jj, :) = angle(hilbert(PhaseFreq)); % this is getting the phase time series
    end
    
    counter1 = 0;
    for ii = 1:length(PhaseFreqVector)
        counter1 = counter1+1;
        Pf1      = PhaseFreqVector(ii);
        Pf2      = Pf1+PhaseFreq_BandWidth;
        
        counter2 = 0;
        for jj = 1:length(AmpFreqVector)
            counter2 = counter2+1;
            
            Af1 = AmpFreqVector(jj);
            Af2 = Af1+AmpFreq_BandWidth;
            [MI,MeanAmp] = ModIndex_v2(PhaseFreqTransformed(ii, :), AmpFreqTransformed(jj, :), position);
            Comodulogram2(counter1,counter2) = MI;
        end
    end
    CFC8(:,:,c) = Comodulogram2;
    toc
end

%% TREINO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%PLOT CFC AND T-TEST STATS for 4 phases individually
%%PLOT CDM
clear h* p*
figure(2),clf
set(gcf,'color','w')

subplot(4,6,1)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC1(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
ylabel('Amplitude (Freq. - Hz)')
title('AMB')
caxis([0.001 0.004])
xlim([1.5 4])
colorbar

subplot(4,6,2)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC1(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
title('AMB')
caxis([0.0005 0.001])
xlim([4 8])
colorbar

subplot(4,6,7)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC2(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
ylabel('Amplitude (Freq. - Hz)')
xlabel('Fase (Freq. - Hz)')
title('EXP')
caxis([0.001 0.004])
xlim([1.5 4])
colorbar


subplot(4,6,8)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC2(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
xlabel('Fase (Freq. - Hz)')
title('EXP')
caxis([0.0005 0.001])
xlim([4 8])
colorbar

%AmpFreqVector
amp1= 3;
amp2= 5;

amp3 = 7;
amp4 = 9;

a = 0;
clear CFCamb CFCexp
for c= 1:2
    a = a + 1;
    if c == 1
        P = 2; %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
        CFCamb(c,:) = squeeze(mean(squeeze(mean(CFC1((P),amp1:amp2,:),1)),1));
        CFCexp(c,:) = squeeze(mean(squeeze(mean(CFC2((P),amp1:amp2,:),1)),1));
        [h(a),p(a),ci,stats(a)]= ttest(CFCamb(c,:),CFCexp(c,:),'Alpha',0.05,'Tail','both')
    elseif c==2
        P = 2;
        CFCamb(c,:) = squeeze(mean(squeeze(mean(CFC1((P),amp3:amp4,:),1)),1));
        CFCexp(c,:) = squeeze(mean(squeeze(mean(CFC2((P),amp3:amp4,:),1)),1));
        [h(a),p(a),ci,stats(a)]= ttest(CFCamb(c,:),CFCexp(c,:),'Alpha',0.05,'Tail','both')
    else 
    end

end
a=1;
   
subplot(4,6,3)
P = 2;  %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
bar(1,mean(mean(squeeze(mean(CFC1(P,amp1:amp2,:),1)))),0.5,'k')
hold on
bar(2,mean(mean(squeeze(mean(CFC2(P,amp1:amp2,:),1)))),0.5,'r')
errorbar(1,mean(mean(squeeze(mean(CFC1(P,amp1:amp2,:),1)))),...
    std(mean(squeeze(mean(CFC1(P,amp1:amp2,:),1))))./sqrt(5),'k')
errorbar(2,mean(mean(squeeze(mean(CFC2(P,amp1:amp2,:),1)))),...
    std(mean(squeeze(mean(CFC2(P,amp1:amp2,:),1))))./sqrt(5),'k')
xlim([0.5 2.5])
xlabel 'AMB x EXP'
ylabel 'IM'
title(['Amplitude ' num2str([AmpFreqVector(amp1), AmpFreqVector(amp2)]) 'Hz'])
if h == 1
    str = [num2str(p(a)) '*']
    text(str);
end
box off
a = a+1;
subplot(4,6,9)
P = 2;  %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
bar(1,mean(mean(squeeze(mean(CFC1(P,amp3:amp4,:),1)))),0.5,'k')
hold on
bar(2,mean(mean(squeeze(mean(CFC2(P,amp3:amp4,:),1)))),0.5,'r')
errorbar(1,mean(mean(squeeze(mean(CFC1(P,amp3:amp4,:),1)))),...
    std(mean(squeeze(mean(CFC1(P,amp3:amp4,:),1))))./sqrt(5),'k')
errorbar(2,mean(mean(squeeze(mean(CFC2(P,amp3:amp4,:),1)))),...
    std(mean(squeeze(mean(CFC2(P,amp3:amp4,:),1))))./sqrt(5),'k')
xlim([0.5 2.5])
xlabel 'AMB x EXP'
ylabel 'IM'
title(['Amplitude ' num2str([AmpFreqVector(amp3), AmpFreqVector(amp4)]) 'Hz'])
if h == 1
    str = [num2str(p(a)) '*']
    text(str);
end
box off
a = a+1;


disp([p(1),p(2)])
%% PLOT CL

subplot(4,6,4)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC3(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
ylabel('Amplitude (Freq. - Hz)')
title('AMB')
caxis([0.001 0.004])
xlim([1.5 4])
colorbar

subplot(4,6,5)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC3(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
title('AMB')
caxis([0.0005 0.001])
xlim([4 8])
colorbar

subplot(4,6,10)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC4(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
ylabel('Amplitude (Freq. - Hz)')
xlabel('Fase (Freq. - Hz)')
title('EXP')
caxis([0.001 0.004])
xlim([1.5 4])
colorbar


subplot(4,6,11)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC4(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
xlabel('Fase (Freq. - Hz)')
title('EXP')
caxis([0.0005 0.001])
xlim([4 8])
colorbar

%AmpFreqVector
amp1= 3;
amp2= 5;

amp3 = 7;
amp4 = 9;

a = 0;
clear CFCamb2 CFCexp2
for c= 1:2
    a = a + 1;
    if c == 1
        P = 2; %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
        CFCamb2(c,:) = squeeze(mean(squeeze(mean(CFC3((P),amp1:amp2,:),1)),1));
        CFCexp2(c,:) = squeeze(mean(squeeze(mean(CFC4((P),amp1:amp2,:),1)),1));
        [h(a),p(a),ci,stats(a)]= ttest(CFCamb2(c,:),CFCexp2(c,:),'Alpha',0.05,'Tail','both')
    elseif c==2
        P = 2;
        CFCamb2(c,:) = squeeze(mean(squeeze(mean(CFC3((P),amp3:amp4,:),1)),1));
        CFCexp2(c,:) = squeeze(mean(squeeze(mean(CFC4((P),amp3:amp4,:),1)),1));
        [h(a),p(a),ci,stats(a)]= ttest(CFCamb2(c,:),CFCexp2(c,:),'Alpha',0.05,'Tail','both')
    else 
    end

end
a=1;
   
subplot(4,6,6)
P = 2;  %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
bar(1,mean(mean(squeeze(mean(CFC3(P,amp1:amp2,:),1)))),0.5,'k')
hold on
bar(2,mean(mean(squeeze(mean(CFC4(P,amp1:amp2,:),1)))),0.5,'r')
errorbar(1,mean(mean(squeeze(mean(CFC3(P,amp1:amp2,:),1)))),...
    std(mean(squeeze(mean(CFC3(P,amp1:amp2,:),1))))./sqrt(5),'k')
errorbar(2,mean(mean(squeeze(mean(CFC4(P,amp1:amp2,:),1)))),...
    std(mean(squeeze(mean(CFC4(P,amp1:amp2,:),1))))./sqrt(5),'k')
xlim([0.5 2.5])
xlabel 'AMB x EXP'
ylabel 'IM'
title(['Amplitude ' num2str([AmpFreqVector(amp1), AmpFreqVector(amp2)]) 'Hz'])
if h == 1
    str = [num2str(p(a)) '*']
    text(str);
end
box off
a = a+1;


subplot(4,6,12)
P = 2;  %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
bar(1,mean(mean(squeeze(mean(CFC3(P,amp3:amp4,:),1)))),0.5,'k')
hold on
bar(2,mean(mean(squeeze(mean(CFC4(P,amp3:amp4,:),1)))),0.5,'r')
errorbar(1,mean(mean(squeeze(mean(CFC3(P,amp3:amp4,:),1)))),...
    std(mean(squeeze(mean(CFC3(P,amp3:amp4,:),1))))./sqrt(5),'k')
errorbar(2,mean(mean(squeeze(mean(CFC4(P,amp3:amp4,:),1)))),...
    std(mean(squeeze(mean(CFC4(P,amp3:amp4,:),1))))./sqrt(5),'k')
xlim([0.5 2.5])
xlabel 'AMB x EXP'
ylabel 'IM'
title(['Amplitude ' num2str([AmpFreqVector(amp3), AmpFreqVector(amp4)]) 'Hz'])
if h == 1
    str = [num2str(p(a)) '*']
    text(str);
end
box off
a = a+1;

%% TESTE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%PLOT CFC AND T-TEST STATS for 4 phases individually
%%PLOT CDM
clear h* p*
set(gcf,'color','w')

subplot(4,6,13)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC5(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
ylabel('Amplitude (Freq. - Hz)')
title('AMB')
caxis([0.001 0.004])
xlim([1.5 4])
colorbar

subplot(4,6,14)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC5(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
title('AMB')
caxis([0.0005 0.001])
xlim([4 8])
colorbar

subplot(4,6,19)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC6(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
ylabel('Amplitude (Freq. - Hz)')
xlabel('Fase (Freq. - Hz)')
title('EXP')
caxis([0.001 0.004])
xlim([1.5 4])
colorbar


subplot(4,6,20)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC6(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
xlabel('Fase (Freq. - Hz)')
title('EXP')
caxis([0.0005 0.001])
xlim([4 8])
colorbar

%AmpFreqVector
amp1= 3;
amp2= 5;

amp3 = 7;
amp4 = 9;

a = 0;
clear CFCamb3 CFCexp3
for c= 1:2
    a = a + 1;
    if c == 1
        P = 2; %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
        CFCamb3(c,:) = squeeze(mean(squeeze(mean(CFC5((P),amp1:amp2,:),1)),1));
        CFCexp3(c,:) = squeeze(mean(squeeze(mean(CFC6((P),amp1:amp2,:),1)),1));
        [h(a),p(a),ci,stats(a)]= ttest(CFCamb3(c,:),CFCexp3(c,:),'Alpha',0.05,'Tail','both')
    elseif c==2
        P = 2;
        CFCamb3(c,:) = squeeze(mean(squeeze(mean(CFC5((P),amp3:amp4,:),1)),1));
        CFCexp3(c,:) = squeeze(mean(squeeze(mean(CFC6((P),amp3:amp4,:),1)),1));
        [h(a),p(a),ci,stats(a)]= ttest(CFCamb3(c,:),CFCexp3(c,:),'Alpha',0.05,'Tail','both')
    else 
    end

end
a=1;
   
subplot(4,6,15)
P = 2;  %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
bar(1,mean(mean(squeeze(mean(CFC5(P,amp1:amp2,:),1)))),0.5,'k')
hold on
bar(2,mean(mean(squeeze(mean(CFC6(P,amp1:amp2,:),1)))),0.5,'r')
errorbar(1,mean(mean(squeeze(mean(CFC5(P,amp1:amp2,:),1)))),...
    std(mean(squeeze(mean(CFC5(P,amp1:amp2,:),1))))./sqrt(5),'k')
errorbar(2,mean(mean(squeeze(mean(CFC6(P,amp1:amp2,:),1)))),...
    std(mean(squeeze(mean(CFC6(P,amp1:amp2,:),1))))./sqrt(5),'k')
xlim([0.5 2.5])
xlabel 'AMB x EXP'
ylabel 'IM'
title(['Amplitude ' num2str([AmpFreqVector(amp1), AmpFreqVector(amp2)]) 'Hz'])
if h == 1
    str = [num2str(p(a)) '*']
    text(str);
end
box off
a = a+1;
subplot(4,6,21)
P = 2;  %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
bar(1,mean(mean(squeeze(mean(CFC5(P,amp3:amp4,:),1)))),0.5,'k')
hold on
bar(2,mean(mean(squeeze(mean(CFC6(P,amp3:amp4,:),1)))),0.5,'r')
errorbar(1,mean(mean(squeeze(mean(CFC5(P,amp3:amp4,:),1)))),...
    std(mean(squeeze(mean(CFC5(P,amp3:amp4,:),1))))./sqrt(5),'k')
errorbar(2,mean(mean(squeeze(mean(CFC6(P,amp3:amp4,:),1)))),...
    std(mean(squeeze(mean(CFC6(P,amp3:amp4,:),1))))./sqrt(5),'k')
xlim([0.5 2.5])
xlabel 'AMB x EXP'
ylabel 'IM'
title(['Amplitude ' num2str([AmpFreqVector(amp3), AmpFreqVector(amp4)]) 'Hz'])
if h == 1
    str = [num2str(p(a)) '*']
    text(str);
end
box off
a = a+1;


disp([p(1),p(2)])
%% PLOT CL

subplot(4,6,16)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC7(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
ylabel('Amplitude (Freq. - Hz)')
title('AMB')
caxis([0.001 0.004])
xlim([1.5 4])
colorbar

subplot(4,6,17)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC7(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
title('AMB')
caxis([0.0005 0.001])
xlim([4 8])
colorbar

subplot(4,6,22)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC8(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
xlabel('Fase (Freq. - Hz)')
title('EXP')
caxis([0.001 0.004])
xlim([1.5 4])
colorbar


subplot(4,6,23)
contourf(PhaseFreqVector+PhaseFreq_BandWidth/2, AmpFreqVector+AmpFreq_BandWidth/2, CFC8(:,:,3)',50,'lines','none')
set(gca,'fontsize',12)
xlabel('Fase (Freq. - Hz)')
title('EXP')
caxis([0.0005 0.001])
xlim([4 8])
colorbar

%AmpFreqVector
amp1= 3;
amp2= 5;

amp3 = 7;
amp4 = 9;

a = 0;
clear CFCamb4 CFCexp4
for c= 1:2
    a = a + 1;
    if c == 1
        P = 2; %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
        CFCamb4(c,:) = squeeze(mean(squeeze(mean(CFC7((P),amp1:amp2,:),1)),1));
        CFCexp4(c,:) = squeeze(mean(squeeze(mean(CFC8((P),amp1:amp2,:),1)),1));
        [h(a),p(a),ci,stats(a)]= ttest(CFCamb4(c,:),CFCexp4(c,:),'Alpha',0.05,'Tail','both')
    elseif c==2
        P = 2;
        CFCamb4(c,:) = squeeze(mean(squeeze(mean(CFC7((P),amp3:amp4,:),1)),1));
        CFCexp4(c,:) = squeeze(mean(squeeze(mean(CFC8((P),amp3:amp4,:),1)),1));
        [h(a),p(a),ci,stats(a)]= ttest(CFCamb4(c,:),CFCexp4(c,:),'Alpha',0.05,'Tail','both')
    else 
    end

end
a=1;
   
subplot(4,6,18)
P = 2;  %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
bar(1,mean(mean(squeeze(mean(CFC7(P,amp1:amp2,:),1)))),0.5,'k')
hold on
bar(2,mean(mean(squeeze(mean(CFC8(P,amp1:amp2,:),1)))),0.5,'r')
errorbar(1,mean(mean(squeeze(mean(CFC7(P,amp1:amp2,:),1)))),...
    std(mean(squeeze(mean(CFC7(P,amp1:amp2,:),1))))./sqrt(5),'k')
errorbar(2,mean(mean(squeeze(mean(CFC8(P,amp1:amp2,:),1)))),...
    std(mean(squeeze(mean(CFC8(P,amp1:amp2,:),1))))./sqrt(5),'k')
xlim([0.5 2.5])
xlabel 'AMB x EXP'
ylabel 'IM'
title(['Amplitude ' num2str([AmpFreqVector(amp1), AmpFreqVector(amp2)]) 'Hz'])
if h == 1
    str = [num2str(p(a)) '*']
    text(str);
end
box off
a = a+1;


subplot(4,6,24)
P = 2;  %PHASE FREQUENCY (Ph1 - Ph2 (Ph1 + PhW)
bar(1,mean(mean(squeeze(mean(CFC7(P,amp3:amp4,:),1)))),0.5,'k')
hold on
bar(2,mean(mean(squeeze(mean(CFC8(P,amp3:amp4,:),1)))),0.5,'r')
errorbar(1,mean(mean(squeeze(mean(CFC7(P,amp3:amp4,:),1)))),...
    std(mean(squeeze(mean(CFC7(P,amp3:amp4,:),1))))./sqrt(5),'k')
errorbar(2,mean(mean(squeeze(mean(CFC8(P,amp3:amp4,:),1)))),...
    std(mean(squeeze(mean(CFC8(P,amp3:amp4,:),1))))./sqrt(5),'k')
xlim([0.5 2.5])
xlabel 'AMB x EXP'
ylabel 'IM'
title(['Amplitude ' num2str([AmpFreqVector(amp3), AmpFreqVector(amp4)]) 'Hz'])
if h == 1
    str = [num2str(p(a)) '*']
    text(str);
end
box off
a = a+1;

CFC = [CFCamb, CFCexp,CFCamb3, CFCexp3;CFCamb2, CFCexp2, CFCamb4, CFCexp4]';