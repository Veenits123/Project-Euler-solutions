{- 
 - Solution to Project Euler problem 40
 - By Nayuki Minase
 - 
 - http://nayuki.eigenstate.org/page/project-euler-solutions
 - https://github.com/nayuki/Project-Euler-solutions
 -}


digits 0 = [0]
digits n = reverse (digits' n)
digits' 0 = []
digits' n = (mod n 10) : (digits' (div n 10))

decimal = concat $ map digits [1..]  -- Infinite list of digits: [1,2,3,4,5,6,7,8,9,1,0,1,1,1,2,1,3,1,4,...]

ans = product [decimal !! (10^i - 1) | i <- [0..6]]

main = putStrLn (show ans)
