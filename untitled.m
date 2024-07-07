 function varargout = untitled(varargin)
%UNTITLED MATLAB code file for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to untitled_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      UNTITLED('CALLBACK') and UNTITLED('CALLBACK',hObject,...) call the
%      local function named CALLBACK in UNTITLED.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 18-Aug-2023 23:23:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=uigetfile({'*.*';'*.tif';'*.png';'*.jbg';'*.bmb';'*.gif';'*.svg';'*.psd';'*.raw'});
a=imread(a);
axes(handles.axes1);
imshow(a)
setappdata(0,'a',a)


% --- Executes on button press in RGB2GRAY.
function RGB2GRAY_Callback(hObject, eventdata, handles)
% hObject    handle to RGB2GRAY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
        rgb_2_gray = rgb2gray(a);
        axes(handles.axes2);
        imshow(rgb_2_gray); 
        setappdata(0,'rgb_2_gray',rgb_2_gray);
    elseif strcmp(a,'')
        cla(handles.axes2,'reset');
        else
        msgbox('This image is in grey scale and cannot be converted to grey scale')
        pause(1)
     end



% --- Executes on button press in histogram.
function histogram_Callback(hObject, eventdata, handles)
% hObject    handle to histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a'); 
if (size(a,3)== 3)
        a=rgb2gray(a);
end
histogram = imhist(a);
axes(handles.axes2);
imhist(a);

% --- Executes on button press in Addition.
function Addition_Callback(hObject, eventdata, handles)
% hObject    handle to Addition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        add=imadd(a,128);
        axes(handles.axes2);
        imshow(add); 


% --- Executes on button press in Subtraction.
function Subtraction_Callback(hObject, eventdata, handles)
% hObject    handle to Subtraction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
    sub=imsubtract(a,128);
        axes(handles.axes2);
        imshow(sub); 



% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
    divide=imdivide(a,2);
        axes(handles.axes2);
        imshow(divide); 



% --- Executes on button press in multi.
function multi_Callback(hObject, eventdata, handles)
% hObject    handle to multi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
    multi=immultiply(a,2);
        axes(handles.axes2);
        imshow(multi); 


% --- Executes on button press in imcomplement.
function imcomplement_Callback(hObject, eventdata, handles)
% hObject    handle to imcomplement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        complement=imcomplement(a);
        axes(handles.axes2);
        imshow(complement); 


% --- Executes on button press in histeq.
function histeq_Callback(hObject, eventdata, handles)
% hObject    handle to histeq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
     if (size(a,3)== 3)
      a=rgb2gray(a);
     end
         x=histeq(a);
        axes(handles.axes2);
        imshow(x); 


% --- Executes on button press in binary.
function binary_Callback(hObject, eventdata, handles)
% hObject    handle to binary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        binary_photo=im2bw(a);
        axes(handles.axes2);
        imshow(binary_photo); 
       


% --- Executes on button press in average.
function average_Callback(hObject, eventdata, handles)
% hObject    handle to average (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        h=fspecial('average',[9 9]);
        enhanced=imfilter(a,h);
        axes(handles.axes2);
        imshow(enhanced); 



% --- Executes on button press in weighted.
function weighted_Callback(hObject, eventdata, handles)
% hObject    handle to weighted (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        h=1/256*[ 8 16 8; 16 32 16; 8 16 8];
        enhanced=imfilter(a,h);
        axes(handles.axes2);
        imshow(enhanced); 
      

% --- Executes on button press in addsalt.
function addsalt_Callback(hObject, eventdata, handles)
% hObject    handle to addsalt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        noisy=imnoise(a,'salt & pepper');
        axes(handles.axes2);
        imshow(noisy); 
        


% --- Executes on button press in median.
function median_Callback(hObject, eventdata, handles)
% hObject    handle to median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        noise_image=imnoise(a,'salt & pepper');
        med=medfilt2(noise_image,[9 9]);
        axes(handles.axes2);
        imshow(med); 


% --- Executes on button press in max.
function max_Callback(hObject, eventdata, handles)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        noise_image=imnoise(a,'salt & pepper');
        max=ordfilt2(noise_image,9,ones(3,3));
        axes(handles.axes2);
        imshow(max); 
       


% --- Executes on button press in min.
function min_Callback(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
a=getappdata(0,'a');
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        noise_image=imnoise(a,'salt & pepper');
        min=ordfilt2(noise_image,1,ones(3,3));
        axes(handles.axes2);
        imshow(min); 
       


% --- Executes on button press in laplacian.
function laplacian_Callback(hObject, eventdata, handles)
% hObject    handle to laplacian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        h=fspecial('laplacian');
        e=imfilter(a,h);
        w=e+a;
        axes(handles.axes2);
        imshow(w); 


% --- Executes on button press in fourierConstruct.
function fourierConstruct_Callback(hObject, eventdata, handles)
% hObject    handle to fourierConstruct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
         a=im2double(a);
         fi=fft2(a);
         fi1=fftshift(fi);
         fi_s=abs(fi1);
         R=ifft2(fi);

        axes(handles.axes2);
        imshow(R); 
     


% --- Executes on button press in ILPF.
function ILPF_Callback(hObject, eventdata, handles)
% hObject    handle to ILPF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
if (size(a,3)==3)
        a=rgb2gray(a);
end
a=im2double (a);
FI=fft2(a);
[M, N]=size(a);
u=0:M-1;
v=0:N-1;
index=find(u>M/2);
u(index)=u(index)-M;
indy=find(v>N/2);
v(indy)=v(indy)-N;
[U, V]= meshgrid(u, v) ;
D=sqrt(U.^2+V.^2);
D0=30;
H=double(D<=D0);
axes(handles.axes2);
imshow((fftshift(H)));
       


% --- Executes on button press in redimage.
function redimage_Callback(hObject, eventdata, handles)
% hObject    handle to redimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
if (size(a,3)== 3)
        a=rgb2gray(a);
end
R = a;
R(:,:,2:3) = 0;
axes(handles.axes2);
imshow(R); 



% --- Executes on button press in blueimage.
function blueimage_Callback(hObject, eventdata, handles)
% hObject    handle to blueimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
if (size(a,5)== 5)
        a=rgb2gray(a);
end
B = a;
B(:,:,1:2) = 0;
axes(handles.axes2);
imshow(B);



% --- Executes on button press in greenimage.
function greenimage_Callback(hObject, eventdata, handles)
% hObject    handle to greenimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
if (size(a,4)== 4)
        a=rgb2gray(a);
end
G = a;
G(:, :, [1, 3]) = 0;
axes(handles.axes2);
imshow(G);



% --- Executes on button press in ruduce.
function ruduce_Callback(hObject, eventdata, handles)
% hObject    handle to ruduce (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        reduce_image=imresize(a,0.5);
        axes(handles.axes2);
        imshow(reduce_image); 


% --- Executes on button press in double.
function double_Callback(hObject, eventdata, handles)
% hObject    handle to double (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        double_image=imresize(a,2);
        axes(handles.axes2);
        imshow(double_image); 


% --- Executes on button press in specified.
function specified_Callback(hObject, eventdata, handles)
% hObject    handle to specified (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
        specified_image=imresize(a,[150 150]);
        axes(handles.axes2);
        imshow(specified_image); 
    


% --- Executes on button press in rotatrighr.
function rotatrighr_Callback(hObject, eventdata, handles)
% hObject    handle to rotatrighr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
    rotate=imrotate(a,-90);
    axes(handles.axes2);
    imshow(rotate);

% --- Executes on button press in rotate.
function rotate_Callback(hObject, eventdata, handles)
% hObject    handle to rotate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
    rotate=imrotate(a,180);
    axes(handles.axes2);
    imshow(rotate);


% --- Executes on button press in rotateleft.
function rotateleft_Callback(hObject, eventdata, handles)
% hObject    handle to rotateleft (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a');    
    if (size(a,3)== 3)
      a=rgb2gray(a);
    end
    rotate=imrotate(a,90);
    axes(handles.axes2);
    imshow(rotate);


% --- Executes on button press in Gaussian.
function Gaussian_Callback(hObject, eventdata, handles)
% hObject    handle to Gaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
if size(a, 3) == 3
    a = rgb2gray(a);
end
    n2=imnoise(a,'gaussian');
    axes(handles.axes2);
    imshow(n2);


% --- Executes on button press in Sharp.
function Sharp_Callback(hObject, eventdata, handles)
% hObject    handle to Sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
if size(a, 3) == 3
    a = rgb2gray(a);
end
    h=fspecial('laplacian');
    img=imfilter(a,h);
    sharped=a+img;
    axes(handles.axes2);
    imshow(sharped);


% --- Executes on button press in Periodic.
function Periodic_Callback(hObject, eventdata, handles)
% hObject    handle to Periodic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
if (size(a,3)== 3)
        a=rgb2gray(a);
end
[r,c]=size (a);
[x,y]=meshgrid(1:r,1:c);
p=1+sin(x+y/1.5);
reconstruct=(double (a)/128+p)/4;
axes(handles.axes2);
imshow(reconstruct);


% --- Executes on button press in Butternlow.
function Butternlow_Callback(hObject, eventdata, handles)
% hObject    handle to Butternlow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
if (size(a,3)== 3)
        a=rgb2gray(a);
end
[M, N] = size (a);
FT_img = fft2(a);
D0 = 30;
u=0:(M-1);
v=0:(N-1);
idx = find(u > M/2);
u(idx) = u(idx) - M;
idy = find(v > N/2);
v(idy) = v(idy) - N;
[V , U] = meshgrid(v, u);
D =sqrt(U.^2 +V.^2);
H = double( D <= D0);
G = H.*FT_img;
output_image =real(ifft2(double(G)));
axes(handles.axes2);
imshow((output_image),[]);


% --- Executes on button press in imageideation.
function imageideation_Callback(hObject, eventdata, handles)
% hObject    handle to imageideation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0, 'a');
if (size(a,3)== 3)
        a=rgb2gray(a);
end
i=imread('rice.png');
j=imadd(a,i,'uint16');
axes(handles.axes2);
imshow(j,[]);


% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Open a file dialog for selecting a video file

video=VideoReader('Spiderman.mp4');
y=read(video);
implay(y)

% --- Executes on button press in edit2.
function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
