clear all;
clc;
close all;

fileID = fopen('levenberg.txt','r');
formatSpec = '%f %f';
sizeA = [2 Inf];
A=fscanf(fileID, formatSpec, sizeA);
fclose(fileID);
A=A';

init_trajectory=A(1:95,:);
init_landmarks=A(96:119,:);
final_trajectory=A(120:214,:);
final_landmarks=A(215:238,:);

figure;
plot(init_trajectory(:,1),init_trajectory(:,2));
hold on
plot(final_landmarks(:,1),final_landmarks(:,2),'+');
plot(final_trajectory(:,1),final_trajectory(:,2));
plot(init_landmarks(:,1),init_landmarks(:,2),'+');


xlabel('x-axis');

ylabel('y-axis');

title('Levenberg');

legend('Given Path','Estimated landmarks','Estimated Path','Given Landmarks');

hold off
