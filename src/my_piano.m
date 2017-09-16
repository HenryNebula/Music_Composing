function varargout = my_piano(varargin)
% MY_PIANO MATLAB code for my_piano.fig
%      MY_PIANO, by itself, creates a new MY_PIANO or raises the existing
%      singleton*.
%
%      H = MY_PIANO returns the handle to a new MY_PIANO or the handle to
%      the existing singleton*.
%
%      MY_PIANO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MY_PIANO.M with the given input arguments.
%
%      MY_PIANO('Property','Value',...) creates a new MY_PIANO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before my_piano_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to my_piano_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help my_piano

% Last Modified by GUIDE v2.5 21-Jul-2017 16:37:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @my_piano_OpeningFcn, ...
                   'gui_OutputFcn',  @my_piano_OutputFcn, ...
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


% --- Executes just before my_piano is made visible.
function my_piano_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to my_piano (see VARARGIN)

% Choose default command line output for my_piano
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global keyboard time choice
low_bound = 220;
time = 1;
choice = 1;
table = 2.^([-4:1:19]/12);
keyboard = low_bound * table;
% UIWAIT makes my_piano wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = my_piano_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in F3_key.
function F3_key_Callback(hObject, eventdata, handles)
% hObject    handle to F3_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(1);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.F3_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.F3_key,'FontSize',size_font);

% --- Executes on button press in A3_key.
function A3_key_Callback(hObject, eventdata, handles)
% hObject    handle to A3_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(5);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.A3_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.A3_key,'FontSize',size_font);

% --- Executes on button press in G3_key.
function G3_key_Callback(hObject, eventdata, handles)
% hObject    handle to G3_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(3);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.G3_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.G3_key,'FontSize',size_font);

% --- Executes on button press in B3_key.
function B3_key_Callback(hObject, eventdata, handles)
% hObject    handle to B3_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(7);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.B3_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.B3_key,'FontSize',size_font);

% --- Executes on button press in bG3_key.
function bG3_key_Callback(hObject, eventdata, handles)
% hObject    handle to bG3_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(2);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.bG3_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.bG3_key,'FontSize',size_font);

% --- Executes on button press in C4_key.
function C4_key_Callback(hObject, eventdata, handles)
% hObject    handle to C4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(8);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.C4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.C4_key,'FontSize',size_font);

% --- Executes on button press in E4_key.
function E4_key_Callback(hObject, eventdata, handles)
% hObject    handle to E4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(12);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.E4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.E4_key,'FontSize',size_font);

% --- Executes on button press in D4_key.
function D4_key_Callback(hObject, eventdata, handles)
% hObject    handle to D4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(10);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.D4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.D4_key,'FontSize',size_font);
% --- Executes on button press in F4_key.
function F4_key_Callback(hObject, eventdata, handles)
% hObject    handle to F4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(13);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.F4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.F4_key,'FontSize',size_font);

% --- Executes on button press in G4_key.
function G4_key_Callback(hObject, eventdata, handles)
% hObject    handle to G4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(15);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.G4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.G4_key,'FontSize',size_font);

% --- Executes on button press in B4_key.
function B4_key_Callback(hObject, eventdata, handles)
% hObject    handle to B4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(19);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.B4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.B4_key,'FontSize',size_font);

% --- Executes on button press in A4_key.
function A4_key_Callback(hObject, eventdata, handles)
% hObject    handle to A4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(17);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.A4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.A4_key,'FontSize',size_font);

% --- Executes on button press in C5_key.
function C5_key_Callback(hObject, eventdata, handles)
% hObject    handle to C5_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(20);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.C5_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.C5_key,'FontSize',size_font);

% --- Executes on button press in D5_key.
function D5_key_Callback(hObject, eventdata, handles)
% hObject    handle to D5_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(22);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.D5_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.D5_key,'FontSize',size_font);

% --- Executes on button press in E5_key.
function E5_key_Callback(hObject, eventdata, handles)
% hObject    handle to E5_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(24);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.E5_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.E5_key,'FontSize',size_font);

% --- Executes on button press in bA3_key.
function bA3_key_Callback(hObject, eventdata, handles)
% hObject    handle to bA3_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(4);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.bA3_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.bA3_key,'FontSize',size_font);

% --- Executes on button press in bB3_key.
function bB3_key_Callback(hObject, eventdata, handles)
% hObject    handle to bB3_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(6);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.bB3_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.bB3_key,'FontSize',size_font);

% --- Executes on button press in bD4_key.
function bD4_key_Callback(hObject, eventdata, handles)
% hObject    handle to bD4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(9);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.bD4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.bD4_key,'FontSize',size_font);

% --- Executes on button press in bE4_key.
function bE4_key_Callback(hObject, eventdata, handles)
% hObject    handle to bE4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(11);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.bE4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.bE4_key,'FontSize',size_font);

% --- Executes on button press in bG4_key.
function bG4_key_Callback(hObject, eventdata, handles)
% hObject    handle to bG4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(14);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.bG4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.bG4_key,'FontSize',size_font);

% --- Executes on button press in bA4_key.
function bA4_key_Callback(hObject, eventdata, handles)
% hObject    handle to bA4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(16);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.bA4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.bA4_key,'FontSize',size_font);

% --- Executes on button press in bB4_key.
function bB4_key_Callback(hObject, eventdata, handles)
% hObject    handle to bB4_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(18);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.bB4_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.bB4_key,'FontSize',size_font);

% --- Executes on button press in bE5_key.
function bE5_key_Callback(hObject, eventdata, handles)
% hObject    handle to bE5_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(23);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.bE5_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.bE5_key,'FontSize',size_font);

% --- Executes on button press in bD5_key.
function bD5_key_Callback(hObject, eventdata, handles)
% hObject    handle to bD5_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global keyboard time harmonic choice
tune = keyboard(21);
song = key_press(tune,time,harmonic,choice);
sound(song,8000)
size_font = 28;
set(handles.bD5_key,'FontSize',size_font);
pause(0.3)
size_font = 20;
set(handles.bD5_key,'FontSize',size_font);

% --- Executes on selection change in tune_choice.
function tune_choice_Callback(hObject, eventdata, handles)
% hObject    handle to tune_choice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tune_choice contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tune_choice


% --- Executes during object creation, after setting all properties.
function tune_choice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tune_choice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in playbutton.
function playbutton_Callback(hObject, eventdata, handles)
% hObject    handle to playbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global finish
sound(finish,8000);

% --- Executes on button press in extractbutton.
function extractbutton_Callback(hObject, eventdata, handles)
% hObject    handle to extractbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global song Fs pathname
new_info = 'Please wait...Extraction has begun....';
set(handles.text2,'String',new_info);
pause(0.5);
[patch,combine_harmo] = song_analysis(song,Fs);
filename = 'song_info.mat';
whole_addr = [pathname, filename];
new_info = ['Now you can check the output data in this address: ',whole_addr];
set(handles.text2,'String',new_info);
save(whole_addr,'patch','combine_harmo');

% --- Executes on selection change in ins_choice.
function ins_choice_Callback(hObject, eventdata, handles)
% hObject    handle to ins_choice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ins_choice contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ins_choice
var = get(handles.ins_choice,'Value');
global choice
switch var
    case 2
        choice = 0;
    case 3
        choice = 1;
    otherwise
        choice = 1;
end 

% --- Executes during object creation, after setting all properties.
function ins_choice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ins_choice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in loadbutton.
function loadbutton_Callback(hObject, eventdata, handles)
% hObject    handle to loadbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global song
global Fs
global pathname
[filename, pathname] = uigetfile('*.wav', 'Pick a Wave file');
whole_addr = ['Reload: ',pathname, filename];

[song,Fs] = audioread([pathname, filename]);
set(handles.text2,'String',whole_addr);
% sound(song,Fs)


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in NotationButton.
function NotationButton_Callback(hObject, eventdata, handles)
% hObject    handle to NotationButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile('*.mat', 'Pick a Matlab Data file');
temp = load([pathname,filename]);
fname = fieldnames(temp);
note = getfield(temp,char(fname));
var = get(handles.tune_choice,'Value');
switch var
    case 2
        T = 'C';
    case 3
        T = 'D';
    case 4
        T = 'E';
    case 5
        T = 'F';
    case 6
        T = 'G';
    case 7
        T = 'A';
    case 8
        T = 'B';
    otherwise
        T = 'C';
end 
global harmonic
global finish
global choice
finish = compose(harmonic,note,T,choice);


% --- Executes during object creation, after setting all properties.
function NotationButton_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NotationButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% harmo = load('m4.mat');
harmo = load('harmonic.mat');
global harmonic
harmonic = harmo.combine_harmo;
% harmonic = harmo.m4;


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
global time choice
if strcmp(eventdata.Key,'1') == 1
    time = 0.5;
    num_t = 2;
    set(handles.beat_choice,'Value',num_t);
elseif strcmp(eventdata.Key,'2') == 1
    time = 1;
    num_t = 3;
    set(handles.beat_choice,'Value',num_t);
elseif strcmp(eventdata.Key,'3') == 1
    time = 2;
    num_t = 4;
    set(handles.beat_choice,'Value',num_t);  
elseif strcmp(eventdata.Key,'4') == 1
    time = 3;
    num_t = 5;
    set(handles.beat_choice,'Value',num_t);
elseif strcmp(eventdata.Key,'q') == 1
    choice = 0;
    num_t = 2;
    set(handles.ins_choice,'Value',num_t);
elseif strcmp(eventdata.Key,'w') == 1
    choice = 1;
    num_t = 3;
    set(handles.ins_choice,'Value',num_t);
end
Key = eventdata.Key;
find_key(Key,hObject, eventdata, handles)

function [] = find_key(Key,hObject, eventdata, handles)
switch Key
    case 'r'
        F4_key_Callback(hObject,eventdata,handles)
    case 't'
        G4_key_Callback(hObject,eventdata,handles)
    case 'y'
        A4_key_Callback(hObject,eventdata,handles)
    case 'u'
        B4_key_Callback(hObject,eventdata,handles)
    case 'i' 
        C5_key_Callback(hObject,eventdata,handles)
    case 'o' 
        D5_key_Callback(hObject,eventdata,handles)
    case 'p'
        E5_key_Callback(hObject,eventdata,handles)
    case '5'
        bG4_key_Callback(hObject,eventdata,handles)
    case '6'
        bA4_key_Callback(hObject,eventdata,handles)
    case '7'
        bB4_key_Callback(hObject,eventdata,handles)
    case '9'
        bD5_key_Callback(hObject,eventdata,handles)
    case '0'
        bE5_key_Callback(hObject,eventdata,handles)
    case 'z'
        F3_key_Callback(hObject,eventdata,handles)
    case 'x'
        G3_key_Callback(hObject,eventdata,handles)
    case 'c'
        A3_key_Callback(hObject,eventdata,handles)
    case 'v'
        B3_key_Callback(hObject,eventdata,handles)
    case 'b' 
        C4_key_Callback(hObject,eventdata,handles)
    case 'n' 
        D4_key_Callback(hObject,eventdata,handles)
    case 'm'
        E4_key_Callback(hObject,eventdata,handles)
    case 's'
        bG3_key_Callback(hObject,eventdata,handles)
    case 'd'
        bA3_key_Callback(hObject,eventdata,handles)
    case 'f'
        bB3_key_Callback(hObject,eventdata,handles)
    case 'h'
        bD4_key_Callback(hObject,eventdata,handles)
    case 'j'
        bE4_key_Callback(hObject,eventdata,handles)
end

% --- Executes on selection change in beat_choice.
function beat_choice_Callback(hObject, eventdata, handles)
% hObject    handle to beat_choice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns beat_choice contents as cell array
%        contents{get(hObject,'Value')} returns selected item from beat_choice
global time
var = get(handles.beat_choice,'Value');
switch var
    case 2
        time = 0.5;
    case 3
        time = 1;
    case 4
        time = 2;
    case 5
        time = 3;
    otherwise
        time = 1;
end

% --- Executes during object creation, after setting all properties.
function beat_choice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beat_choice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
