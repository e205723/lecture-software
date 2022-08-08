x4 a b c d = d
x1 a b c d = x4 d b c a
x2 a b c d = x4 a d c b
x3 a b c d = x4 d b d c

main = do
    print (x1 1 2 3 4)
    print (x2 1 2 3 4)
    print (x3 1 2 3 4)
    print (x4 1 2 3 4)
