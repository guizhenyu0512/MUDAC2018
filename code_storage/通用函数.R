
# 以下library是我需要的所有library
library(effects)
library(car)
library(alr4)
library(caTools)
library(ROCR)

#这是设定工作区的函数
set wd ("工作地址")

#导入CSV类型数据
read.csv("导入csv类型数据")

#查看数据结构
str(数据集)

#查看总结
summary(模型)

## 数据操作类 ##

#计算和
sum(variable1)

#计算correlation
cor(variable1, variable2)

#表格列出频度, variable1 为列， variable2 为行
table(variable1, variable2)

#将variable 按比例分出true， 其他为false
sample.split(outcome variable, % in trainingset)

#取subset, 第二处还可用上面的函数。 var = sample.split(```), var = true
subset(data, variable < n )
