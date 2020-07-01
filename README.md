# normalized-differential-correlation-NDC-
To highlight nonlinear expressed genes efficiently
## 1） MATLAB is the tool of NDC;
## 2) The Chi-MIC should be installed:https://github.com/chenyuan0510/Chi-MIC

## 3) usage
    [NDC_score,ordered_index,threshold_mic]=NDC_index(data,num_ndc);
1) NDC_score is the NDC score of each feature;
2) ordered_index is the importance ranking for each feature in descending order;
3) For tne data, row represents observation, column represents gene;
   Before using the NDC_index, the order of samples should be scramble：
      ```
      num=randperm(size(data,1));
      data=data(num',:);
      ```
4) num_ndc is the threshold of nonlinear relationship, must less than the number of features;


Source: 
Qifei Wang , Haojian Zhang, Yuqing Liang, Heling Jiang, Siqiao Tan, Feng Luo, Zheming Yuan, Yuan Chen*. [A novel method to efficiently highlight nonlinearly expressed genes.](https://www.frontiersin.org/articles/10.3389/fgene.2019.01410/full) Frontiers in Genetics, 2019, 10.  
 Contact me: chenyuan0510@126.com

