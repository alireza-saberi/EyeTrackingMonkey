function varargout = Data_binning(varargin)
% DATA_BINNING MATLAB code for Data_binning.fig
%      DATA_BINNING, by itself, creates a new DATA_BINNING or raises the existing
%      singleton*.
%
%      H = DATA_BINNING returns the handle to a new DATA_BINNING or the handle to
%      the existing singleton*.
%
%      DATA_BINNING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATA_BINNING.M with the given input arguments.
%
%      DATA_BINNING('Property','Value',...) creates a new DATA_BINNING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Data_binning_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Data_binning_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Data_binning

% Last Modified by GUIDE v2.5 07-Aug-2013 05:27:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Data_binning_OpeningFcn, ...
                   'gui_OutputFcn',  @Data_binning_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before Data_binning is made visible.
function Data_binning_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Data_binning (see VARARGIN)

% Choose default command line output for Data_binning
handles.output = hObject;
axes(handles.axes2)
imshow('TopPhoto.jpg')
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Data_binning wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Data_binning_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Compare_experiment


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit_from2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_from2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_from2 as text
%        str2double(get(hObject,'String')) returns contents of edit_from2 as a double


% --- Executes during object creation, after setting all properties.
function edit_from2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_from2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_to2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_to2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_to2 as text
%        str2double(get(hObject,'String')) returns contents of edit_to2 as a double


% --- Executes during object creation, after setting all properties.
function edit_to2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_to2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_ymin_Callback(hObject, eventdata, handles)
% hObject    handle to edit_ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_ymin as text
%        str2double(get(hObject,'String')) returns contents of edit_ymin as a double


% --- Executes during object creation, after setting all properties.
function edit_ymin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_xmax_Callback(hObject, eventdata, handles)
% hObject    handle to edit_xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_xmax as text
%        str2double(get(hObject,'String')) returns contents of edit_xmax as a double


% --- Executes during object creation, after setting all properties.
function edit_xmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_xmin_Callback(hObject, eventdata, handles)
% hObject    handle to edit_xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_xmin as text
%        str2double(get(hObject,'String')) returns contents of edit_xmin as a double


% --- Executes during object creation, after setting all properties.
function edit_xmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_ymax_Callback(hObject, eventdata, handles)
% hObject    handle to edit_ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_ymax as text
%        str2double(get(hObject,'String')) returns contents of edit_ymax as a double


% --- Executes during object creation, after setting all properties.
function edit_ymax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');
resolution_num = str2double(get(handles.edit_resolution,'String'));
t_low = str2double(get(handles.edit_from2,'String'));
t_high = str2double(get(handles.edit_to2,'String'));

t_Xmax = str2double(get(handles.edit_xmax,'String'));
t_Xmin = str2double(get(handles.edit_xmin,'String'));
t_Ymax = str2double(get(handles.edit_ymax,'String'));
t_Ymin = str2double(get(handles.edit_ymin,'String'));

X_hist(folder, t_low, t_high, t_Xmin,t_Xmax, resolution_num);

% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');
resolution_num = str2double(get(handles.edit_resolution,'String'));
t_low = str2double(get(handles.edit_from2,'String'));
t_high = str2double(get(handles.edit_to2,'String'));

t_Xmax = str2double(get(handles.edit_xmax,'String'));
t_Xmin = str2double(get(handles.edit_xmin,'String'));
t_Ymax = str2double(get(handles.edit_ymax,'String'));
t_Ymin = str2double(get(handles.edit_ymin,'String'));

heatedplot(folder, t_low, t_high, t_Xmin,t_Xmax, t_Ymin, t_Ymax,resolution_num)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');
figure
load(sprintf('%sEyeSample_number_vector',folder));
load(sprintf('%sT_places.mat',folder));
FROM = str2double(get(handles.edit_from,'String'));
TO = str2double(get(handles.edit_to,'String'));
plot([FROM:TO],EyeSample_no_vector(FROM:TO));
title('Number of fixation points in the determined trials');
grid on
xlabel('Trial Numbers');
ylabel('Number of Fixations(n)');
format short;
t = fix(T);
strValues = strtrim(cellstr(num2str([t(FROM:TO) EyeSample_no_vector(FROM:TO)],'t=%d\nn=%d')));
text([FROM:TO],EyeSample_no_vector(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
plot((FROM:TO),moving(EyeSample_no_vector(FROM:TO),window_size),'r');
legend('t(time in Sec), n(number) ','Moving Average')

figure;
stairs(T(FROM:TO),EyeSample_no_vector(FROM:TO))
title('Number of fixation points in the determined trials');
grid on
xlabel('Time (Sec)');
ylabel('Number of Fixations (n)');
TEMP = [1:TO]';
strValues = strtrim(cellstr(num2str( [TEMP(FROM:TO)  EyeSample_no_vector(FROM:TO)],'%d\n%d')));
text(T(FROM:TO),EyeSample_no_vector(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
stairs(T(FROM:TO),moving(EyeSample_no_vector(FROM:TO),window_size),'r');
legend('Trial number/Number of Fixation','Moving Average')


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure
folder  = get(handles.edit_path,'String');
load(sprintf('%sB_static_STD_distance',folder));
load(sprintf('%sT_places.mat',folder));
FROM = str2double(get(handles.edit_from,'String'));
TO = str2double(get(handles.edit_to,'String'));
plot([FROM:TO],STD_distance(FROM:TO));
title('STD of distances  in the detemined trials from refrence point(0,0)');
grid on
xlabel('Trial Numbers');
ylabel('STD of distance');
format short;
t = fix(T);
strValues = strtrim(cellstr(num2str(t(FROM:TO) ,'t=%d')));
text([FROM:TO],STD_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
plot([FROM:TO],moving(STD_distance(FROM:TO),window_size),'r');
legend('t(time in Sec)','Moving Average');

figure;
stairs(T(FROM:TO),STD_distance(FROM:TO))
title('STD of distances in the detemined trials from refrecne point(0,0)');
grid on
xlabel('Time (Sec)');
ylabel('STD of  distance');
TEMP = [1:TO]';
strValues = strtrim(cellstr(num2str(TEMP(FROM:TO) ,'%d')));
text(T(FROM:TO),STD_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
stairs(T(FROM:TO),moving(STD_distance(FROM:TO),window_size),'r');
legend('Trial number','Moving Average');


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure
folder  = get(handles.edit_path,'String');
load(sprintf('%sB_static_Var_distance',folder));
load(sprintf('%sT_places.mat',folder));
FROM = str2double(get(handles.edit_from,'String'));
TO = str2double(get(handles.edit_to,'String'));
plot([FROM:TO],Var_distance(FROM:TO));
title('Variance of distances in the detemined trials from refrecne point(0,0)');
grid on;
xlabel('Trial Numbers');
ylabel('Variance of distance');
format short;
t = fix(T);
strValues = strtrim(cellstr(num2str(t(FROM:TO) ,'t=%d')));
text([FROM:TO],Var_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
plot([FROM:TO],moving(Var_distance(FROM:TO),window_size),'r');
legend('t(time in Sec)','Moving Average');

figure;
stairs(T(FROM:TO),Var_distance(FROM:TO))
title('Variance of distances in the detemined trials from refrecne point(0,0)');
grid on
xlabel('Time (Sec)');
ylabel('Variance of  distance');
TEMP = [1:TO]';
strValues = strtrim(cellstr(num2str(TEMP(FROM:TO) ,'%d')));
 text(T(FROM:TO),Var_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
 hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
stairs(T(FROM:TO),moving(Var_distance(FROM:TO),window_size),'r');
legend('Trial number','Moving Average');


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure
folder  = get(handles.edit_path,'String');
load(sprintf('%sstatic_Median_distance',folder));
load(sprintf('%sT_places.mat',folder));
FROM = str2double(get(handles.edit_from,'String'));
TO = str2double(get(handles.edit_to,'String'));
plot([FROM:TO],Median_distance(FROM:TO)');
title('Median of distances in the detemined trials from refrecne point(0,0)');
grid on
xlabel('Trial Numbers');
ylabel('Median distance');
format short;
t = fix(T);
strValues = strtrim(cellstr(num2str(t(FROM:TO) ,'t=%d')));
text([FROM:TO],Median_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
plot([FROM:TO],moving(Median_distance(FROM:TO),window_size),'r');
legend('t(time in Sec)','Moving Average');

figure;
stairs(T(FROM:TO),Median_distance(FROM:TO))
title('Median of distances in the detemined trials from refrecne point(0,0)');
grid on
xlabel('Time (Sec)');
ylabel('Median distance');
TEMP = [1:TO]';
strValues = strtrim(cellstr(num2str(TEMP(FROM:TO) ,'%d')));
 text(T(FROM:TO),Median_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
 hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
stairs(T(FROM:TO),moving(Median_distance(FROM:TO),window_size),'r');
legend('Trial number','Moving Average');



% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure
folder  = get(handles.edit_path,'String');
load(sprintf('%sB_static_Mean_distance',folder));
load(sprintf('%sT_places.mat',folder));
FROM = str2double(get(handles.edit_from,'String'));
TO = str2double(get(handles.edit_to,'String'));
plot([FROM:TO],Mean_distance(FROM:TO)');
title('Mean of distances in the detemined trials from refrecne point(0,0)');
grid on
xlabel('Trial Numbers');
ylabel('Mean distance');
format short;
t = fix(T);
strValues = strtrim(cellstr(num2str(t(FROM:TO) ,'t=%d')));
text([FROM:TO],Mean_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
plot([FROM:TO],moving(Mean_distance(FROM:TO),window_size),'r');
legend('t(time in Sec)','Moving Average');

figure;
stairs(T(FROM:TO),Mean_distance(FROM:TO))
title('Mean of distances in the detemined trials from refrecne point(0,0)');
grid on
xlabel('Time (Sec)');
ylabel('Mean distance');
TEMP = [1:TO]';
strValues = strtrim(cellstr(num2str(TEMP(FROM:TO) ,'%d')));
text(T(FROM:TO),Mean_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
stairs(T(FROM:TO),moving(Mean_distance(FROM:TO),window_size),'r');
legend('Trial number','Moving Average');


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure
folder  = get(handles.edit_path,'String');
load(sprintf('%sB_static_Max_distance',folder));
load(sprintf('%sT_places.mat',folder));
FROM = str2double(get(handles.edit_from,'String'));
TO = str2double(get(handles.edit_to,'String'));
plot([FROM:TO],Maximum_distance(FROM:TO)');
title('Maximum distance in the detemined trials from refrence point(0,0)');
grid on
xlabel('Trial Numbers');
ylabel('Maximum distance');
format short;
t = fix(T);
strValues = strtrim(cellstr(num2str(t(FROM:TO) ,'t=%d')));
text([FROM:TO],Maximum_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
plot([FROM:TO],moving(Maximum_distance(FROM:TO),window_size),'r');
legend('t(time in Sec)','Moving Average');

figure;
stairs(T(FROM:TO),Maximum_distance(FROM:TO))
title('Maximum distance in the detemined trials from refrecne point(0,0)');
grid on
xlabel('Time (Sec)');
ylabel('Maximum distance');
TEMP = [1:TO]';
strValues = strtrim(cellstr(num2str(TEMP(FROM:TO) ,'%d')));
text(T(FROM:TO),Maximum_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
stairs(T(FROM:TO),moving(Maximum_distance(FROM:TO),window_size),'r');
legend('Trial number','Moving Average');

% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure
folder  = get(handles.edit_path,'String');
load(sprintf('%sB_static_Min_distance',folder));
load(sprintf('%sT_places.mat',folder));
FROM = str2double(get(handles.edit_from,'String'));
TO = str2double(get(handles.edit_to,'String'));
plot([FROM:TO],Minimum_distance(FROM:TO)');
title('Minimum distance in the detemined trials from refrecne point(0,0)');
grid on
xlabel('Trial Numbers');
ylabel('Minimum distance');
format short;
t = fix(T);
strValues = strtrim(cellstr(num2str(t(FROM:TO) ,'t=%d')));
text([FROM:TO],Minimum_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
plot([FROM:TO],moving(Minimum_distance(FROM:TO),window_size),'r');
legend('t(time in Sec)','Moving Average');

figure;
stairs(T(FROM:TO),Minimum_distance(FROM:TO))
title('Minimum  distance in the detemined trials from refrecne point(0,0)');
grid on
xlabel('Time (Sec)');
ylabel('Minimum distance');
TEMP = [1:TO]';
strValues = strtrim(cellstr(num2str(TEMP(FROM:TO) ,'%d')));
text(T(FROM:TO),Minimum_distance(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
stairs(T(FROM:TO),moving(Minimum_distance(FROM:TO),window_size),'r');
legend('Trial number','Moving Average');


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');
figure
load(sprintf('%sEyeCalbration_number_vector',folder));
load(sprintf('%sT_places.mat',folder));
FROM = str2double(get(handles.edit_from,'String'));
TO = str2double(get(handles.edit_to,'String'));
plot([FROM:TO],EyeCalbration_no_vector(FROM:TO));
title('Number of calibration points in determined trials');
grid on
xlabel('Trial Numbers');
ylabel('Number of Calibration(n)');
format short;
t = fix(T);
strValues = strtrim(cellstr(num2str([t(FROM:TO) EyeCalbration_no_vector(FROM:TO)],'t=%d\nn=%d')));
text([FROM:TO],EyeCalbration_no_vector(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
plot([FROM:TO],moving(EyeCalbration_no_vector(FROM:TO),window_size),'r');
legend('t(time in Sec), n(number)','Moving Average')

figure;
stairs(T(FROM:TO),EyeCalbration_no_vector(FROM:TO))
title('Number of calibration points in the determined trials');
grid on
xlabel('Time (Sec)');
ylabel('Number of Fixations (n)');
TEMP = [1:TO]';
strValues = strtrim(cellstr(num2str( [TEMP(FROM:TO)  EyeCalbration_no_vector(FROM:TO)],'%d\n%d')));
text(T(FROM:TO),EyeCalbration_no_vector(FROM:TO),strValues,'VerticalAlignment','bottom');
hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
stairs(T(FROM:TO),moving(EyeCalbration_no_vector(FROM:TO),window_size),'r');
legend('Trial number/Number of Calibration','Moving Average')


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');
figure
load(sprintf('%sEvents_number_vector.mat',folder));
load(sprintf('%sT_places.mat',folder));
FROM = str2double(get(handles.edit_from,'String'));
TO = str2double(get(handles.edit_to,'String'));
plot([FROM:TO],Events_size_vector(FROM:TO));
title('Number of events in determined trials');
grid on;
xlabel('Trial Numbers');
ylabel('Number of Events(n)');
format short;
t = fix(T);
strValues = strtrim(cellstr(num2str([t(FROM:TO) Events_size_vector(FROM:TO)],'t=%d\nn=%d')));
text([FROM:TO],Events_size_vector(FROM:TO),strValues,'VerticalAlignment','bottom');
 hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
plot([FROM:TO],moving(Events_size_vector(FROM:TO),window_size),'r');
legend('t(time in Sec), n(number) ','Moving Average')


figure;
stairs(T(FROM:TO),Events_size_vector(FROM:TO))
title('Number of events in determined trials');
grid on
xlabel('Time (Sec)');
ylabel('Number of Events');
TEMP = [1:TO]';
strValues = strtrim(cellstr(num2str( [TEMP(FROM:TO)  Events_size_vector(FROM:TO)],'%d\n%d')));
text(T(FROM:TO),Events_size_vector(FROM:TO),strValues,'VerticalAlignment','bottom');
 hold on;
window_size = str2double(get(handles.edit_movingaverage,'String'));
stairs(T(FROM:TO),moving(Events_size_vector(FROM:TO),window_size),'r');
 legend('Trial number/Number of events ','Moving Average')



function edit_path_Callback(hObject, eventdata, handles)
% hObject    handle to edit_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_path as text
%        str2double(get(hObject,'String')) returns contents of edit_path as a double


% --- Executes during object creation, after setting all properties.
function edit_path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[finename pathname] = uigetfile({'calibrated_xy*.mat'},'File Selector');
set(handles.edit_path,'String', pathname)



function edit_trial_number_Callback(hObject, eventdata, handles)
% hObject    handle to edit_trial_number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_trial_number as text
%        str2double(get(hObject,'String')) returns contents of edit_trial_number as a double


% --- Executes during object creation, after setting all properties.
function edit_trial_number_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_trial_number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');
t_number = str2double(get(handles.edit_trial_number,'String')); %returns contents of edit_trial_number as a double
resolution_num = str2double(get(handles.edit_resolution,'String'));

BinMaker(folder,t_number,resolution_num);
statics_binned(folder, t_number,1)

set(handles.edit_from, 'String','1');
set(handles.edit_from2, 'String','1');
t_final = get(handles.edit_trial_number,'String');
set(handles.edit_to, 'String',t_final);
set(handles.edit_to2, 'String',t_final);

E=load(sprintf('%sExperiment_binned_stats.mat',folder));
E1= num2str(E.S(1)); set(handles.text_min, 'String',E1);
E2= num2str(E.S(2)); set(handles.text_max, 'String',E2);
E3= num2str(E.S(3)); set(handles.text_mean, 'String',E3);
E4= num2str(E.S(4)); set(handles.text_median, 'String',E4);
E5= num2str(E.S(5)); set(handles.text_var, 'String',E5);
E6= num2str(E.S(6)); set(handles.text_STD, 'String',E6);

 F=load(sprintf('%sEvents_number_vector.mat',folder));
 FF = sum(F.Events_size_vector);
 F1= num2str(FF); set(handles.text_event, 'String',F1);

 G=load(sprintf('%sEyeSample_number_vector.mat',folder));
 GG = sum(G.EyeSample_no_vector);
 G1= num2str(GG); set(handles.text_fixation, 'String',G1);

 H=load(sprintf('%sEyeCalbration_number_vector.mat',folder));
 HH = sum(H.EyeCalbration_no_vector);
 H1= num2str(HH); set(handles.text_calib, 'String',H1);
 
 format short
 I = load(sprintf('%sbinned_XY.mat',folder));
 XYmin = min(I.binned_XY);
 XYmax = max(I.binned_XY);
 xmin = num2str(XYmin(1));
 xmax = num2str(XYmax(1));
 ymin = num2str(XYmin(2));
 ymax = num2str(XYmax(2));
set(handles.edit_Xmin, 'String',xmin);
set(handles.edit_Xmax, 'String',xmax);
set(handles.edit_Ymin, 'String',ymin);
set(handles.edit_Ymax, 'String',ymax);

set(handles.edit_xmin, 'String',xmin);
set(handles.edit_xmax, 'String',xmax);
set(handles.edit_ymin, 'String',ymin);
set(handles.edit_ymax, 'String',ymax);





% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');

t_low = str2double(get(handles.edit_from,'String'));
t_high = str2double(get(handles.edit_to,'String'));

t_Xmax = str2double(get(handles.edit_Xmax,'String'));
t_Xmin = str2double(get(handles.edit_Xmin,'String'));
t_Ymax = str2double(get(handles.edit_Ymax,'String'));
t_Ymin = str2double(get(handles.edit_Ymin,'String'));

statics_binnedV2(folder, t_high, t_low, t_Xmin,t_Xmax, t_Ymin,t_Ymax);

E=load(sprintf('%sExperiment_binned_stats.mat',folder));
E1= num2str(E.S(1)); 
set(handles.text_min, 'String',E1);
E2= num2str(E.S(2)); 
set(handles.text_max, 'String',E2);
E3= num2str(E.S(3));
set(handles.text_mean, 'String',E3);
E4= num2str(E.S(4));
set(handles.text_median, 'String',E4);
E5= num2str(E.S(5));
set(handles.text_var, 'String',E5);
E6= num2str(E.S(6));
set(handles.text_STD, 'String',E6);

 F=load(sprintf('%sEvents_number_vector.mat',folder));
 FF = sum(F.Events_size_vector( t_low:t_high));
 F1= num2str(FF); set(handles.text_event, 'String',F1);

 G=load(sprintf('%sEyeSample_number_vector.mat',folder));
 GG = sum(G.EyeSample_no_vector( t_low:t_high));
 G1= num2str(GG); set(handles.text_fixation, 'String',G1);

 H=load(sprintf('%sEyeCalbration_number_vector.mat',folder));
 HH = sum(H.EyeCalbration_no_vector( t_low:t_high));
 H1= num2str(HH); set(handles.text_calib, 'String',H1);


function edit_to_Callback(hObject, eventdata, handles)
% hObject    handle to edit_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_to as text
%        str2double(get(hObject,'String')) returns contents of edit_to as a double


% --- Executes during object creation, after setting all properties.
function edit_to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_from_Callback(hObject, eventdata, handles)
% hObject    handle to edit_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_from as text
%        str2double(get(hObject,'String')) returns contents of edit_from as a double


% --- Executes during object creation, after setting all properties.
function edit_from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Xmin_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Xmin as text
%        str2double(get(hObject,'String')) returns contents of edit_Xmin as a double


% --- Executes during object creation, after setting all properties.
function edit_Xmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Xmax_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Xmax as text
%        str2double(get(hObject,'String')) returns contents of edit_Xmax as a double


% --- Executes during object creation, after setting all properties.
function edit_Xmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Ymin_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Ymin as text
%        str2double(get(hObject,'String')) returns contents of edit_Ymin as a double


% --- Executes during object creation, after setting all properties.
function edit_Ymin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Ymax_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Ymax as text
%        str2double(get(hObject,'String')) returns contents of edit_Ymax as a double


% --- Executes during object creation, after setting all properties.
function edit_Ymax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit_resolution_Callback(hObject, eventdata, handles)
% hObject    handle to edit_resolution (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_resolution as text
%        str2double(get(hObject,'String')) returns contents of edit_resolution as a double


% --- Executes during object creation, after setting all properties.
function edit_resolution_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_resolution (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');
resolution_num = str2double(get(handles.edit_resolution,'String'));
t_low = str2double(get(handles.edit_from2,'String'));
t_high = str2double(get(handles.edit_to2,'String'));

t_Xmax = str2double(get(handles.edit_xmax,'String'));
t_Xmin = str2double(get(handles.edit_xmin,'String'));
t_Ymax = str2double(get(handles.edit_ymax,'String'));
t_Ymin = str2double(get(handles.edit_ymin,'String'));

Y_hist(folder, t_low, t_high, t_Ymin,t_Ymax, resolution_num);

% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
AliAnalyzerTool



function text_move_Callback(hObject, eventdata, handles)
% hObject    handle to text_move (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_move as text
%        str2double(get(hObject,'String')) returns contents of text_move as a double


% --- Executes during object creation, after setting all properties.
function text_move_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_move (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');

t_number = str2double(get(handles.edit_trial_number,'String'));
set(handles.edit_from, 'String','1');
set(handles.edit_from2, 'String','1');
t_final = get(handles.edit_trial_number,'String');
set(handles.edit_to, 'String',t_final);
set(handles.edit_to2, 'String',t_final);

E=load(sprintf('%sExperiment_binned_stats.mat',folder));
E1= num2str(E.S(1)); set(handles.text_min, 'String',E1);
E2= num2str(E.S(2)); set(handles.text_max, 'String',E2);
E3= num2str(E.S(3)); set(handles.text_mean, 'String',E3);
E4= num2str(E.S(4)); set(handles.text_median, 'String',E4);
E5= num2str(E.S(5)); set(handles.text_var, 'String',E5);
E6= num2str(E.S(6)); set(handles.text_STD, 'String',E6);

 F=load(sprintf('%sEvents_number_vector.mat',folder));
 FF = sum(F.Events_size_vector);
 F1= num2str(FF); set(handles.text_event, 'String',F1);

 G=load(sprintf('%sEyeSample_number_vector.mat',folder));
 GG = sum(G.EyeSample_no_vector);
 G1= num2str(GG); set(handles.text_fixation, 'String',G1);

 H=load(sprintf('%sEyeCalbration_number_vector.mat',folder));
 HH = sum(H.EyeCalbration_no_vector);
 H1= num2str(HH); set(handles.text_calib, 'String',H1);
 
 format short
 I = load(sprintf('%sbinned_XY.mat',folder));
 XYmin = min(I.binned_XY);
 XYmax = max(I.binned_XY);
 xmin = num2str(XYmin(1));
 xmax = num2str(XYmax(1));
 ymin = num2str(XYmin(2));
 ymax = num2str(XYmax(2));
set(handles.edit_Xmin, 'String',xmin);
set(handles.edit_Xmax, 'String',xmax);
set(handles.edit_Ymin, 'String',ymin);
set(handles.edit_Ymax, 'String',ymax);

set(handles.edit_xmin, 'String',xmin);
set(handles.edit_xmax, 'String',xmax);
set(handles.edit_ymin, 'String',ymin);
set(handles.edit_ymax, 'String',ymax);



function edit_movingaverage_Callback(hObject, eventdata, handles)
% hObject    handle to edit_movingaverage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_movingaverage as text
%        str2double(get(hObject,'String')) returns contents of edit_movingaverage as a double


% --- Executes during object creation, after setting all properties.
function edit_movingaverage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_movingaverage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');
t_low = str2double(get(handles.edit_from2,'String'));
t_high = str2double(get(handles.edit_to2,'String'));

t_Xmax = str2double(get(handles.edit_xmax,'String'));
t_Xmin = str2double(get(handles.edit_xmin,'String'));
t_Ymax = str2double(get(handles.edit_ymax,'String'));
t_Ymin = str2double(get(handles.edit_ymin,'String'));

scatter2D_binned(folder, t_low, t_high, t_Xmin,t_Xmax, t_Ymin,t_Ymax)



% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');
resolution_num = str2double(get(handles.edit_resolution,'String'));
t_low = str2double(get(handles.edit_from2,'String'));
t_high = str2double(get(handles.edit_to2,'String'));

t_Xmax = str2double(get(handles.edit_xmax,'String'));
t_Xmin = str2double(get(handles.edit_xmin,'String'));
t_Ymax = str2double(get(handles.edit_ymax,'String'));
t_Ymin = str2double(get(handles.edit_ymin,'String'));

scatter3D_binned(folder, t_low, t_high, t_Xmin,t_Xmax, t_Ymin,t_Ymax)


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 folder  = get(handles.edit_path,'String');
 resolution_num = str2double(get(handles.edit_resolution,'String'));
 t_low = str2double(get(handles.edit_from2,'String'));
 t_high = str2double(get(handles.edit_to2,'String'));
 
 t_Xmax = str2double(get(handles.edit_xmax,'String'));
 t_Xmin = str2double(get(handles.edit_xmin,'String'));
 t_Ymax = str2double(get(handles.edit_ymax,'String'));
 t_Ymin = str2double(get(handles.edit_ymin,'String'));

 meshplot(folder, t_low, t_high, t_Xmin,t_Xmax, t_Ymin, t_Ymax,resolution_num)


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 folder  = get(handles.edit_path,'String');
 resolution_num = str2double(get(handles.edit_resolution,'String'));
 t_low = str2double(get(handles.edit_from2,'String'));
 t_high = str2double(get(handles.edit_to2,'String'));
 
 t_Xmax = str2double(get(handles.edit_xmax,'String'));
 t_Xmin = str2double(get(handles.edit_xmin,'String'));
 t_Ymax = str2double(get(handles.edit_ymax,'String'));
 t_Ymin = str2double(get(handles.edit_ymin,'String'));
 
 surfplot(folder, t_low, t_high, t_Xmin,t_Xmax, t_Ymin, t_Ymax,resolution_num)


% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 folder  = get(handles.edit_path,'String');
 resolution_num = str2double(get(handles.edit_resolution,'String'));
 t_low = str2double(get(handles.edit_from2,'String'));
 t_high = str2double(get(handles.edit_to2,'String'));
 
 t_Xmax = str2double(get(handles.edit_xmax,'String'));
 t_Xmin = str2double(get(handles.edit_xmin,'String'));
 t_Ymax = str2double(get(handles.edit_ymax,'String'));
 t_Ymin = str2double(get(handles.edit_ymin,'String'));
 
 contourplot(folder, t_low, t_high, t_Xmin,t_Xmax, t_Ymin, t_Ymax,resolution_num)
