close all;
clear all;
Digit = 1;                     % Isomap of Digit is displayed
option = 1;                    % Option:1 - tangent distance is used to generate Isomap
                               % Option:2 - Euclidean distance is used.
[data, labels] = loadDigits(2000, 'train');
%%
index = find(labels~=Digit);
data(:,index) = [];
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
x_lim1 = xlim;
y_lim1 = ylim;
hold on
colormap(gray)
s = size(index);
for i=1:(2000-s(2))
    if rem(i,7)==0
        x_len = x_lim1(2) - x_lim1(1);
        y_len = y_lim1(2) - y_lim1(1);
        imagesc([Y.coords{2,1}(1,i),Y.coords{2,1}(1,i)+(x_len/40)],[Y.coords{2,1}(2,i),Y.coords{2,1}(2,i)-(y_len/24)],reshape(data(:,i),28,28)')
    end
end
title('Isomap of single digit')
hold off