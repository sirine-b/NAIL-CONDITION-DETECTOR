load lgraph;
load nailnet;
inputSize = lgraph.Layers(1).InputSize;
[file,path]=uigetfile('*.jpg')
img2=imread(fullfile(path, file));
pause(5)
newimg2 = imresize(img2,inputSize(1:2));
[CName2, scores2]=classify(nailnet,newimg2);
sprintf('Your nail condition is : %s', CName2) 
figure(2)
bar(scores2);
xticklabels({'Beaus Line','Normal','Onycholysis', 'Terrys Nail'});
NET.addAssembly('System.Speech');
speechObj = System.Speech.Synthesis.SpeechSynthesizer;
speechObj.Volume = 100;
Speak(speechObj, 'Your nail condition is')
Speak(speechObj, string(CName2(1)))