# normalized-differential-correlation-NDC-
To highlight nonlinear expressed genes efficiently



[NDC_score,ordered_index,threshold_mic]=NDC_index(data,num_ndc);
1) NDC_score is the NDC score of each feature;
2) ordered_index is the importance ranking for each feature in descending order;
3) For tne data, row represents observation, column represents gene;
   Before using the NDC_index, the order of samples should be scramble：
4) num_ndc is the threshold of nonlinear relationship, must less than the number of features;

