function [NDC_score,ordered_index,threshold_mic]=NDC_index(data,num_ndc)
% [NDC_score,ordered_index,threshold_mic]=NDC_index(data,num_ndc)
% num_ndc must less than the number of features
if nargin<2
    num_ndc=1000;
    if num_ndc >= size(data,2)-1
        num_ndc=floor((size(data,2)-1)/4);
    end
end
MIC=nan(size(data,2)-1,1);
for i=1:size(data,2)-1
    [MIC(i),~]=MIC_OIC_chi_1_1_class(data(:,[1,i+1]),0.6,5);
    %         fprintf('finished MIC %d \n',i);
end
%     [~,myMIC_index{j}]=sort(MIC(:,j),'descend');
disp('MIC calculation has been completed');
%  NDC
MICrand=nan(1000,1);
for i=1:1000
    temy=[data(:,1),rand(size(data,1),1)];
    [MICrand(i,1),~]=MIC_OIC_chi_1_1_class(temy,0.6,5);
end
threshold=mean(MICrand)+1.96*std(MICrand);
threshold_mic=threshold;
disp('Threshold of MIC calculation has been completed');
NDC_score=nan(size(data,2)-1,1);
for j=1:size(data,2)-1
    temr=corrcoef(data(:,1),data(:,j+1));
    NDC_score(j)=(MIC(j)-threshold-temr(1,2)^2)/abs(temr(1,2));
end
[~,pos_ndc]=sort(NDC_score(:,i),'descend');
temmic=MIC(pos_ndc(1:num_ndc),i);
[~,pos_mic]=sort(temmic,'descend');
ordered_index=pos_ndc(pos_mic);
end