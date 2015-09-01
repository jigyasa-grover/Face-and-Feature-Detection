% ** Detecting facial objects using Viola-Jones Algorithm **

% Reading the input image
I = imread('Friends.jpg');

% Detecting Face
FaceDetect = vision.CascadeObjectDetector;

%Returning Bounding Box values based on number of objects
BoundBox = step(FaceDetect,I);

figure,
imshow(I); 
hold on

for i = 1:size(BoundBox,1)
    rectangle('Position',BoundBox(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','y');
end
title('Face Detection');
hold off;

% Detecting Nose
NoseDetect = vision.CascadeObjectDetector('Nose','MergeThreshold',16);

BoundBox=step(NoseDetect,I);

figure,
imshow(I); 
hold on

for i = 1:size(BoundBox,1)
    rectangle('Position',BoundBox(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','y');
end
title('Nose Detection');
hold off;


% Detecting Mouth
MouthDetect = vision.CascadeObjectDetector('Mouth','MergeThreshold',16);

BoundBox=step(MouthDetect,I);

figure,
imshow(I); 
hold on

for i = 1:size(BoundBox,1)
 rectangle('Position',BoundBox(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','y');
end
title('Mouth Detection');
hold off;

% Detecting Eyes
EyeDetect = vision.CascadeObjectDetector('EyePairBig');
BoundBox=step(EyeDetect,I);

figure,imshow(I);

rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor','y');

title('Eyes Detection');

Eyes=imcrop(I,BoundBox);

figure,imshow(Eyes);


