function GaussianPrimes3D
size = 21


grid = zeros(size,size,size);
min = -floor(size/2)
max = floor(size/2)

for(i = min:max)
  for(j = min:max)
    for(z = min:max)  
      if(i!= 0 && j!= 0 && z!= 0)      
        if(isPrime(abs(i)^2 + abs(j)^2 + abs(z)^2) == 1)
          grid((i+max+1),(j+max+1),(z+max+1)) = 1;
          'found!'
        endif
      endif
    endfor
  endfor
endfor

while(true)
  for(i = min:max)
    slice(grid,0,0,i+max+1)
    pause(0.2)
  endfor
endwhile
  'finished!'
   
    
    
function bool = isPrime(n)
  for(diviser = 2:sqrt(n))
    if(mod(abs(n),diviser) == 0)
       bool = false;
       return
    endif
  endfor
  bool = true;
