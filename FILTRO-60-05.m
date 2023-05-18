%% FILTRO 60 HZ E MENOR QUE 0.5 HZ

%
% create and inspect the filter kernel
% create filter  60 Hz
% d = designfilt('bandstopiir','FilterOrder',10, ...
%     'HalfPowerFrequency1',59,'HalfPowerFrequency2',61, ...
%     'DesignMethod','butter','SampleRate',srate);
% d = designfilt('lowpassiir','FilterOrder',8, ...
%          'PassbandFrequency',60,'PassbandRipple',0.2, ...
%          'SampleRate',600);
% apply filter
for a = 1:8
    MCDMtr(a,:) = filtfilt(d,MCDMtr(a,:));
    MCDMtt(a,:) = filtfilt(d,MCDMtt(a,:));
    MCLtr(a,:) = filtfilt(d,MCLtr(a,:));
    MCLtt(a,:) = filtfilt(d,MCLtt(a,:));
end
for a = 1:5
    CCDMtr(a,:) = filtfilt(d,CCDMtr(a,:));
    CCDMtt(a,:) = filtfilt(d,CCDMtt(a,:));
    CCLtr(a,:) = filtfilt(d,CCLtr(a,:));
    CCLtt(a,:) = filtfilt(d,CCLtt(a,:));
end
% d = designfilt('highpassiir', 'FilterOrder',5, ...
%     'PassbandFrequency',0.9, ...
%     'PassbandRipple',0.5,'SampleRate',srate);

for a = 1:8
    MCDMtr(a,:) = filtfilt(d,MCDMtr(a,:));
    MCDMtt(a,:) = filtfilt(d,MCDMtt(a,:));
    MCLtr(a,:) = filtfilt(d,MCLtr(a,:));
    MCLtt(a,:) = filtfilt(d,MCLtt(a,:));
end
for a = 1:5
    CCDMtr(a,:) = filtfilt(d,CCDMtr(a,:));
    CCDMtt(a,:) = filtfilt(d,CCDMtt(a,:));
    CCLtr(a,:) = filtfilt(d,CCLtr(a,:));
    CCLtt(a,:) = filtfilt(d,CCLtt(a,:));
end