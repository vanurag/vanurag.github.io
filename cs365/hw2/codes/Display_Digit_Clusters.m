close all;
clear all;
Digits = [1,7];% Enter the digits whose clusters are to be shown
option = 2;                    % Option:1 - tangent distance is used to generate Isomap
                               % Option:2 - Euclidean distance is used.
[data, labels] = loadDigits(2000, 'train');
%%
sustain = labels==10;
for i=1:size(Digits,2)
    sustain =  sustain | (labels==Digits(i));
end
%%
data = data(:,sustain);
labels = labels(:,sustain);
%%
switch option
    case 1
        d = tangent_d(data,data);
    case 2
        d = L2_distance(data,data);
end
%%
options.dims = 1:10;
[Y, R, E] = Isomap(d, 'k', 7, options);

%%
Markerstyle = ['.','x','*','<','s','d','^','h','>','p'];
Colors = ['b','r','g','m','m','k','b','c','y','k'];
xcoords = Y.coords{2,1}(1,:);ycoords = Y.coords{2,1}(2,:);
figure;
hold on;
for i=1:size(Digits,2)
    index = find(labels~=Digits(i));
    xcoords(:,index) = [];ycoords(:,index) = [];
    plot(xcoords, ycoords, Markerstyle(i),'MarkerSize',5,'MarkerEdgeColor',Colors(i),...
        'DisplayName',int2str(Digits(i)));
    legend('-DynamicLegend');
    hold all;
    xcoords = Y.coords{2,1}(1,:);ycoords = Y.coords{2,1}(2,:);
end
title('Clusters of various digits in a 2D Isomap of 2000 handwritten numbers')
hold off;
