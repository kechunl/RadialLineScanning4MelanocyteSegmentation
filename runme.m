% addpath(genpath('C:\Nutstore\Nutstore\PathImAnalysis_Program\Program\RaidalLines\'));
% addpath(genpath('C:\Nutstore\Nutstore\PathImAnalysis_Program\Program\Miscellaneous\'));% for other dependencies

im = imread('/Users/kechun/Melonoma/nuclei_detect/data/image21/image21.png');
maskConfLHR = ones(size(im,1),size(im,2));
bw_nuclei = imread('/Users/kechun/Melonoma/nuclei_detect/data/image21/index_map.png');%your nuclei mask here, binary map
nuclei2plot = 170;
TAreaRatio = .2; % the ratio between the white region and the nuclei region
TsmalNucleiArea = 60;% the threshold for small nuclei, unit in pixel
debug = 1; %show the imtermediate step or not
bwM = LDetectMelanocytes_RLS(im,maskConfLHR,bw_nuclei,TAreaRatio,TsmalNucleiArea,nuclei2plot,debug);
saveas(gcf,['/Users/kechun/Melonoma/nuclei_detect/data/image21/result.png']);
