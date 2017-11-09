function varargout = gui_ta(varargin)
% GUI_TA MATLAB code for gui_ta.fig
%      GUI_TA, by itself, creates a new GUI_TA or raises the existing
%      singleton*.
%
%      H = GUI_TA returns the handle to a new GUI_TA or the handle to
%      the existing singleton*.
%
%      GUI_TA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_TA.M with the given input arguments.
%
%      GUI_TA('Property','Value',...) creates a new GUI_TA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_ta_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_ta_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_ta

% Last Modified by GUIDE v2.5 26-Oct-2017 10:25:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_ta_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_ta_OutputFcn, ...
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


% --- Executes just before gui_ta is made visible.
function gui_ta_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_ta (see VARARGIN)

% Choose default command line output for gui_ta
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_ta wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.
function varargout = gui_ta_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in add_row.
function add_row_Callback(hObject, eventdata, handles)
data = get(handles.datatabel, 'data');
[m,n]= size(data);
i = 1;
for k = 1:m;
    for j = 6:7;
        if strcmp(data(k,j),'normal')
            
        end
    end
end
disp(d);
disp(m);
disp(n);
data(end+1,:)= {''};
set(handles.datatabel,'data',data)
%oldData = get(handles.datatabel,'Data');
%newData = [oldData; newRow];
%set(handles.datatable,'Data',newData);
% hObject    handle to add_row (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in browse_file.
function browse_file_Callback(hObject, eventdata, handles)
% hObject    handle to browse_file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in normalisasi.
function normalisasi_Callback(hObject, eventdata, handles)
% hObject    handle to normalisasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in training_menu.
function training_menu_Callback(hObject, eventdata, handles)
disp('First Button was pressed.');
set(handles.uipanel1,'Title','Input Data Training');
set(handles.uipanel2,'visible','off');
set(handles.uipanel1,'visible','on');
guidata(hObject, handles);
% hObject    handle to training_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in testing_menu.
function testing_menu_Callback(hObject, eventdata, handles)
disp('Second Button was pressed.');
set(handles.uipanel1,'Title','Input Data Testing');
set(handles.uipanel2,'visible','off');
set(handles.uipanel1,'visible','on');
guidata(hObject, handles);
% hObject    handle to testing_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes during object creation, after setting all properties.
function uipanel2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes on button press in back_button.
function back_button_Callback(hObject, eventdata, handles)
set(handles.uipanel1,'visible','off');
set(handles.uipanel2,'visible','on');
% hObject    handle to back_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes during object creation, after setting all properties.
function datatabel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to datatabel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes when entered data in editable cell(s) in datatabel.
function datatabel_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to datatabel (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
%   handles    structure with handles and user data (see GUIDATA)
