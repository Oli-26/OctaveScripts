function GaussianPrimes
size = 21
grid = zeros(size);

min = -floor(size/2)
max = floor(size/2)

for(i = min:max)
  for(j = min:max)
    if(i == 0 && isPrime(abs(j)) && mod(abs(j),4) == 3)
      grid((i+max),(j+max)) = 1;
      'found!'
    endif
    if(j == 0 && isPrime(abs(i)) && mod(abs(i),4) == 3)
      grid((i+max),(j+max)) = 1;
      'found!'
    endif
    if(i!= 0 && j!= 0)      
      if(isPrime(abs(i)^2 + abs(j)^2) == 1)
        grid((i+max+1),(j+max+1)) = 1;
        'found!'
      endif
    endif
  endfor
endfor

imagesc(grid)
'finished!'
   
    
    
function bool = isPrime(n)
  for(diviser = 2:n-1)
    if(mod(abs(n),diviser) == 0)
       bool = false;
       return
    endif
  endfor
  bool = true;
