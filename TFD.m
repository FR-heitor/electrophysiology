%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Heitor Franco Santos.
% 01_TFD (TIME FREQUENCY DECOMPOSITION)
% Medidas de potencia ao longo do tempo baseada na amplitude e no espectro.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc % limpa comm win
clf % limpa fig
%clear all % limpa mem
close all % fecha win
%%
%load Animais-estimulo-aversivo.mat
%PARAMETROS
a = 2;
DATA = 2;
srate = 600; % frequencia de amostragem em Hz
dt = 1/srate; % Passo em segundos
time_vector = dt:dt:length(DATA)/srate; % Vetor de tempo em segundos


LFP = DATA;


%% FILTRAGEM E ENVELOPE DE AMPLITUDE DO SINAL - TEMPO DE 5 SEGUNDOS
cd ('G:\Meu Drive\Projeto Lagartos\Funções utilizadas\DisciplinaMatlab\CircStat')

fig1 = figure(1);
subplot(3,1,1)
plot(time_vector,DATA,'k','linewidth',1)
title('Sinal bruto','fontsize',16)
set(gca,'fontsize',12)
xlim([105 108])
ylim([-2*10^-1 2*10^-1])
x11 = gca;
ylabel(' mV ' )

%FILTRA O SINAL
delta = eegfilt(DATA,srate,1,4);
theta = eegfilt(DATA,srate,4,8);
alfa  = eegfilt(DATA,srate,8,12);
beta  = eegfilt(DATA,srate,15,25);
gamma1 = eegfilt(DATA,srate,25,35);
gamma2 = eegfilt(DATA,srate,35,50);

subplot(312)
plot(time_vector,delta,'b','linewidth',1)
hold on
plot(time_vector,theta,'c-','linewidth',1)
plot(time_vector,alfa,'r-','linewidth',1)
plot(time_vector,beta,'g-','linewidth',1)
plot(time_vector,gamma1,'m-','linewidth',1)
plot(time_vector,gamma2,'k-','linewidth',1)
title('Signal','fontsize',16)
set(gca,'fontsize',12)
set(gcf,'color','white')
xlim([155 158])
ylim([-0.1 0.1])
x12 = gca;
linkaxes([x11 x12],'x');
xlabel(' Time (s)')
ylabel(' mV ' )
legend('Band 01','Band 02','Band 03','Band 04', 'Band 05', 'Band 06', 'northwestoutside')


%OBTEM O ENVELOPE DE AMPLITUDE
deltaAmp = abs(hilbert(delta));
thetaAmp = abs(hilbert(theta));
alfaAmp = abs(hilbert(alfa));
betaAmp = abs(hilbert(beta));
gamma1Amp = abs(hilbert(gamma1));
gamma2Amp = abs(hilbert(gamma2));

subplot(313)
plot(time_vector,deltaAmp.^2,'b-','linewidth',1)
hold on
plot(time_vector,thetaAmp.^2,'c-','linewidth',1)
plot(time_vector,alfaAmp.^2,'r-','linewidth',1)
plot(time_vector,betaAmp.^2,'g-','linewidth',1)
plot(time_vector,gamma1Amp.^2,'m-','linewidth',1)
plot(time_vector,gamma2Amp.^2,'k-','linewidth',1)
xlim([155 158])
ylim([0 0.02])
xlabel(' Time (s)')
ylabel(' Potential ' )
legend('Band 01','Band 02','Band 03','Band 04', 'Band 05', 'Band 06', 'northwestoutside')
set(gca,'fontsize',12)
set(gcf,'color','white')
title('','fontsize',16)
hold off



%% FILTRAGEM E ENVELOPE DE AMPLITUDE DO SINAL - TEMPO DE 1 SEGUNDO
a = 5;
DATA = CCDMtt2(a,1:300*srate);
LFP = DATA
srate = 600; % frequencia de amostragem em Hz
dt = 1/srate; % Passo em segundos
time_vector = dt:dt:length(DATA)/srate; % Vetor de tempo em segundos

%FILTRA O SINAL
delta = eegfilt(LFP,srate,1,4);
theta = eegfilt(LFP,srate,4,8);
alfa  = eegfilt(LFP,srate,8,12);
beta  = eegfilt(LFP,srate,15,25);
gamma1 = eegfilt(LFP,srate,25,40);


LFP = DATA;
fig2 = figure(2)
title('Sinal bruto - CDM','fontsize',16)
subplot(3,2,1)
plot(time_vector,LFP,'k','linewidth',1)
title('Sinal bruto - 300s','fontsize',12)
set(gca,'fontsize',12)
ylim([-8*10^-1 8*10^-1])
ylabel(' mV ' )
xlabel(' Tempo (s)')
box off

subplot(3,2,2)
plot(time_vector,LFP,'k','linewidth',1)
title('Sinal bruto - trecho de 3s','fontsize',12)
set(gca,'fontsize',12)
ylim([-8*10^-1 8*10^-1])
xlim([105 108])
ylabel(' mV ' )
xlabel(' Tempo (s)')
box off

subplot(3,2,3:4)
plot(time_vector,delta,'b','linewidth',1)
hold on
plot(time_vector,theta,'c-','linewidth',1)
plot(time_vector,alfa,'r-','linewidth',1)
plot(time_vector,beta,'g-','linewidth',1)
plot(time_vector,gamma1,'m-','linewidth',1)
title('Deconvolução','fontsize',12)
set(gca,'fontsize',12)
set(gcf,'color','white')
xlim([105 108])
ylim([-0.4 0.4])
xlabel(' Tempo (s)')
ylabel(' mV ' )
legend('Banda 01','Banda 02','Banda 03','Banda 04', 'Banda 05', 'northwestoutside')
box off
%OBTEM O ENVELOPE DE AMPLITUDE
deltaAmp = abs(hilbert(delta));
thetaAmp = abs(hilbert(theta));
alfaAmp = abs(hilbert(alfa));
betaAmp = abs(hilbert(beta));
gamma1Amp = abs(hilbert(gamma1));

subplot(3,2,5:6)
plot(time_vector,deltaAmp.^2,'b-','linewidth',1)
hold on
plot(time_vector,thetaAmp.^2,'c-','linewidth',1)
plot(time_vector,alfaAmp.^2,'r-','linewidth',1)
plot(time_vector,betaAmp.^2,'g-','linewidth',1)
plot(time_vector,gamma1Amp.^2,'m-','linewidth',1)
xlabel(' Tempo (s)')
ylabel('Potência' )
ylim([0 0.04])
xlim([105 108])
legend('Banda 01','Banda 02','Banda 03','Banda 04', 'Banda 05', 'northwestoutside')
set(gca,'fontsize',12)
set(gcf,'color','white')
box off

%% TIME FREQUENCY DECOMPOSITION CONTINUA (BASEADA NO ENV DE AMPLITUDE)
cd ('G:\Meu Drive\Projeto Lagartos\Funções utilizadas\DisciplinaMatlab\CircStat')
%PARAMETROS
frequency_vector = 1:0.1:50;
frequency_width = 1;

%TFD
clear TFDcont
TFDcont = zeros(length(frequency_vector),length(data));
for j=1:length(frequency_vector) 
    filtrado = eegfilt(data,srate,frequency_vector(j),...
    frequency_vector(j)+frequency_width);
    TFDcont(j,:)= abs(hilbert(filtrado ));
end

%PLOTA
fig3 = figure(3);
imagesc(time_vector,frequency_vector+frequency_width/2,TFDcont)
axis xy
xlabel('Tempo (s)')
ylabel('Frequência (Hz)')
xlim([1 600])
caxis([0 0.04])
title('TFD contínua','fontsize',16)

%PSD
j=60;
fig4 = figure(4)
plot(frequency_vector+frequency_width/2,TFDcont(:,j*srate))
ylim([1 80])
hold on
plot(frequency_vector+frequency_width/2,TFDcont(:,(j+60)*srate))
plot(frequency_vector+frequency_width/2,TFDcont(:,(j+180)*srate))
plot(frequency_vector+frequency_width/2,TFDcont(:,(j+240)*srate))
plot(frequency_vector+frequency_width/2,TFDcont(:,(j+420)*srate))
plot(frequency_vector+frequency_width/2,mean(TFDcont(:,:),2),'k-','linewidth',2)
xlabel('Frequência (Hz)')
ylabel('Energia')
title('Espectro - trecho de 60 s a 600 s','fontsize',13)
legend('Espectros do trecho 60 s','Espectros do trecho 120 s','Espectros do trecho 240 s','Espectros do trecho 180 s','Espectros do trecho 300 s','Espectros do trecho 480 s','Espectro médio')
ylim([0 0.07])
xlim([1 80])
set(gca,'Box', 'off')
set(gcf,'color','white')


%% TIME FREQUENCY DECOMPOSITION DISCRETA (BASEADA NO ESPECTROGRAMA)

%ESPECTROGRAMA
window  = 5*srate;
overlap = 0.25*window;
nfft    = 2^13;
[S, F, T, P] = spectrogram(detrend(DATA),window,overlap,nfft,srate);

%PLOTA
fig5=figure(5);
subplot(211)
imagesc(T,F,P)
ylim([0 50])
xlim([1 168])
caxis([0 0.00012])
title('TFD discreta','fontsize',13)
xlabel('Tempo (s)')
ylabel('Frequência (Hz)')
axis xy

subplot(212)
plot(F,mean(abs(hilbert(S(:,[1:74])).^2),2),'linewidth',2)
xlim([1 40])
xlabel('Frequência (Hz)')
ylabel('Energia')
title('Decomposição do espectro de potência','fontsize',13)
set(gca,'Box', 'off')
set(gcf,'color','white')