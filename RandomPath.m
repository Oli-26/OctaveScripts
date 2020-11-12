n = i*2;
i = 20;
grid = zeros(i,n);
for(itNumber = 1:i)
  for(runs = 1 : 2000)
    x=n/2;
    for(iteration = 1:itNumber)
      if(round(rand(1)) == 0)
        x += 1; 
      else
        x -= 1;
      endif
      grid(itNumber,x)=grid(itNumber,x) + 1;
    endfor
  endfor
   imagesc(grid)
   hold on
endfor
 

