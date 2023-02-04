load lgraph;
load nailnet;

inputSize = lgraph.Layers(1).InputSize;
vidObj = videoinput('winvideo'); 
preview(vidObj); 
pause(5); 
figure(2)
img1 = getsnapshot(vidObj);
pause(5);
img1 = ycbcr2rgb(img1);
imshow(img1);
newimg1 = imresize(img1,inputSize(1:2));

[CName1, scores1] = classify(nailnet,newimg1);
sprintf('Your nail condition is : %s', CName1)
figure(2)
bar(scores1);
xticklabels({'Beaus Line','Normal','Onycholysis', 'Terrys Nail'});
imshow(img1);
title(['Detected Object: ' CName1])
drawnow;
stoppreview(vidObj);
delete(vidObj);
NET.addAssembly('System.Speech');
speechObj = System.Speech.Synthesis.SpeechSynthesizer;
speechObj.Volume = 100;
Speak(speechObj, 'You nail condition is')
Speak(speechObj, string(CName1(1)))
clear('cam')