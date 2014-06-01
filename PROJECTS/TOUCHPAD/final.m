import java.awt.Robot;
import java.awt.event.*;
mouse=Robot;
screenSize = get(0, 'screensize');
on=1;
curr=[0 0];
diff=[0 0];
prev=[0 0];
combo=[0 0];
prev1=0;
origin=[0 0];
A1=0;
A2=0;
count=0;
X_whole=zeros(1,50);
Y_whole=zeros(1,50);
p1=1;
P=zeros(1,50);
s1=size(X_whole);
pattern=0;
fid=fopen('data.txt','r');
fseek(fid,0,-1);

while on==1
    count=count+1;
    S = fscanf(fid,'%c',1);
    if isempty(S)==0
        A1=S-96;
        if A1>0
            if pattern==0
                if count>3
                    origin(1,1)=20*(A1-1);
                    diff(1,1)=curr(1,1)-origin(1,1);
                else
                    if ((20*(A1-1)+diff(1,1)>=0)&&(20*(A1-1)+diff(1,1)<=screenSize(3)))
                        curr(1,1)=20*(A1-1)+diff(1,1);
                    end
                end
            else
                X_whole(p1)=A1;
            end
            
            S=fscanf(fid,'%c',1);
            if isempty(S)==0
                A2=S-96;
                if pattern==0;
                    if count>3
                        origin(1,2)=20*(A2-1);
                        diff(1,2)=curr(1,2)-origin(1,2);
                    else
                        if ((20*(A2-1)+diff(1,2)>=0)&&(20*(A2-1)+diff(1,2)<=screenSize(4)))
                            curr(1,2)=20*(A2-1)+diff(1,2);
                        end
                    end
                    count=0;
                    
                    %moving mouse
                    
                    for i=0:1000
                        combo(1,1)=(i*curr(1,1)+(1000-i)*prev(1,1))/1000;
                        combo(1,2)=(i*curr(1,2)+(1000-i)*prev(1,2))/1000;
                        mouse.mouseMove(combo(1,1),combo(1,2));
                    end          
                    prev=curr;
                    
                else
                    Y_whole(p1)=A2;
                    p1=p1+1;
                    if p1==51
                        pattern=0;
                    end
                end
            else
                fseek(fid,-1,0);
            end
        elseif A1==-31
            prev1=-31;
            mouse.mousePress(InputEvent.BUTTON1_MASK);
            mouse.mouseRelease(InputEvent.BUTTON1_MASK);
%             pause(0.5);
        elseif ((prev1==-31)&&(A1==-30))
            pattern=1;
            prev1=0;
        elseif A1==-29;
            mouse.mousePress(InputEvent.BUTTON1_MASK);
        elseif ((A1==-13)&&(pattern==0))
            mouse.mouseRelease(InputEvent.BUTTON1_MASK);
        elseif ((A1==-13)&&(pattern==1))
            pattern=0;
            for i=1:s1(1,2)-1
                if ((abs(X_whole(i)-X_whole(i+1))>2)&&(X_whole(i+1)~=0))
                    P(i)=i;
                end
                if ((abs(Y_whole(i)-Y_whole(i+1))>2)&&(Y_whole(i+1)~=0))
                    P(i)=i;
                end
            end
            parts=sum(P(:)~=0)+1;
            if parts==1
                X=X_whole;
                Y=Y_whole;
                X1=zeros(1,50);
                Y1=zeros(1,50);
            end
            if parts==2
                X=X_whole(1:sum(P));
                Y=Y_whole(1:sum(P));
                X1=X_whole(sum(P)+1:s1(1,2));
                Y1=Y_whole(sum(P)+1:s1(1,2));
            end
            
            if parts<3
            
                image=zeros(10,10);
                image1=zeros(10,10);
                size_x=size(X);
                size_x1=size(X1);
                for i=1:size_x(1,2)
                    image(10-Y(1,i),X(1,i)+1)=1;
                end
                for i=1:size_x1(1,2)
                    image1(10-Y1(1,i),X1(1,i)+1)=1;
                end
                
                se1_1=strel('arbitrary',[0 1 0;1 1 0;0 0 0]);
                se1_2=strel('arbitrary',[0 1 1;1 1 0;0 0 0]);
                se1_3=strel('arbitrary',[0 1 0;1 1 0;1 0 0]);
                se1_4=strel('arbitrary',[0 1 1;1 1 0;1 0 0]);
                se2=strel('arbitrary',[0 1;1 1;1 0]);
                se3=strel('arbitrary',[0 0;1 1;1 0]);
                se4=strel('arbitrary',[0 1;1 1;1 0]);
                se5=strel('arbitrary',[1 1 0;0 1 0]);
                se6=strel('arbitrary',[1 1 0;0 1 1]);
                se7=strel('arbitrary',[1 0;1 1;0 0]);
                se8=strel('arbitrary',[1 0;1 1;0 1]);
                clean1=imerode(image,se1_1);
                clean1_1=imerode(image1,se1_1);
                clean2=imerode(image,se2);
                clean2_1=imerode(image1,se2);
                clean3=imerode(image,se3);
                clean3_1=imerode(image1,se3);
                clean4=imerode(image,se4);
                clean4_1=imerode(image1,se4);
                clean5=imerode(image,se5);
                clean5_1=imerode(image1,se5);
                clean6=imerode(image,se6);
                clean6_1=imerode(image1,se6);
                clean7=imerode(image,se7);
                clean7_1=imerode(image1,se7);
                clean8=imerode(image,se8);
                clean8_1=imerode(image1,se8);
                clean9=imerode(image,se1_2);
                clean9_1=imerode(image1,se1_2);
                clean10=imerode(image,se1_3);
                clean10_1=imerode(image1,se1_3);
                clean11=imerode(image,se1_4);
                clean11_1=imerode(image1,se1_4);
                for i=1:10
                    for j=1:10
                        if ((clean1(i,j)==1)||(clean2(i,j)==1)||(clean3(i,j)==1)||(clean4(i,j)==1)||(clean5(i,j)==1)||(clean6(i,j)==1)||(clean7(i,j)==1)||(clean8(i,j)==1)||(clean9(i,j)==1)||(clean10(i,j)==1)||(clean11(i,j)==1))
                            image(i,j)=0;
                            for r=1:size_x(1,2)
                                if (X(1,r)==j-1)&&(Y(1,r)==10-i)
                                    X(1,r)=0;
                                    Y(1,r)=0;
                                end
                            end
                        end
                    end
                end

                for i=1:10
                    for j=1:10
                        if ((clean1_1(i,j)==1)||(clean2_1(i,j)==1)||(clean3_1(i,j)==1)||(clean4_1(i,j)==1)||(clean5_1(i,j)==1)||(clean6_1(i,j)==1)||(clean7_1(i,j)==1)||(clean8_1(i,j)==1)||(clean9_1(i,j)==1)||(clean10_1(i,j)==1)||(clean11_1(i,j)==1))
                            image1(i,j)=0;
                            for r=1:size_x1(1,2)
                                if (X1(1,r)==j-1)&&(Y1(1,r)==10-i)
                                    X1(1,r)=0;
                                    Y1(1,r)=0;
                                end
                            end
                        end
                    end
                end
                
                n=0;
                for i=1:size_x(1,2)
                    if X(i-n)==0
                        X(i-n)=[];
                        Y(i-n)=[];
                        n=n+1;
                    end
                end

                n1=0;
                for i=1:size_x1(1,2)
                    if X1(i-n1)==0
                        X1(i-n1)=[];
                        Y1(i-n1)=[];
                        n1=n1+1;
                    end
                end

                if ((isempty(X)==0)||(isempty(X1)==0))
                    line([0 0],[0 9],'Marker','none','LineStyle','-');
                    line([0 9],[9 9],'Marker','none','LineStyle','-');
                    line(X,Y,'Marker','none','LineStyle','-');
                    line(X1,Y1,'Marker','none','LineStyle','-');
                    saveas(gcf,'X.tiff', 'tiffn');
                    I=imread('X.tiff');
                    I=imcrop(I,[245 125 755 605]);
                    level=graythresh(I);
                    bw=im2bw(I,level);
                    bw=1-bw;
                    bw_intersection = bwmorph(bw,'branchpoints');
                    k=0;
                    int_ptx=zeros(1,50);
                    int_pty=zeros(1,50);
                    %%storing intersection points
                    for i=1:600,
                        for j=1:756,
                            if bw_intersection(i,j)==1,
                                k=k+1;
                                int_ptx(1,k)=i;
                                int_pty(1,k)=j;
                            end
                        end
                    end
                    %%considering farly spaced intersection points as being different
                    q=k;
                    while q>1,
                        for i=1:(q-1),
                            diff_x=int_ptx(1,i)-int_ptx(1,q);
                            diff_y=int_pty(1,i)-int_pty(1,q);
                            if ((diff_x<10)&&(diff_x>-10)&&(diff_y<10)&&(diff_y>-10)),
                                int_ptx(1,q)=0;
                                int_pty(1,q)=0;
                                k=k-1;
                                q=q-1;
                            end
                        end
                        if i==q-1
                            q=q-1;
                        end
                    end
                    no_of_int=k;
                    %%clearing the plot at intersection points
                    for p=1:50,
                        if int_ptx(1,p)~= 0,
                            for i=1:600,
                                for j=1:756,
                                    if ((i<int_ptx(1,p)+10)&&(i>int_ptx(1,p)-10)&&(j<int_pty(1,p)+10)&&(j>int_pty(1,p)-10)),
                                        bw(i,j)=0;
                                    end
                                end
                            end
                        end
                    end
                    CC=bwconncomp(bw);
                    [B,L]=bwboundaries(bw,'noholes');
                    imshow(label2rgb(L));
                    close all;

                    %%finding eccentricity of components
                    eccentricity=regionprops(L,'eccentricity');

                    %%finding slope of components
                    slope=regionprops(L,'orientation');

                    %%finding end points
                    ends=regionprops(L,'extrema');

                    %%converting structures to cells
                    ends_cell=struct2cell(ends);
                    eccentricity_cell=struct2cell(eccentricity);
                    slope_cell=struct2cell(slope);

                    %%finding number of lines
                    num_of_lines=0;
                    for i=1:CC.NumObjects(1,1),
                        if eccentricity_cell{1,i}(1,1)>0.95,
                            num_of_lines=num_of_lines+1;
                        end
                    end

                    %%calculating diff in slopes of various components

                    %if only 2 comp are present
                    if CC.NumObjects(1,1)==2,
                        diff_slope=slope_cell{1,1}(1,1)-slope_cell{1,2}(1,1);
                    end

                    %if only 4 comp are present


                    %%calculating diff in end points

                    %if only 2 comp are present
                    if CC.NumObjects(1,1)==2,
                        diff_x=ends_cell{1,1}(2,1)-ends_cell{1,2}(8,1);
                        diff_y=ends_cell{1,1}(2,2)-ends_cell{1,2}(8,2);
                    end

                    %finding maximum in X for direction of rotation
                    size_x=size(X);
                    max_x=1;
                    for i=2:size_x(2)
                        if X(i)>X(max_x)
                            max_x=i;
                        end
                    end

                    %%the final result
                    if ((no_of_int==0)&&(num_of_lines==1)&&(slope_cell{1,1}(1,1)>87)&&(eccentricity_cell{1,1}(1,1)>0.9)&&(Y(2)<Y(1))),
                        result='scroll down';
                        pause(2);
                        mouse.keyPress(KeyEvent.VK_PAGE_DOWN);
                        mouse.keyRelease(KeyEvent.VK_PAGE_DOWN);
                    elseif ((no_of_int==0)&&(num_of_lines==1)&&(slope_cell{1,1}(1,1)>87)&&(eccentricity_cell{1,1}(1,1)>0.9)&&(Y(2)>Y(1))),
                        result='scroll up';
                        pause(2);
                        mouse.keyPress(KeyEvent.VK_PAGE_UP);
                        mouse.keyRelease(KeyEvent.VK_PAGE_UP);
                    elseif ((no_of_int==0)&&(num_of_lines==1)&&(slope_cell{1,1}(1,1)<3)&&(eccentricity_cell{1,1}(1,1)>0.9)&&((ends_cell{1,1}(1,2)>479))),
                        result='window change';
                        pause(2);
                        mouse.keyPress(KeyEvent.VK_ALT);
                        mouse.keyPress(KeyEvent.VK_TAB);
                        mouse.keyRelease(KeyEvent.VK_TAB);
                        mouse.keyRelease(KeyEvent.VK_ALT);
                    elseif ((no_of_int==0)&&(num_of_lines==1)&&(slope_cell{1,1}(1,1)<3)&&(eccentricity_cell{1,1}(1,1)>0.9)&&(X(1)<X(2))&&((ends_cell{1,1}(1,2)<479))),
                        result='right';
                        pause(2);
                        mouse.keyPress(KeyEvent.VK_RIGHT);
                        mouse.keyRelease(KeyEvent.VK_RIGHT);
                    elseif ((no_of_int==0)&&(num_of_lines==1)&&(slope_cell{1,1}(1,1)<3)&&(eccentricity_cell{1,1}(1,1)>0.9)&&(X(1)>X(2))&&((ends_cell{1,1}(1,2)<479))),
                        result='left';
                        pause(2);
                        mouse.keyPress(KeyEvent.VK_LEFT);
                        mouse.keyRelease(KeyEvent.VK_LEFT);
                    elseif ((no_of_int==1)&&(num_of_lines==4)),
                        result='X';
                        pause(2);
                        mouse.keyPress(KeyEvent.VK_ALT);
                        mouse.keyPress(KeyEvent.VK_F4);
                        mouse.keyRelease(KeyEvent.VK_F4);
                        mouse.keyRelease(KeyEvent.VK_ALT);
                    elseif ((no_of_int==0)&&(eccentricity_cell{1,1}(1,1)<0.8)&&(max_x<size_x(2)/2)),
                        result='rotate_right';
                        pause(2);
                        mouse.keyPress(KeyEvent.VK_CONTROL);
                        mouse.keyPress(KeyEvent.VK_R);
                        mouse.keyRelease(KeyEvent.VK_R);
                        mouse.keyRelease(KeyEvent.VK_CONTROL);
                    elseif ((no_of_int==0)&&(eccentricity_cell{1,1}(1,1)<0.8)&&(max_x>size_x(2)/2)),
                        result='rotate_left'; 
                        pause(2);
                        mouse.keyPress(KeyEvent.VK_CONTROL);
                        mouse.keyPress(KeyEvent.VK_SHIFT);
                        mouse.keyPress(KeyEvent.VK_R);
                        mouse.keyRelease(KeyEvent.VK_R);
                        mouse.keyRelease(KeyEvent.VK_SHIFT);
                        mouse.keyRelease(KeyEvent.VK_CONTROL);
                    elseif ((no_of_int==0)&&(num_of_lines==2)&&(X(2)>X(1))),
                        result='zoom in';
                        pause(2);
                        mouse.keyPress(KeyEvent.VK_CONTROL);
                        mouse.keyPress(KeyEvent.VK_ADD);
                        mouse.keyRelease(KeyEvent.VK_ADD);
                        mouse.keyRelease(KeyEvent.VK_CONTROL);
                        mouse.keyPress(KeyEvent.VK_CONTROL);
                        mouse.keyPress(KeyEvent.VK_ADD);
                        mouse.keyRelease(KeyEvent.VK_ADD);
                        mouse.keyRelease(KeyEvent.VK_CONTROL);
                    elseif ((no_of_int==0)&&(num_of_lines==2)&&(X(2)<X(1))),
                        result='zoom out';
                        pause(1);
                        mouse.keyPress(KeyEvent.VK_CONTROL);
                        mouse.keyPress(KeyEvent.VK_SUBTRACT);
                        mouse.keyRelease(KeyEvent.VK_SUBTRACT);
                        mouse.keyRelease(KeyEvent.VK_CONTROL);
                        mouse.keyPress(KeyEvent.VK_CONTROL);
                        mouse.keyPress(KeyEvent.VK_SUBTRACT);
                        mouse.keyRelease(KeyEvent.VK_SUBTRACT);
                        mouse.keyRelease(KeyEvent.VK_CONTROL);
                    elseif ((no_of_int==0)&&(num_of_lines==2)&&(slope_cell{1,1}(1,1)>80)&&(slope_cell{1,2}(1,1)>80))
                        result='snapshot';
                        pause(1);
                        mouse.keyPress(KeyEvent.VK_PRINTSCREEN);
                        mouse.keyRelease(KeyEvent.VK_PRINTSCREEN);
                        mouse.mouseMove(18,800);
                        mouse.mousePress(InputEvent.BUTTON1_MASK);
                        mouse.mouseRelease(InputEvent.BUTTON1_MASK);
                        string=['P' 'A' 'I' 'N' 'T'];
                        ascii=string-0;
                        siz=size(ascii);
                        for i=1:siz(1,2)
                            mouse.keyPress(ascii(1,i));
                            mouse.keyRelease(ascii(1,i));
                        end
                        mouse.keyPress(KeyEvent.VK_ENTER);
                        mouse.keyRelease(KeyEvent.VK_ENTER);
                        pause(4);
                        mouse.keyPress(KeyEvent.VK_CONTROL);
                        mouse.keyPress(KeyEvent.VK_V);
                        mouse.keyRelease(KeyEvent.VK_V);
                        mouse.keyRelease(KeyEvent.VK_CONTROL);

                        mouse.keyPress(KeyEvent.VK_CONTROL);
                        mouse.keyPress(KeyEvent.VK_S);
                        mouse.keyRelease(KeyEvent.VK_S);
                        mouse.keyRelease(KeyEvent.VK_CONTROL);
                        pause(2);
                        mouse.keyPress(KeyEvent.VK_ENTER);
                        mouse.keyRelease(KeyEvent.VK_ENTER);
                        mouse.keyPress(KeyEvent.VK_LEFT);
                        mouse.keyRelease(KeyEvent.VK_LEFT);
                        mouse.keyPress(KeyEvent.VK_ENTER);
                        mouse.keyRelease(KeyEvent.VK_ENTER);
                        mouse.mouseMove(1230,5);
                        pause(3);
                        mouse.mousePress(InputEvent.BUTTON1_MASK);
                        mouse.mouseRelease(InputEvent.BUTTON1_MASK);
                    elseif ((num_of_lines==5)&&(no_of_int==3))
                        result='A';
                        mouse.keyPress(KeyEvent.VK_A);
                        mouse.keyRelease(KeyEvent.VK_A);                        
                    else
                        result='NO MATCH';
                    end
                    pause(1);
                end
            end
            X_whole=zeros(1,50);
            Y_whole=zeros(1,50);
            p1=1;
        end
    end
end