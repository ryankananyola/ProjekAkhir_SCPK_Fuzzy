function varargout = FuzzyNovelis(varargin)
% FUZZYNOVELIS MATLAB code for FuzzyNovelis.fig
%      FUZZYNOVELIS, by itself, creates a new FUZZYNOVELIS or raises the existing
%      singleton*.
%
%      H = FUZZYNOVELIS returns the handle to a new FUZZYNOVELIS or the handle to
%      the existing singleton*.
%
%      FUZZYNOVELIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUZZYNOVELIS.M with the given input arguments.
%
%      FUZZYNOVELIS('Property','Value',...) creates a new FUZZYNOVELIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FuzzyNovelis_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FuzzyNovelis_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FuzzyNovelis

% Last Modified by GUIDE v2.5 12-Jun-2024 15:04:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FuzzyNovelis_OpeningFcn, ...
                   'gui_OutputFcn',  @FuzzyNovelis_OutputFcn, ...
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


% --- Executes just before FuzzyNovelis is made visible.
function FuzzyNovelis_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FuzzyNovelis (see VARARGIN)

% Choose default command line output for FuzzyNovelis
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FuzzyNovelis wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FuzzyNovelis_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function jmlNovel_Callback(hObject, eventdata, handles)
% hObject    handle to jmlNovel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jmlNovel as text
%        str2double(get(hObject,'String')) returns contents of jmlNovel as a double


% --- Executes during object creation, after setting all properties.
function jmlNovel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jmlNovel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pengeluaran_Callback(hObject, eventdata, handles)
% hObject    handle to pengeluaran (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pengeluaran as text
%        str2double(get(hObject,'String')) returns contents of pengeluaran as a double


% --- Executes during object creation, after setting all properties.
function pengeluaran_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pengeluaran (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

SliderValue = round(get(hObject, 'Value'));
set(handles.Rating, 'String' , num2str(SliderValue));


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function Rating_Callback(hObject, eventdata, handles)
% hObject    handle to Rating (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rating as text
%        str2double(get(hObject,'String')) returns contents of Rating as a double


% --- Executes during object creation, after setting all properties.
function Rating_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rating (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in prosesButton.
function prosesButton_Callback(hObject, eventdata, handles)
% hObject    handle to prosesButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Mengambil nilai dari inputan user
jumlahNovel = str2double(get(handles.jmlNovel, 'String'));
if jumlahNovel >= 80
    jumlahNovel = 80;
end

pengeluaran = str2double(get(handles.pengeluaran, 'String'));
if pengeluaran >= 60
    pengeluaran = 60;
end

rating = str2double(get(handles.Rating, 'String'));

%% Error handling jika user menginput NULL atau negatif
if jumlahNovel < 0 || pengeluaran < 0 || isnan(jumlahNovel) || isnan(pengeluaran) || isnan(rating)
    errordlg('Input tidak valid, harap masukkan nilai yang valid.', 'Error');
    set(handles.jmlNovel, 'String', "");
    set(handles.pengeluaran, 'String', "");
    set(handles.hasilKinerja, 'String', "");
    set(handles.hasilSaran, 'String', "");
else
%Membaca file fuzzy yang sudah dibuat
fis = readfis('FuzzyNovelis.fis');
%Mengitung hasil
result = evalfis(fis, [jumlahNovel, pengeluaran, rating]);

%Menampilkan Hasil
if result <= 2
    set(handles.hasilKinerja, 'String', "Kurang Bagus");
    set(handles.hasilSaran, 'String', "Perbaiki Kinerja");
elseif result > 2 && result < 8
    set(handles.hasilKinerja, 'String', "Biasa");
    set(handles.hasilSaran, 'String', "Pertahankan");
elseif result >= 8
    set(handles.hasilKinerja, 'String', "Bagus");
    set(handles.hasilSaran, 'String', "Beri Bonus");
end
end

% --- Executes on button press in resetButton.
function resetButton_Callback(hObject, eventdata, handles)
% hObject    handle to resetButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.jmlNovel, 'String' , "");
set(handles.pengeluaran, 'String' , "");
set(handles.Rating, 'String' , "");
set(handles.hasilKinerja, 'String' , "");
set(handles.hasilSaran, 'String' , "");
set(handles.slider2, 'String' , "");


function hasilKinerja_Callback(hObject, eventdata, handles)
% hObject    handle to hasilKinerja (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilKinerja as text
%        str2double(get(hObject,'String')) returns contents of hasilKinerja as a double


% --- Executes during object creation, after setting all properties.
function hasilKinerja_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilKinerja (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilSaran_Callback(hObject, eventdata, handles)
% hObject    handle to hasilSaran (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilSaran as text
%        str2double(get(hObject,'String')) returns contents of hasilSaran as a double


% --- Executes during object creation, after setting all properties.
function hasilSaran_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilSaran (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
