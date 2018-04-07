#建模型公式
lm(DV ~ IV1 + IV2 + IV3, data = 导入数据集)

#anova 分析
anova()
gaping
#predict
model_predict = predict(model, newdata = 数据集)

#如何检测predict？ 
#先算出sse（(prediction - real data set)^2）
#再算sst ((mean - real data set)^2)
#算R2  1- sse/sst

#RMSE (root mean squared error)  sqrt(SSE/total # of data points)
