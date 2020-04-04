module typeclass

export
interface Serialize a where
  serialize: a -> String

export
Serialize String where
  serialize: str -> str

export
interface Deserialize a where
  deserialize: String -> a
