%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Phase-locking value - slow phase modulation - Manager program
% 
% This program loads and preprocesses all inputs necessary to run 
% the core function plv_modindex.m (Gonzalez et al. 2020, 
% "Communication through coherence by means of cross-frequency coupling"
% https://doi.org/10.1101/2020.03.09.984203)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TREINO AMB CTL
clear plv_modindex_comodulogram PLVamb

%Ambientação
for a = 1:5
lfp1 = CCL2tt1(a,1*srate:300*srate);
lfp2 = CCDM2tt2(a,1*srate:300*srate);

addpath 'G:\Meu Drive\Projeto Lagartos\Funções utilizadas\Phase-Locking-Value---Modulation-Index-master\Phase-Locking-Value---Modulation-Index-master'
% Setting Parameters
srate = 600; % sampling rate 
slow_vector = 0:1:10; % vector of frequencies to filter the slow waves
fast_vector = 10:5:50; % vector of frequencies to filter the fast waves
slow_BandWidth = 3; % filter bandwidth (slow waves)
fast_BandWidth = 10; % filter bandwidth (fast waves)
numbin = 20; % number of phase bins (slow waves) 
data_length = length(lfp1); % getting the length of the lfp time-series

% Pre-allocating 
FastPhase1 = zeros(length(fast_vector), data_length); % pre-allocating
FastPhase2 = zeros(length(fast_vector), data_length); % pre-allocating
SlowPhase = zeros(length(slow_vector), data_length); % pre-allocating

% Obtaining the fast frequency phase time-series
 for ii=1:length(fast_vector)
    Ff1 = fast_vector(ii); % selecting frequency (low cut)
    Ff2=Ff1+fast_BandWidth; % selecting frequency (high cut) 
    FastFreq1=eegfilt(lfp1,srate,Ff1,Ff2); % filtering lfp1
    FastFreq2=eegfilt(lfp2,srate,Ff1,Ff2); % filtering lfp2
    FastPhase1(ii, :) = angle(hilbert(FastFreq1)); % getting the intantaneous phase of lfp1
    FastPhase2(ii, :) = angle(hilbert(FastFreq2)); % getting the intantaneous phase of lfp2
 end
 
% Obtaining the slow frequency phase time-series
for jj=1:length(slow_vector)
    Sf1 = slow_vector(jj); % selecting frequency (low cut)
    Sf2 = Sf1 + slow_BandWidth; % selecting frequency (high cut)
    SlowFreq = eegfilt(lfp1,srate,Sf1,Sf2); % filtering lfp with the slow wave reference
    SlowPhase(jj, :) = angle(hilbert(SlowFreq)); % getting the intantaneous phase of the slow wave 
end

% Loop through the frequencies and compute the plv_modindex comodulogram
plv_modindex_comodulogram = zeros(size(FastPhase1,1),size(SlowPhase,1)); % pre-allocating
for i = 1:size(SlowPhase,1) % loop through slow frequencies
    for j = 1:size(FastPhase1,1) % loop through fast frequencies   
        plv_phase_modindex = plv_modindex(FastPhase1(j,:)',FastPhase2(j,:)',SlowPhase(i,:)',numbin); % plv_modindex calculation
        plv_modindex_comodulogram(j,i) = plv_phase_modindex; % storing the results in the variable plv_modindex_comodulogram
    end  
end
PLVamb(:,:,a)  = plv_modindex_comodulogram;
end

% TREINO Exposição CTL
clear plv_modindex_comodulogram PLVexp

for a = 1:5
lfp1 = CCL2tt1(a,300*srate:455*srate);
lfp2 = CCDM2tt2(a,300*srate:455*srate);

addpath 'G:\Meu Drive\Projeto Lagartos\Funções utilizadas\Phase-Locking-Value---Modulation-Index-master\Phase-Locking-Value---Modulation-Index-master'
% Setting Parameters
srate = 600; % sampling rate 
slow_vector = 0:1:10; % vector of frequencies to filter the slow waves
fast_vector = 10:5:50; % vector of frequencies to filter the fast waves
slow_BandWidth = 3; % filter bandwidth (slow waves)
fast_BandWidth = 10; % filter bandwidth (fast waves)
numbin = 18; % number of phase bins (slow waves) 
data_length = length(lfp1); % getting the length of the lfp time-series

% Pre-allocating 
FastPhase1 = zeros(length(fast_vector), data_length); % pre-allocating
FastPhase2 = zeros(length(fast_vector), data_length); % pre-allocating
SlowPhase = zeros(length(slow_vector), data_length); % pre-allocating

% Obtaining the fast frequency phase time-series
 for ii=1:length(fast_vector)
    Ff1 = fast_vector(ii); % selecting frequency (low cut)
    Ff2=Ff1+fast_BandWidth; % selecting frequency (high cut) 
    FastFreq1=eegfilt(lfp1,srate,Ff1,Ff2); % filtering lfp1
    FastFreq2=eegfilt(lfp2,srate,Ff1,Ff2); % filtering lfp2
    FastPhase1(ii, :) = angle(hilbert(FastFreq1)); % getting the intantaneous phase of lfp1
    FastPhase2(ii, :) = angle(hilbert(FastFreq2)); % getting the intantaneous phase of lfp2
 end
 
% Obtaining the slow frequency phase time-series
for jj=1:length(slow_vector)
    Sf1 = slow_vector(jj); % selecting frequency (low cut)
    Sf2 = Sf1 + slow_BandWidth; % selecting frequency (high cut)
    SlowFreq = eegfilt(lfp1,srate,Sf1,Sf2); % filtering lfp with the slow wave reference
    SlowPhase(jj, :) = angle(hilbert(SlowFreq)); % getting the intantaneous phase of the slow wave 
end

% Loop through the frequencies and compute the plv_modindex comodulogram
plv_modindex_comodulogram = zeros(size(FastPhase1,1),size(SlowPhase,1)); % pre-allocating
for i = 1:size(SlowPhase,1) % loop through slow frequencies
    for j = 1:size(FastPhase1,1) % loop through fast frequencies   
        plv_phase_modindex = plv_modindex(FastPhase1(j,:)',FastPhase2(j,:)',SlowPhase(i,:)',numbin); % plv_modindex calculation
        plv_modindex_comodulogram(j,i) = plv_phase_modindex; % storing the results in the variable plv_modindex_comodulogram
    end  
end
PLVexp(:,:,a)  = plv_modindex_comodulogram;
end


% Treino AMB MUS
clear plv_modindex_comodulogram PLVamb2
%Ambientação
c = 0;
for a = 1:5
    
lfp1 = MCL3tt1(a,1*srate:300*srate);
lfp2 = MCDM3tt2(a,1*srate:300*srate);

addpath 'G:\Meu Drive\Projeto Lagartos\Funções utilizadas\Phase-Locking-Value---Modulation-Index-master\Phase-Locking-Value---Modulation-Index-master'
% Setting Parameters
srate = 600; % sampling rate 
slow_vector = 0:1:10; % vector of frequencies to filter the slow waves
fast_vector = 10:5:50; % vector of frequencies to filter the fast waves
slow_BandWidth = 3; % filter bandwidth (slow waves)
fast_BandWidth = 10; % filter bandwidth (fast waves)
numbin = 18; % number of phase bins (slow waves) 
data_length = length(lfp1); % getting the length of the lfp time-series

% Pre-allocating 
FastPhase1 = zeros(length(fast_vector), data_length); % pre-allocating
FastPhase2 = zeros(length(fast_vector), data_length); % pre-allocating
SlowPhase = zeros(length(slow_vector), data_length); % pre-allocating

% Obtaining the fast frequency phase time-series
 for ii=1:length(fast_vector)
    Ff1 = fast_vector(ii); % selecting frequency (low cut)
    Ff2=Ff1+fast_BandWidth; % selecting frequency (high cut) 
    FastFreq1=eegfilt(lfp1,srate,Ff1,Ff2); % filtering lfp1
    FastFreq2=eegfilt(lfp2,srate,Ff1,Ff2); % filtering lfp2
    FastPhase1(ii, :) = angle(hilbert(FastFreq1)); % getting the intantaneous phase of lfp1
    FastPhase2(ii, :) = angle(hilbert(FastFreq2)); % getting the intantaneous phase of lfp2
 end
 
% Obtaining the slow frequency phase time-series
for jj=1:length(slow_vector)
    Sf1 = slow_vector(jj); % selecting frequency (low cut)
    Sf2 = Sf1 + slow_BandWidth; % selecting frequency (high cut)
    SlowFreq = eegfilt(lfp1,srate,Sf1,Sf2); % filtering lfp with the slow wave reference
    SlowPhase(jj, :) = angle(hilbert(SlowFreq)); % getting the intantaneous phase of the slow wave 
end

% Loop through the frequencies and compute the plv_modindex comodulogram
plv_modindex_comodulogram = zeros(size(FastPhase1,1),size(SlowPhase,1)); % pre-allocating
for i = 1:size(SlowPhase,1) % loop through slow frequencies
    for j = 1:size(FastPhase1,1) % loop through fast frequencies   
        plv_phase_modindex = plv_modindex(FastPhase1(j,:)',FastPhase2(j,:)',SlowPhase(i,:)',numbin); % plv_modindex calculation
        plv_modindex_comodulogram(j,i) = plv_phase_modindex; % storing the results in the variable plv_modindex_comodulogram
    end  
end
c = c + 1;
PLVamb2(:,:,c)  = plv_modindex_comodulogram;
end

% TREINO Exposição MUS
clear plv_modindex_comodulogram PLVexp2
c = 0;
for a = 1:5
lfp1 = MCL3tt1(a,300*srate:455*srate);
lfp2 = MCDM3tt2(a,300*srate:455*srate);

addpath 'G:\Meu Drive\Projeto Lagartos\Funções utilizadas\Phase-Locking-Value---Modulation-Index-master\Phase-Locking-Value---Modulation-Index-master'
% Setting Parameters
srate = 600; % sampling rate 
slow_vector = 0:1:10; % vector of frequencies to filter the slow waves
fast_vector = 10:5:50; % vector of frequencies to filter the fast waves
slow_BandWidth = 3; % filter bandwidth (slow waves)
fast_BandWidth = 10; % filter bandwidth (fast waves)
numbin = 18; % number of phase bins (slow waves) 
data_length = length(lfp1); % getting the length of the lfp time-series

% Pre-allocating 
FastPhase1 = zeros(length(fast_vector), data_length); % pre-allocating
FastPhase2 = zeros(length(fast_vector), data_length); % pre-allocating
SlowPhase = zeros(length(slow_vector), data_length); % pre-allocating

% Obtaining the fast frequency phase time-series
 for ii=1:length(fast_vector)
    Ff1 = fast_vector(ii); % selecting frequency (low cut)
    Ff2=Ff1+fast_BandWidth; % selecting frequency (high cut) 
    FastFreq1=eegfilt(lfp1,srate,Ff1,Ff2); % filtering lfp1
    FastFreq2=eegfilt(lfp2,srate,Ff1,Ff2); % filtering lfp2
    FastPhase1(ii, :) = angle(hilbert(FastFreq1)); % getting the intantaneous phase of lfp1
    FastPhase2(ii, :) = angle(hilbert(FastFreq2)); % getting the intantaneous phase of lfp2
 end
 
% Obtaining the slow frequency phase time-series
for jj=1:length(slow_vector)
    Sf1 = slow_vector(jj); % selecting frequency (low cut)
    Sf2 = Sf1 + slow_BandWidth; % selecting frequency (high cut)
    SlowFreq = eegfilt(lfp1,srate,Sf1,Sf2); % filtering lfp with the slow wave reference
    SlowPhase(jj, :) = angle(hilbert(SlowFreq)); % getting the intantaneous phase of the slow wave 
end

% Loop through the frequencies and compute the plv_modindex comodulogram
plv_modindex_comodulogram = zeros(size(FastPhase1,1),size(SlowPhase,1)); % pre-allocating
for i = 1:size(SlowPhase,1) % loop through slow frequencies
    for j = 1:size(FastPhase1,1) % loop through fast frequencies   
        plv_phase_modindex = plv_modindex(FastPhase1(j,:)',FastPhase2(j,:)',SlowPhase(i,:)',numbin); % plv_modindex calculation
        plv_modindex_comodulogram(j,i) = plv_phase_modindex; % storing the results in the variable plv_modindex_comodulogram
    end  
end
c = c+1;
PLVexp2(:,:,c)  = plv_modindex_comodulogram;
end

%% Plotting the comodulogram

figure(1)
subplot(2,2,1)
contourf(slow_vector+slow_BandWidth/2,fast_vector+fast_BandWidth/2,mean(PLVamb,3),50,'edgecolor','none')
set(gca,'Fontsize',12)
ylabel(' VFF (Hz) ','Fontsize',12)
xlabel('Phase Frequency (Hz)','Fontsize',12)
grid on
h = colorbar;
ylabel(h, 'Ind Mod','Fontsize',12)
title('CTL - ambientação (treino)')
caxis([0 7e-5])
subplot(2,2,2)
contourf(slow_vector+slow_BandWidth/2,fast_vector+fast_BandWidth/2,mean(PLVexp,3),50,'edgecolor','none')
set(gca,'Fontsize',12)
ylabel(' VFF (Hz) ','Fontsize',12)
xlabel('Frequência de fase','Fontsize',12)
grid on
h = colorbar;
ylabel(h, 'Ind Mod','Fontsize',12)
title('CTL - exposição (treino)')
caxis([0 15e-5])
subplot(2,2,3)
contourf(slow_vector+slow_BandWidth/2,fast_vector+fast_BandWidth/2,mean(PLVamb2,3),50,'edgecolor','none')
set(gca,'Fontsize',12)
ylabel(' VFF (Hz) ','Fontsize',12)
xlabel('Phase Frequency (Hz)','Fontsize',12)
grid on
h = colorbar;
ylabel(h, 'Ind Mod','Fontsize',12)
title('MUS - ambientação (treino)')
caxis([0 7e-2])
subplot(2,2,4)
contourf(slow_vector+slow_BandWidth/2,fast_vector+fast_BandWidth/2,mean((PLVexp2),3),50,'edgecolor','none')
set(gca,'Fontsize',12)
ylabel(' VFF (Hz) ','Fontsize',12)
xlabel('Frequência de fase','Fontsize',12)
grid on
h = colorbar;
ylabel(h, 'Ind Mod','Fontsize',12)
title('MUS - exposição (treino)')
caxis([0 10e-5])
%% Teste t
clc
fast1 = 6; %15-25 25-35 35-45
fast2 = 8;
slow1 = 7; %2-4 6-10
slow2 = 11;
clear PVLamb* PVLtest*
    PLVambtestC = mean(squeeze(mean(PLVamb(fast1:fast2,slow1:slow2,:),1)),1);
    PLVexptestC = mean(squeeze(mean(PLVexp(fast1:fast2,slow1:slow2,:),1)),1);
    PLVambtestM = mean(squeeze(mean(PLVamb2(fast1:fast2,slow1:slow2,:),1)),1);
    PLVexptestM = mean(squeeze(mean(PLVexp2(fast1:fast2,slow1:slow2,:),1)),1);
    PLV = [PLVambtestC,PLVexptestC,PLVambtestM,PLVexptestM]';
    [h,p,ci,stats]= ttest(PLVambtestC,PLVexptestC,'Alpha',0.05,'Tail','both')
    [h,p,ci,stats]= ttest(PLVambtestM,PLVexptestM,'Alpha',0.05,'Tail','both')
    [h,p,ci,stats]= ttest2(PLVexptestC,PLVexptestM,'Alpha',0.05,'Tail','both')


%% Selecionar dados para comparar no interesse.

%%% PLVambtestC  PLVexptestC - condição ou grupo 1
%%% PLVambtestM  PLVexptestM - condição ou grupo 2
CTL = [PLVambtestC PLVexptestC];
MUS = [PLVambtestM PLVexptestM];

clear alldata timebins groups factors results
alldata   = [CTL MUS]';
timebins = [repmat(1,5,1) ; repmat(2,5,1)];
groups = [repmat(1,10,1); repmat(2,10,1)];
timelabel = [timebins; timebins];
grouplabel= groups;%define labels das duas condições AMBxEXP
factors   = [timelabel grouplabel];%dois fatores: tempo e condição

    [p table stats terms]=anovan(alldata,factors,'interaction')
    figure()
    [results ,means] = multcompare(stats,'CType','hsd','Estimate','col','Dimension',[1 2])
    
    


