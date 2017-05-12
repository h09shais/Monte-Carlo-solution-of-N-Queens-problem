function ValidMoveFlag = CheckValidMove (boardArr, row, col, noOfQueen)
            
    ValidMoveFlag = 1;
    for i = 1:noOfQueen
        if (boardArr(row, i) == 1)
            ValidMoveFlag = 0;
        end
    end
    for i = 1:noOfQueen
        if (boardArr(i, col) == 1)  
            ValidMoveFlag = 0;
        end
    end
    tempCol = col + 1; 
 
    for i = row + 1 : noOfQueen       
        if (tempCol < noOfQueen)              
            if (boardArr(i, tempCol) == 1)
                ValidMoveFlag = 0;
            else
                tempCol = tempCol + 1;
            end
        else
            break;
        end
    end
    tempCol = col - 1;
    for i = row - 1:-1:1          
        if (tempCol >= 1)              
            if (boardArr(i, tempCol) == 1)
                ValidMoveFlag = 0;
            else
                tempCol = tempCol - 1;
            end
        else
            break;
        end
    end
    tempCol = col - 1;
    for i = row + 1 : noOfQueen          
        if (tempCol >= 1)               
            if (boardArr(i, tempCol) == 1)
                ValidMoveFlag = 0;
            else
                tempCol = tempCol - 1;
            end
        else
            break;
        end
    end
    tempCol = col + 1;           
    for i = row - 1 : -1 : 1           
        if (tempCol < noOfQueen)               
            if (boardArr(i, tempCol) == 1)
                ValidMoveFlag = 0;
            else
                tempCol = tempCol + 1;
            end
        else
            break;
        end
    end
     
end
