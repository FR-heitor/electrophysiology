% Carregar a toolbox
addpath('G:\Meu Drive\Projeto Lagartos\2022\fda\fdasrvf_MATLAB-master');  % Substitua pelo caminho real da pasta 'fdasrvf_MATLAB-master'
addpath('G:\Meu Drive\Projeto Lagartos\2022\FDAfuns');  % Substitua pelo caminho real da pasta 'fdasrvf_MATLAB-master'

% Dados
Y = MCL3tt1(1:5,:); % Seus dados
fs = 600;
dt = 1/fs;
t =  dt:dt:size(Y, 2)/fs;

% Configurar a base B-spline
nBasis = 200; % Ajuste este valor com base na complexidade dos dados
order = 4;
t_range = [min(t), max(t)];
basis = create_bspline_basis(t_range, nBasis, order);

% Criar objeto fd vazio
coef = zeros(nBasis, size(Y, 1));
fdobj = fd(coef, basis);

% Suavização e conversão para objeto funcional
lambda = 1e-6; % Parâmetro de regularização para suavização
Lfdobj = int2Lfd(2);
fdParobj = fdPar(fdobj, Lfdobj, lambda);
smooth_data = smooth_basis(t, Y', fdParobj);

% FPCA
nharm = 3; % número de harmônicos para extrair
pca_results8 = pca_fd(smooth_data, nharm);


% Plotar a média, variância e autofunções
figure;
subplot(2, 2, 1);
plot(t, eval_fd(t, pca_results8.meanfd));
title('Média');
xlabel('Tempo');
ylabel('Valor');

subplot(2, 2, 2);
plot(pca_results8.values);
title('Valores próprios');
xlabel('Número da componente principal');
ylabel('Valor próprio');
xlim ([1 4]);

for i = 1:nharm
    subplot(2, 2, i + 2);
    plot(t, eval_fd(t, pca_results8.harmfd(i)));
    title(['Autofunção ' num2str(i)]);
    xlim ([10 590]);
    ylim ([-5e-1 5e-1]);
    xlabel('Tempo');
    ylabel('Valor');
end
