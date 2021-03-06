data=read.csv("/path/to/SnakeCLEF2022-TrainMetadata.csv")
datatest=read.csv("/path/to/SnakeCLEF2022-TestMetadata.csv")
dataRed=data[colnames(data)%in%colnames(datatest)]
dataGes=rbind(dataRed,datatest)
dataSubmission=read.csv("/path/to/SnakeCLEF2022-SampleSubmission.csv")

dataWFilePath=data[,(colnames(data)!="file_path")]
datasetTrainObservations=unique(dataWFilePath)

res=table(data$class_id,data$country)
V <- table(data$class_id,data$country)
nrow(V)
ncol(V)
V=t(V)
Vpreproc=V/rowSums(V)
Vpreprocbin=1*(Vpreproc>0)
write.csv(Vpreproc,"/path/to/save/CountrySnakeDistributionTrain.csv")
write.csv(Vpreprocbin,"/path/to/save/CountrySnakeDistributionTrainBin.csv")

res=table(datasetTrainObservations$class_id,datasetTrainObservations$country)
V <- table(datasetTrainObservations$class_id,datasetTrainObservations$country)
nrow(V)
ncol(V)
V=t(V)
Vpreproc=V/rowSums(V)
Vpreprocbin=1*(Vpreproc>0)
write.csv(Vpreproc,"/path/to/save/CountrySnakeDistributionTrainObservationLevel.csv")
write.csv(Vpreprocbin,"/path/to/save/CountrySnakeDistributionTrainObservationLevelBin.csv")

res=table(data$class_id,data$endemic)
V <- table(data$class_id,data$endemic)
V=t(V)
Vpreproc=V/rowSums(V)
Vpreprocbin=1*(Vpreproc>0)
write.csv(Vpreproc,"/path/to/save/EndemicSnakeDistributionTrain.csv")
write.csv(Vpreprocbin,"/path/to/save/EndemicSnakeDistributionTrainBin.csv")


res=table(datasetTrainObservations$class_id,datasetTrainObservations$endemic)
V <- table(datasetTrainObservations$class_id,datasetTrainObservations$endemic)
V=t(V)
Vpreproc=V/rowSums(V)
Vpreprocbin=1*(Vpreproc>0)
write.csv(Vpreproc,"/path/to/save/EndemicSnakeDistributionTrainObservationLevel.csv")
write.csv(Vpreprocbin,"/path/to/save/EndemicSnakeDistributionTrainObservationLevelBin.csv")


res=table(data$class_id,data$code)
V <- table(data$class_id,data$code)
V=t(V)
Vpreproc=V/rowSums(V)
Vpreprocbin=1*(Vpreproc>0)
write.csv(Vpreproc,"/path/to/save/CodeSnakeDistributionTrain.csv")
write.csv(Vpreprocbin,"/path/to/save/CodeSnakeDistributionTrainBin.csv")

res=table(datasetTrainObservations$class_id,datasetTrainObservations$code)
V <- table(datasetTrainObservations$class_id,datasetTrainObservations$code)
V=t(V)
Vpreproc=V/rowSums(V)
Vpreprocbin=1*(Vpreproc>0)
write.csv(Vpreproc,"/path/to/save/CodeSnakeDistributionTrainObservationLevel.csv")
write.csv(Vpreprocbin,"/path/to/save/CodeSnakeDistributionTrainObservationLevelBin.csv")
