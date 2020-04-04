module Main

import Collections

list: List (String, String)
list = [("1", "1"), ("2", "2")]

main: IO ()
main = case get(list)("2") of
  Just res => putStrLn(res)
  Nothing => putStrLn("nope")
