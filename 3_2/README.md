#1

## コード

以下のようなHaskellファイルを記述した。

```
x1 a b c d = a
x2 a b c d = b
x3 a b c d = c
x4 a b c d = d

main = do
    print (x1 1 2 3 4)
    print (x2 1 2 3 4)
    print (x3 1 2 3 4)
    print (x4 1 2 3 4)
```

## 実行結果

以下のような実行結果になった。

```
1
2
3
4
```

#2

## コード

以下のようなHaskellファイルを記述した。

```
x1 = \a -> \b -> \c -> \d -> a
x2 = \a -> \b -> \c -> \d -> b
x3 = \a -> \b -> \c -> \d -> c
x4 = \a -> \b -> \c -> \d -> d

main = do
    print (x1 1 2 3 4)
    print (x2 1 2 3 4)
    print (x3 1 2 3 4)
    print (x4 1 2 3 4)
```

## 実行結果

以下のような実行結果になった。

```
1
2
3
4
```

#3

## コード

以下のようなHaskellファイルを記述した。

```
x1 a b c d = a
x2 a b c d = b
x3 a b c = x2 a c b
x4 a b c d = x3 a b d c

main = do
    print (x1 1 2 3 4)
    print (x2 1 2 3 4)
    print (x3 1 2 3 4)
    print (x4 1 2 3 4)
```

## 実行結果

以下のような実行結果になった。

```
1
2
3
4
```

#4

## コード

以下のようなHaskellファイルを記述した。

```
x4 a b c d = d
x1 a b c d = x4 d b c a
x2 a b c d = x4 a d c b
x3 a b c d = x4 d b d c

main = do
    print (x1 1 2 3 4)
    print (x2 1 2 3 4)
    print (x3 1 2 3 4)
    print (x4 1 2 3 4)
```

## 実行結果

以下のような実行結果になった。

```
1
2
3
4
```

#5

ghciで`:l <file name>`として1, 2, 3, 4のファイルを読み込んで`:t <function name>`でx1, x2, x3, x4の型を調べた

## 1

```
*Main> :t x1
x1 :: p1 -> p2 -> p3 -> p4 -> p1
*Main> :t x2
x2 :: p1 -> p2 -> p3 -> p4 -> p2
*Main> :t x3
x3 :: p1 -> p2 -> p3 -> p4 -> p3
*Main> :t x4
x4 :: p1 -> p2 -> p3 -> p4 -> p4
```

## 2

```
*Main> :t x1
x1 :: p1 -> p2 -> p3 -> p4 -> p1
*Main> :t x2
x2 :: p1 -> p2 -> p3 -> p4 -> p2
*Main> :t x3
x3 :: p1 -> p2 -> p3 -> p4 -> p3
*Main> :t x4
x4 :: p1 -> p2 -> p3 -> p4 -> p4
```

## 3

```
*Main> :t x1
x1 :: p1 -> p2 -> p3 -> p4 -> p1
*Main> :t x2
x2 :: p1 -> p2 -> p3 -> p4 -> p2
*Main> :t x3
x3 :: p1 -> p2 -> p3 -> p4 -> p3
*Main> :t x4
x4 :: p1 -> p2 -> p3 -> p4 -> p4
```

## 4

```
*Main> :t x1
x1 :: p1 -> p2 -> p3 -> p4 -> p1
*Main> :t x2
x2 :: p1 -> p2 -> p3 -> p4 -> p2
*Main> :t x3
x3 :: p1 -> p2 -> p3 -> p4 -> p3
*Main> :t x4
x4 :: p1 -> p2 -> p3 -> p4 -> p4
```

## 5

```
*Main> :t x1
x1 :: p1 -> p2 -> p3 -> p4 -> p1
*Main> :t x2
x2 :: p1 -> p2 -> p3 -> p4 -> p2
*Main> :t x3
x3 :: p1 -> p2 -> p3 -> p4 -> p3
*Main> :t x4
x4 :: p1 -> p2 -> p3 -> p4 -> p4
```

## 検証結果

すべての実装でx1, x2, x3, x4が同じ型になることが確認できた
