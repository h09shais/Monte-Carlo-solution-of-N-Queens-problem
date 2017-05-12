close all;
clear all;
clc;
 
prompt = {'Please insert the number of Queen'};
dlg_title = 'Input Box (N-Queen)';
num_lines= 1;
 
answer  = inputdlg(prompt,dlg_title,num_lines);
answer  = str2num(answer{1});
 
NoOfQueen = answer;
 
boardArr = zeros(NoOfQueen);
          
t1 = tic;  
boardArr = ChangeBoardCarlo(boardArr, 1, 1, NoOfQueen);
CarloTime = toc(t1) 
 
b = zeros(NoOfQueen);
p = zeros(1,NoOfQueen);
q = zeros(1,NoOfQueen);
for i = 2 : 2 : length(p)
    p(1 , i) = 1;
end
for i = 1 : 2 : length(p)
    q(1 , i) = 1;
end
 
for i = 1 : NoOfQueen
    if mod(i,2)==0
        b(i , :) = p;
    else    
        b(i , :) = q;
    end
end
 
chessBoard = 2*ones(NoOfQueen) - b;
 
colors(1,:) = [ 1 1 1 ]; 
colors(2,:) = [ 0 0 0 ];
colors(3,:) = [ 0 1 0 ];
 
chessBoardRow = (chessBoard(:))';
boardArrRow = (boardArr(:))';
 
for i = 1:length(boardArr)
    for j = 1: length(boardArr)
        if boardArr(i, j) == 1
            chessBoard(i, j) = 3;
        end
    end
end
   
image(chessBoard)
colormap(colors)
