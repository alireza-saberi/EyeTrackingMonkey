function varargout = Compare_experiment(varargin)
% COMPARE_EXPERIMENT MATLAB code for Compare_experiment.fig
%      COMPARE_EXPERIMENT, by itself, creates a new COMPARE_EXPERIMENT or raises the existing
%      singleton*.
%
%      H = COMPARE_EXPERIMENT returns the handle to a new COMPARE_EXPERIMENT or the handle to
%      the existing singleton*.
%
%      COMPARE_EXPERIMENT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMPARE_EXPERIMENT.M with the given input arguments.
%
%      COMPARE_EXPERIMENT('Property','Value',...) creates a new COMPARE_EXPERIMENT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Compare_experiment_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Compare_experiment_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Compare_experiment

% Last Modified by GUIDE v2.5 08-Aug-2013 11:37:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Compare_experiment_OpeningFcn, ...
                   'gui_OutputFcn',  @Compare_experiment_OutputFcn, ...
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


% --- Executes just before Compare_experiment is made visible.
function Compare_experiment_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Compare_experiment (see VARARGIN)

% Choose default command line output for Compare_experiment
handles.output = hObject;
axes(handles.axes1)
imshow('TopPhoto.jpg')

trial_no = [];
event_no = [];
fix_no = [];
calib_no = [];
STATS = [];


save('trial_no.mat','trial_no');
save('event_no.mat','event_no');
save('fix_no.mat','fix_no');
save('calib_no.mat','calib_no');
save('STATS.mat','STATS');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Compare_experiment wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Compare_experiment_OutputFcn(hObject, eventdata, handles) 
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
AliAnalyzerTool


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Data_binning


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('event_no.mat');
figure
plot(event_no)
hold on;
window_size = str2double(get(handles.edit_windows_size,'String'));
plot(moving(event_no,window_size),'r');
title('Plot of the number of events in the experminents' );
xlabel('Trial number');
ylabel('Number of events');
grid on;
legend('Reality','Moving average')


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('fix_no.mat');
figure
plot(fix_no)
hold on;
window_size = str2double(get(handles.edit_windows_size,'String'));
plot(moving(fix_no,window_size),'r');
title('Plot of the number of fixation in the experminents' );
xlabel('Trial number');
ylabel('Number of fixation');
grid on;
legend('Reality','Moving average')


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('calib_no.mat');
figure
plot(calib_no)
hold on;
window_size = str2double(get(handles.edit_windows_size,'String'));
plot(moving(calib_no,window_size),'r');
title('Plot of the number of calibrations in the experminents' );
xlabel('Trial number');
ylabel('Number of calibrations');
grid on;
legend('Reality','Moving average')


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('STATS.mat');
figure
plot(STATS(1,:));
hold on;
window_size = str2double(get(handles.edit_windows_size,'String'));
plot(moving(STATS(1,:),window_size),'r');
title('Plot of the minimum distances from refrence point in the experminents' );
xlabel('Trial number');
ylabel('Minimum distance');
grid on;
legend('Reality','Moving average')


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('STATS.mat');
figure
plot(STATS(2,:));
hold on;
window_size = str2double(get(handles.edit_windows_size,'String'));
plot(moving(STATS(2,:),window_size),'r');
title('Plot of the maximum distances from refrence point in the experminents' );
xlabel('Trial number');
ylabel('Maximum distance');
grid on;
legend('Reality','Moving average')


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('STATS.mat');
figure
plot(STATS(3,:));
hold on;
window_size = str2double(get(handles.edit_windows_size,'String'));
plot(moving(STATS(3,:),window_size),'r');
title('Plot of the mean of distances from refrence point in the experminents' );
xlabel('Trial number');
ylabel('Mean distance');
grid on;
legend('Reality','Moving average')

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('STATS.mat');
figure
plot(STATS(4,:));
hold on;
window_size = str2double(get(handles.edit_windows_size,'String'));
plot(moving(STATS(4,:),window_size),'r');
title('Plot of the median of distances from refrence point in the experminents' );
xlabel('Trial number');
ylabel('Median distance');
grid on;
legend('Reality','Moving average')


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('STATS.mat');
figure
plot(STATS(5,:));
hold on;
window_size = str2double(get(handles.edit_windows_size,'String'));
plot(moving(STATS(5,:),window_size),'r');
title('Plot of the Varaince of distances from refrence point in the experminents' );
xlabel('Trial number');
ylabel('Variance of distances');
grid on;
legend('Reality','Moving average')


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('STATS.mat');
figure
plot(STATS(6,:));
hold on;
window_size = str2double(get(handles.edit_windows_size,'String'));
plot(moving(STATS(6,:),window_size),'r');
title('Plot of the Standard Deviation of distances from refrence point in the experminents' );
xlabel('Trial number');
ylabel('STD of distance');
grid on;
legend('Reality','Moving average')



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_windows_size_Callback(hObject, eventdata, handles)
% hObject    handle to edit_windows_size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_windows_size as text
%        str2double(get(hObject,'String')) returns contents of edit_windows_size as a double


% --- Executes during object creation, after setting all properties.
function edit_windows_size_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_windows_size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[finename pathname] = uigetfile({'*.mat'},'File Selector');
set(handles.edit_path,'String', pathname)



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
folder  = get(handles.edit_path,'String');
str1 =  'Experiment_binned_stats.mat';
E = load(strcat(folder, str1));
E1 =  num2str(E.S(1)); set(handles.text_min, 'String',E1);
E2 =  num2str(E.S(2)); set(handles.text_max, 'String',E2);
E3 =  num2str(E.S(3)); set(handles.text_mean, 'String',E3);
E4 =  num2str(E.S(4)); set(handles.text_median, 'String',E4);
E5 =  num2str(E.S(5)); set(handles.text_var, 'String',E5);
E6 =  num2str(E.S(6)); set(handles.text_STD, 'String',E6);
load('STATS.mat')
STATS = [STATS (E.S)']
save('STATS.mat','STATS');

str2 = 'Events_number_vector.mat';
 F = load(strcat(folder, str2));
 FF = sum(F.Events_size_vector);
 F1 =  num2str(FF); set(handles.text_event, 'String',F1);
 load('event_no.mat');
 event_no = [event_no FF];
 save('event_no.mat','event_no');

 str3  =  'EyeSample_number_vector.mat';
 G =  load(strcat(folder, str3));
 GG  = sum(G.EyeSample_no_vector);
 G1 =  num2str(GG); set(handles.text_fixation, 'String',G1);
 load('fix_no.mat')
 fix_no = [fix_no GG];
 save('fix_no.mat','fix_no');

 str4 =  'EyeCalbration_number_vector.mat';
 H = load(strcat(folder, str4));
 HH = sum(H.EyeCalbration_no_vector);
 H1 =  num2str(HH); set(handles.text_calib, 'String',H1);
 load('calib_no.mat');
 calib_no = [calib_no  HH];
 save('calib_no.mat','calib_no');
 
  TRIAL_SIZE  =  length(F.Events_size_vector);
  I1  =  num2str(TRIAL_SIZE);
  set(handles.text_trial,'String',I1);
  load('trial_no.mat');
  trial_no = [trial_no TRIAL_SIZE];
  save('trial_no.mat','trial_no');
  

function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
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
load('trial_no.mat');
figure
plot(trial_no)
hold on;
window_size = str2double(get(handles.edit_windows_size,'String'));
plot(moving(trial_no,window_size),'r');
title('Plot of the number of trials in the experminents' );
xlabel('Experiment number');
ylabel('Number of trials');
grid on;
legend('Reality','Moving average')
