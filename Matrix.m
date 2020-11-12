s = 10;
itAmount = 40;
size = 10;




grid = zeros(s,s);
finalGrid = zeros(s,s);



for(y = 1:s)
  for(x = 1:s)
    grid(x,y) = size*(x/(s) - 1/2) +size*(y/(s) - 1/2)*j;
    finalGrid(x,y) = itAmount+1;
  endfor
endfor

for(iteration = 1:itAmount)
  for(y = 1:s)
    for(x = 1:s)
      if(finalGrid(x,y) == itAmount+1)
        grid(x,y) = (grid(x,y)^grid(x,y)) + size*(x/s - 1/2) +size*(y/s - 1/2)*j;
        if(abs(grid(x,y)) > 10)
          finalGrid(x,y) = iteration;
        endif
       endif
    endfor
  endfor
endfor

imagesc(finalGrid)
"done"

 #&& y < s-1 && x < s-1 && x > 1 && y > 1

