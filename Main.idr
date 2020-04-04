module Main

import collections.HashMap

list: List (String, String)
list = [("1", "1"), ("2", "2")]

main: IO ()
main = case get("2")(list) of
  Just res => putStrLn(res)
  Nothing => putStrLn("nope")
