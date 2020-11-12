function TripleSumPrimes
size = 41


grid = zeros(size,size,size);
min = -floor(size/2)
max = floor(size/2)

for(i = min:max)
  for(j = min:max)
    for(z = min:max)  
      if(abs(i) != abs(j) && abs(i)!= abs(z) && abs(j) != abs(z))      
        if(isPrime(abs(i)) && isPrime(abs(j)) && isPrime(abs(z)) && isPrime(abs(abs(i)) + abs(abs(j)) + abs(abs(z))) == 1)
          grid((i+max+1),(j+max+1),(z+max+1)) = 1;
          %'found!'
        endif
      endif
    endfor
  endfor
endfor

% offset of 11 : hence slice 12 is z = 1

%slice(grid, 0,0,12)
while(true)
  for(i = min:max)
    
    slice(grid,0,0,i+max+1)
    pause(0.2)
  endfor
endwhile
  'finished!'
   
    
    
function bool = isPrime(n)
  for(diviser = 2:n-1)
    if(mod(abs(n),diviser) == 0)
       bool = false;
       return
    endif
  endfor
  bool = true;
