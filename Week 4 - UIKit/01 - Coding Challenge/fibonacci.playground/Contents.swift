// Function that computes the list of the first 100 Fibonacci numbers and then prints each one.

func fibonacci(num: Int?) -> [Double]? {
    if let number = num {
        var arr: [Double] = [1, 1]
        
        for i in 2...number {
            let aux = arr[i - 2] + arr[i - 1]
            arr.append(aux)
        }
        
        return arr
    }
    
    return nil
}

if let first100FibonacciNumbers = fibonacci(num: 100) {
    print(first100FibonacciNumbers)
} 
