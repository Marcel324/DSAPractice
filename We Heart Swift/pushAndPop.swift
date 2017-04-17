//Simple Queue functions for pushing and poppping

func push(_ number: Int, _ queue: inout [Int]) {
    
    queue.append(number)
}

func pop(_ queue: inout [Int]) -> Int? {
    guard queue.count >= 1 else {return nil}
    
    return queue.removeFirst()
}
