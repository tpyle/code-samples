import Text.Printf

printNum :: Integer -> IO()
printNum n = printf "%-3d" n

printStr :: [Char]  -> IO()
printStr s = printf "%-3s" s

printCol :: Integer -> Integer -> IO ()
printCol 0 0 = do
    printStr ""
    printCol 0 1
printCol 0 5 = do
    printNum 5
    printf "\n"
    return ()
printCol 0 c = do
    printNum c
    printCol 0 (c+1)
printCol r 0 = do
    printNum r
    printCol r 1
printCol r 5 = do
    printNum (r*5)
    printf "\n"
    return ()
printCol r c = do
    printNum (r*c)
    printCol r (c+1)

printRow :: Integer -> IO ()
printRow 0 = do
    printCol 0 0
    printRow 1
printRow 6 = return ()
printRow n = do
    printCol n 0
    printRow (n+1)

main = do
    printRow 0
