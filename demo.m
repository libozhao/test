clear all;
addpath(genpath('external/gbvs'));
run('external/vlfeat-0.9.16/toolbox/vl_setup');


load('codebook.mat');
load('corrMat.mat');
tic
for i=1001
    img = imread(['C:\Users\mrx\Desktop\实验数据库\MSRA\MSRA10K\',num2str(i),'.jpg']);
    salMap=genSalMap(img,corr,codebook);
    imwrite(salMap,['C:\Users\mrx\Desktop\实验数据库\MSRA\MSRA各方法显著图\MSRA10K_RW',num2str(i),'.jpg']);
i
end
toc

