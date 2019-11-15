function MeanColorInEpi=LgetMeanColorInEpiArea(IM,maskConfLHR)
GC=IM(:,:,2);
Twhitecolor=195;
mask=GC<Twhitecolor&maskConfLHR;
MeanColorInEpi=mean(GC(mask));