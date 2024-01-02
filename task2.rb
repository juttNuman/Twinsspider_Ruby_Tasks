array=[1,5,4,6,7]
prime=Array.new


puts "Our array elements"
indx=0
while indx<5
    print array[indx]
indx +=1
end

i=0
while i<5
    count=0
    j=array[i]
    
    while j>0
        if array[i]%j==0
            count += 1
        end
        
       
     j -=1
    end
    
     if count==2
            prime.push(array[i])
        end
  
  
i +=1    
end


puts "\nthe prime numbers we have"
index=0
while index < 5
    puts prime[index]
 index +=1
end

print "the sum of prime numbers: "
indez=0
sum=0
result=0
while indez<5
    result = prime[indez].to_i
    sum = sum + result
    
indez +=1
end
puts "#{sum}"



