require 'benchmark'

def fibonacci(n)
    n <=1 ? n : fibonacci(n-1)+fibonacci(n-2)
end


#Benchmark.measure {puts fibonacci(50)}
 


# faster, iterative method
def fiboiter(n)
    temp1=0
    temp2=1
    fib=0
    (2..n).each do
        fib=temp1+temp2
        temp1=temp2
        temp2=fib
    end
    fib
end


#Benchmark.measure{puts fiboiter(1000)}

