module typeclass

import Data.String

public export
interface Serialize a where
  serialize: a -> String

Show a => Serialize a where
  serialize a = show a

public export
interface Deserialize a where
  deserialize: String -> Maybe a

Deserialize String where
  deserialize str = Just str

Deserialize Int where
  deserialize str = parseInteger {a=Int} (str)

Deserialize Integer where
  deserialize str = parseInteger {a=Integer} (str)

Deserialize Double where
  deserialize str = parseDouble(str)

Deserialize Char where
  deserialize str = case unpack(str) of
    c :: Nil => Just c
    _ => Nothing
