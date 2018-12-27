
% Load the trained model 
net = vgg19()

% See details of the architecture 
net.Layers

% Read the image to classify 
I = imread('car.jpg');

% Adjust size of the image 
sz = net.Layers(1).InputSize 
I = I(1:sz(1),1:sz(2),1:sz(3));

% Classify the image using VGG-19 
label = classify(net, I);

% Show the image and the classification results 
figure; 
imshow(I) 
text(10, 20, char(label),'Color','black')