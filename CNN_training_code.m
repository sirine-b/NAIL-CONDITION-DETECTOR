nailimg = imageDatastore("Nail\","IncludeSubfolders",true,"LabelSource","foldernames");

[trainImgs,testImgs] = splitEachLabel(nailimg,0.6,'randomized');
auds = augmentedImageDatastore([224 224], trainImgs,"ColorPreprocessing","gray2rgb")

numClasses = numel(categories(trainImgs.Labels))

net = googlenet;
lgraph = layerGraph(net)

newFc = fullyConnectedLayer(4,"Name","new_fc")
lgraph = replaceLayer(lgraph,"loss3-classifier",newFc)
newOut = classificationLayer("Name","new_out")
lgraph = replaceLayer(lgraph,"output",newOut)


options = trainingOptions("sgdm","InitialLearnRate", 0.01, "Plots", "training-progress");

[nailnet,info] = trainNetwork(auds, lgraph, options);

testpreds = classify(nailnet,auds)

confusionchart(trainImgs.Labels,testpreds)