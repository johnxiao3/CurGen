function varargout = CurveGenerate(varargin)
% CURVEGENERATE MATLAB code for CurveGenerate.fig
%      CURVEGENERATE, by itself, creates a new CURVEGENERATE or raises the existing
%      singleton*.
%
%      H = CURVEGENERATE returns the handle to a new CURVEGENERATE or the handle to
%      the existing singleton*.
%
%      CURVEGENERATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CURVEGENERATE.M with the given input arguments.
%
%      CURVEGENERATE('Property','Value',...) creates a new CURVEGENERATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CurveGenerate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CurveGenerate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CurveGenerate

% Last Modified by GUIDE v2.5 21-Sep-2018 21:00:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CurveGenerate_OpeningFcn, ...
                   'gui_OutputFcn',  @CurveGenerate_OutputFcn, ...
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


% --- Executes just before CurveGenerate is made visible.
function CurveGenerate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CurveGenerate (see VARARGIN)

% Choose default command line output for CurveGenerate
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CurveGenerate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CurveGenerate_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes_main_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_main (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_main
xlabel('X');
ylabel('Y');
%set(gcf, 'WindowButtonMotionFcn', @mouseMove);

function mouseMove(hObject, eventdata,handles)
C = get (gca, 'CurrentPoint');
set(handles.e_X,'String','909');
set(handles.e_Y,'String',num2str(C(1,2),'%.2f'));
%title(gca, ['(X,Y) = (', num2str(C(1,1)), ', ',num2str(C(1,2)), ')']);

function e_X_Callback(hObject, eventdata, handles)
% hObject    handle to e_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e_X as text
%        str2double(get(hObject,'String')) returns contents of e_X as a double


% --- Executes during object creation, after setting all properties.
function e_X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e_Y_Callback(hObject, eventdata, handles)
% hObject    handle to e_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e_Y as text
%        str2double(get(hObject,'String')) returns contents of e_Y as a double


% --- Executes during object creation, after setting all properties.
function e_Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pop_F.
function pop_F_Callback(hObject, eventdata, handles)
% hObject    handle to pop_F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pop_F contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pop_F


% --- Executes during object creation, after setting all properties.
function pop_F_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pop_F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_Add.
function pb_Add_Callback(hObject, eventdata, handles)
% hObject    handle to pb_Add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function table_XY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to table_XY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Data',[]);


% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
C = get (gca, 'CurrentPoint');
set(handles.e_X,'String',num2str(C(1,1),'%.2f'));
set(handles.e_Y,'String',num2str(C(1,2),'%.2f'));


% --- Executes on button press in pb_pick.
function pb_pick_Callback(hObject, eventdata, handles)
% hObject    handle to pb_pick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
