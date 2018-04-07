#设置模型
glm(DV ~ IV1+ IV2, data = 数据集， family = binominal)

#predict  response 给出可能性
predict(model, type = "response")


#看哪个值高，哪一部分就predict的更准确
tapply(prediction, qualityTrain$Poorcare, mean)

#输出 confusion matrix
table(DV, predictmodel > threshold)

#生成 DOC curve

ROCRpred = prediction(predict_train, quality_train$PoorCare)
ROCRperf = performance(ROCRpred, "tpr", "fpr")
#Rocpref是通过predict得到的model， seq(0, 1, 0.1) 0 为下限， 1为上限， 0.1为频率。  
plot(ROCRperf, colorize = TRUE, print.cutoffs.at=seq(0, 1, 0.1), text.adj = c(-0.2, 1.7))
