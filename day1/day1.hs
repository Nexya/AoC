-- day 1 advent of code



main :: IO ()
main = do
    input <- readFile "day1_input.txt"

    let numbers = (map . map) read $ map words $ lines input
    let list1 = map head numbers
    let list2 = map last numbers

    let sort1 = sort list1
    let sort2 = sort list2

    return (sort1, sort2)

part1 :: IO ()
part1 = do
    (sort1, sort2) <- main
    let dif   = zipWith (-) sort2 sort1
    let total = sum $ map abs dif
    print total

