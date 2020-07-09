
extension Array {
    public subscript(safeIndex index: Int) -> Iterator.Element? {
        return index >= 0 && index < endIndex ? self[index] : nil
    }
}

let numbers = [10, 23, 12, 63, 1, 3]
let number1 = numbers[safeIndex: 0] // = 10
let number2 = numbers[safeIndex: 6] // = nil
