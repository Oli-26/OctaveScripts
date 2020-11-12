function SuperPrimes
  size =101;
  grid = zeros(size);
  list = []
  min = -floor((size/2));
  max = -min;
  
  for(i = min:max)
    for(j = min:max)

      if(isPrime(abs(i)) == 1 && isPrime(abs(j)) == 1 && isPrime(abs(i)^2+abs(j)^2) == 1)
        if(j == 2)
           list = [list i];
        endif
        %'found'
        grid(i+max+1,j+max+1) = 1;
      endif 
    
    endfor 
  endfor 
  imagesc(grid)
  list
  'done'
      
function bool = isPrime(n)
  for(diviser = 2:sqrt(n))
    if(mod(abs(n),diviser) == 0)
       bool = false;
       return
    endif
  endfor
  bool = true;
