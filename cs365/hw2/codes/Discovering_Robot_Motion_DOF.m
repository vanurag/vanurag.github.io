close all;
clear all;
option = 1;      % Option:1 - Isomap on 200 images of nao
                 % Option:2 - Isomap on 500 random images of 2 arm robots
                 % Option:2 - Isomap on 200 images of 2 arm robots holding a box
                 
switch option
    case 1
        [data, names] = loadImageData('nao200', 'jpg');
        data_double = cast(data, 'double');
        d = tangent_d(data_double,data_double);
    case 2
        [data, names] = loadImageData('box_random', 'jpg');
        data_double = cast(data, 'double');
        d = tangent_d(data_double,data_double);
    case 3
        [data, names] = loadImageData('box1', 'jpg');
        data_double = cast(data, 'double');
        d = L2_distance(data_double,data_double);
end


%%
options.dims = 1:10;
[Y, R, E] = Isomap(d, 'k', 7, options);
x_lim1 = xlim;
y_lim1 = ylim;
hold
s = size(Y.index);
for i=1:s(2)
    if rem(i,5)==0
        x_len = x_lim1(2) - x_lim1(1);
        y_len = y_lim1(2) - y_lim1(1);
        imagesc([Y.coords{2,1}(1,i),Y.coords{2,1}(1,i)+(x_len/20)],[Y.coords{2,1}(2,i),Y.coords{2,1}(2,i)-(y_len/12)],reshape(data(:,i),100,100,3))
%         text(Y.coords{2,1}(1,i)+(x_len/500),Y.coords{2,1}(2,i)+(y_len/500),sprintf('%.0f', Y.index(i)),'FontSize',5);
    end
end
hold off