% Carregue seus dados aqui (substitua 'seus_dados' pelo nome da variável)
% Por exemplo: CCDMtr2, CCDMtt2, MCDMtr2, MCDMtt2
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
%% Filtro de < 1 Hz
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
%%
% Carregar a toolbox
addpath('G:\Meu Drive\Projeto Lagartos\2022\fda\fdasrvf_MATLAB-master');  % Substitua pelo caminho real da pasta 'fdasrvf_MATLAB-master'
addpath('G:\Meu Drive\Projeto Lagartos\2022\FDAfuns');  % Substitua pelo caminho real da pasta 'fdasrvf_MATLAB-master'

clc
% Taxa de amostragem em Hz
fs = 600;

% Defina os parâmetros para a análise
nharm = 2;
norder = 4;
nbasis = 200; % Ajuste este valor com base na complexidade dos dados
order = 4;
lambda = 1e-6; % Ajuste este valor conforme necessário
Lfdobj = int2Lfd(2);

% Defina o intervalo de tempo e o objeto de base para cada grupo e condição
t_range_CTL_tr = [0, size(CCDM2tr2(1:5,:), 2) / fs];
t_range_CTL_tt = [0, size(CCDM2tt2(1:5,:), 2) / fs];
t_range_MUS_tr = [0, size(MCDMtr2([1 2 3 6 7],:), 2) / fs];
t_range_MUS_tt = [0, size(MCDMtt2([1 2 3 6 7],:), 2) / fs];
t_range_MUS2_tr = [0, size(MCDM2tr2, 2) / fs];
t_range_MUS2_tt = [0, size(MCDM2tt2, 2) / fs];
t_range_MUS3_tr = [0, size(MCDM3tr2, 2) / fs];
t_range_MUS3_tt = [0, size(MCDM3tt2, 2) / fs];

time_basis_CTL_tr = create_bspline_basis(t_range_CTL_tr, nbasis, norder);
time_basis_CTL_tt = create_bspline_basis(t_range_CTL_tt, nbasis, norder);
time_basis_MUS_tr = create_bspline_basis(t_range_MUS_tr, nbasis, norder);
time_basis_MUS_tt = create_bspline_basis(t_range_MUS_tt, nbasis, norder);
time_basis_MUS2_tr = create_bspline_basis(t_range_MUS2_tr, nbasis, norder);
time_basis_MUS2_tt = create_bspline_basis(t_range_MUS2_tt, nbasis, norder);
time_basis_MUS3_tr = create_bspline_basis(t_range_MUS3_tr, nbasis, norder);
time_basis_MUS3_tt = create_bspline_basis(t_range_MUS3_tt, nbasis, norder);

% Criar objeto fd vazio
coef = zeros(nbasis, size(CCDM2tr2, 1));
fdobj = fd(coef, time_basis_CTL_tr);
% Crie objetos fdPar para cada grupo e condição
% Exemplo: fdParobj = fdPar(fdobj, Lfdobj, lambda);
fdPar_CTL_tr = fdPar(fdobj, Lfdobj, lambda);

% Criar objeto fd vazio
coef = zeros(nbasis, size(CCDM2tt2, 1));
fdobj = fd(coef, time_basis_CTL_tt);
% Crie objetos fdPar para cada grupo e condição
% Exemplo: fdParobj = fdPar(fdobj, Lfdobj, lambda)
fdPar_CTL_tt = fdPar(fdobj, Lfdobj, lambda);

% Criar objeto fd vazio
coef = zeros(nbasis, size(MCDMtr2, 1));
fdobj = fd(coef, time_basis_MUS_tr);
% Crie objetos fdPar para cada grupo e condição
% Exemplo: fdParobj = fdPar(fdobj, Lfdobj, lambda)
fdPar_MUS_tr = fdPar(fdobj,Lfdobj, lambda);

% Criar objeto fd vazio
coef = zeros(nbasis, size(MCDMtt2, 1));
fdobj = fd(coef, time_basis_MUS_tt);
% Crie objetos fdPar para cada grupo e condição
% Exemplo: fdParobj = fdPar(fdobj, Lfdobj, lambda)
fdPar_MUS_tt = fdPar(fdobj,Lfdobj, lambda);

% Criar objeto fd vazio
coef = zeros(nbasis, size(MCDM2tr2, 1));
fdobj = fd(coef, time_basis_MUS2_tr);
% Crie objetos fdPar para cada grupo e condição
% Exemplo: fdParobj = fdPar(fdobj, Lfdobj, lambda)
fdPar_MUS2_tr = fdPar(fdobj,Lfdobj, lambda);

% Criar objeto fd vazio
coef = zeros(nbasis, size(MCDM2tt2, 1));
fdobj = fd(coef, time_basis_MUS2_tt);
% Crie objetos fdPar para cada grupo e condição
% Exemplo: fdParobj = fdPar(fdobj, Lfdobj, lambda)
fdPar_MUS2_tt = fdPar(fdobj,Lfdobj, lambda);

% Criar objeto fd vazio
coef = zeros(nbasis, size(MCDM3tr2, 1));
fdobj = fd(coef, time_basis_MUS3_tr);
% Crie objetos fdPar para cada grupo e condição
% Exemplo: fdParobj = fdPar(fdobj, Lfdobj, lambda)
fdPar_MUS3_tr = fdPar(fdobj,Lfdobj, lambda);

% Criar objeto fd vazio
coef = zeros(nbasis, size(MCDM3tt2, 1));
fdobj = fd(coef, time_basis_MUS3_tt);
% Crie objetos fdPar para cada grupo e condição
% Exemplo: fdParobj = fdPar(fdobj, Lfdobj, lambda)
fdPar_MUS3_tt = fdPar(fdobj,Lfdobj, lambda);

% Converta seus dados em objetos fd e suavize
t_points_CTL_tr = linspace(t_range_CTL_tr(1), t_range_CTL_tr(2), size(CCDM2tr2, 2));
t_points_CTL_tt = linspace(t_range_CTL_tt(1), t_range_CTL_tt(2), size(CCDM2tt2, 2));
t_points_MUS_tr = linspace(t_range_MUS_tr(1), t_range_MUS_tr(2), size(MCDMtr2, 2));
t_points_MUS_tt = linspace(t_range_MUS_tt(1), t_range_MUS_tt(2), size(MCDMtt2, 2));
t_points_MUS2_tr = linspace(t_range_MUS2_tr(1), t_range_MUS2_tr(2), size(MCDM2tr2, 2));
t_points_MUS2_tt = linspace(t_range_MUS2_tt(1), t_range_MUS2_tt(2), size(MCDM2tt2, 2));
t_points_MUS3_tr = linspace(t_range_MUS3_tr(1), t_range_MUS3_tr(2), size(MCDM3tr2, 2));
t_points_MUS3_tt = linspace(t_range_MUS3_tt(1), t_range_MUS3_tt(2), size(MCDM3tt2, 2));

%smooth_data = smooth_basis(t, Y', fdParobj);
smooth_data_CTL_tr = smooth_basis(t_points_CTL_tr, CCDM2tr2', fdPar_CTL_tr);
smooth_data_CTL_tt = smooth_basis(t_points_CTL_tt, CCDM2tt2', fdPar_CTL_tt);
smooth_data_MUS_tr = smooth_basis(t_points_MUS_tr, MCDMtr2', fdPar_MUS_tr);
smooth_data_MUS_tt = smooth_basis(t_points_MUS_tt, MCDMtt2', fdPar_MUS_tt);
smooth_data_MUS2_tr = smooth_basis(t_points_MUS2_tr, MCDM2tr2', fdPar_MUS2_tr);
smooth_data_MUS2_tt = smooth_basis(t_points_MUS2_tt, MCDM2tt2', fdPar_MUS2_tt);
smooth_data_MUS3_tr = smooth_basis(t_points_MUS3_tr, MCDM3tr2', fdPar_MUS3_tr);
smooth_data_MUS3_tt = smooth_basis(t_points_MUS3_tt, MCDM3tt2', fdPar_MUS3_tt);

% Realize a análise de componentes principais (PCA)
FPCA_CCDMtr_results = pca_fd(smooth_data_CTL_tr, nharm);
FPCA_CCDMtt_results = pca_fd(smooth_data_CTL_tt, nharm);
FPCA_MCDMtr_results = pca_fd(smooth_data_MUS_tr, nharm);
FPCA_MCDMtt_results = pca_fd(smooth_data_MUS_tt, nharm);
FPCA_MCDM2tr_results = pca_fd(smooth_data_MUS2_tr, nharm);
FPCA_MCDM2tt_results = pca_fd(smooth_data_MUS2_tt, nharm);
FPCA_MCDM3tr_results = pca_fd(smooth_data_MUS3_tr, nharm);
FPCA_MCDM3tt_results = pca_fd(smooth_data_MUS3_tt, nharm);
%% Visualize os componentes principais dos dados CTL_tr
clc
clf

% Plotar escores da PCA
plot_pca_scores(FPCA_CCDMtr_results, 'CTL treino');
plot_pca_scores(FPCA_CCDMtt_results, 'CTL teste');
plot_pca_scores(FPCA_MCDMtr_results, 'MUS treino');
plot_pca_scores(FPCA_MCDMtt_results, 'MUS teste');

% Plotar harmônicos da PCA
plot_pca_harmonics(FPCA_CCDMtr_results, 'CTL treino');
plot_pca_harmonics(FPCA_CCDMtt_results, 'CTL teste');
plot_pca_harmonics(FPCA_MCDMtr_results, 'MUS treino');
plot_pca_harmonics(FPCA_MCDMtt_results, 'MUS teste');
plot_pca_harmonics(FPCA_MCDM2tr_results, 'MUS treino');
plot_pca_harmonics(FPCA_MCDM2tt_results, 'MUS teste');
plot_pca_harmonics(FPCA_MCDM3tr_results, 'MUS treino');
plot_pca_harmonics(FPCA_MCDM3tt_results, 'MUS teste');


% Plotar padrões de frequência
plot_frequency_patterns(FPCA_CCDMtr_results, 'CTL treino');
plot_frequency_patterns(FPCA_CCDMtt_results, 'CTL teste');
plot_frequency_patterns(FPCA_MCDM2tr_results, 'MUS treino');
plot_frequency_patterns(FPCA_MCDM2tt_results, 'MUS teste');

% Plotar dados brutos suavizados
plot_smoothed_data(smooth_data_CTL_tr, 'CTL treino');
plot_smoothed_data(smooth_data_CTL_tt, 'CTL teste');
plot_smoothed_data(smooth_data_MUS_tr, 'MUS treino');
plot_smoothed_data(smooth_data_MUS_tt, 'MUS teste');

% Plotar harmônicos da PCA
plot_harmonics(FPCA_CCDMtr_results, 'CTL treino');
plot_harmonics(FPCA_CCDMtt_results, 'CTL teste');
plot_harmonics(FPCA_MCDMtr_results, 'MUS treino');
plot_harmonics(FPCA_MCDM3tt_results, 'MUS teste');

%% Plotar resumo da PCA
plot_pca_summary(FPCA_CCDMtr_results, nharm);
plot_pca_summary(FPCA_CCDMtt_results, nharm);
plot_pca_summary(FPCA_MCDMtr_results, nharm);
plot_pca_summary(FPCA_MCDMtt_results, nharm);
plot_pca_summary(FPCA_MCDM2tr_results, nharm);
plot_pca_summary(FPCA_MCDM2tt_results, nharm);
plot_pca_summary(FPCA_MCDM3tr_results, nharm);
plot_pca_summary(FPCA_MCDM3tt_results, nharm);

%% Esta função irá sobrepor as médias, valores próprios e autofunções de cada conjunto de resultados da PCA nos respectivos gráficos, com legendas para distinguir cada conjunto de resultados.

% Lista de resultados da PCA para treino
pca_results_list_train = {FPCA_CCDMtr_results, FPCA_MCDMtr_results, ...
                          FPCA_MCDM2tr_results, FPCA_MCDM3tr_results};
labels_train = {'CCDM treino', 'MCDM treino', 'MCDM2 treino', 'MCDM3 treino'};

% Lista de resultados da PCA para teste
pca_results_list_test = {FPCA_CCDMtt_results, FPCA_MCDMtt_results, ...
                          FPCA_MCDM2tt_results, FPCA_MCDM3tt_results};
labels_test = {'CCDM teste', 'MCDM teste', 'MCDM2 teste', 'MCDM3 teste'};

% Chamar a função para cada lista
plot_pca_summary_overlay(pca_results_list_train, nharm, labels_train);
plot_pca_summary_overlay(pca_results_list_test, nharm, labels_test);

%%
clc
% Adicionar pacote de estatísticas e aprendizado de máquina
addpath(fullfile(matlabroot, 'toolbox', 'stats'));

% Selecionar os escores da primeira autofunção
scores_CCDMtr = FPCA_CCDMtr_results.harmscr(:, 2);
scores_CCDMtt = FPCA_CCDMtt_results.harmscr(:, 2);
scores_MCDMtr = FPCA_MCDMtr_results.harmscr(:, 2);
scores_MCDMtt = FPCA_MCDMtt_results.harmscr(:, 2);

% Concatenar os escores
scores_all = [scores_CCDMtr; scores_CCDMtt; scores_MCDMtr; scores_MCDMtt];

% Criar vetores de fatores
group_factor = [ones(size(scores_CCDMtr)); ones(size(scores_CCDMtt)); 2 * ones(size(scores_MCDMtr)); 2 * ones(size(scores_MCDMtt))];
condition_factor = [ones(size(scores_CCDMtr)); 2 * ones(size(scores_CCDMtt)); ones(size(scores_MCDMtr)); 2 * ones(size(scores_MCDMtt))];

% Criar tabela de dados
data_table = table(scores_all, categorical(group_factor), categorical(condition_factor), 'VariableNames', {'Scores', 'Group', 'Condition'});

% Ajustar o modelo GLM
glm_model = fitglm(data_table, 'Scores ~ Group', 'Distribution', 'normal', 'Link', 'identity');

% Exibir os resultados do modelo GLM
disp(glm_model);


    