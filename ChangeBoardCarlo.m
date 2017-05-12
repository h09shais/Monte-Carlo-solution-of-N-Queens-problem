function boardArr = ChangeBoardCarlo(boardArr, row, col, noOfQueen)
    for i = row : noOfQueen           
        for j = randperm(noOfQueen)
            if (CheckValidMove(boardArr, i, j, noOfQueen) == 1)                   
                boardArr(i, j) = 1;                
                boardArr = ChangeBoardCarlo(boardArr, i, j, noOfQueen);
                if( length( boardArr( boardArr == 1)) == noOfQueen) 
                    break;
                end
                boardArr(i, j) = 0;                   
            end
        end
    end
end
