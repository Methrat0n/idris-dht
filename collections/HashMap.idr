module collections.HashMap

public export
interface HashMap k v where -- //TODO
  get: k -> Maybe v
  set: k -> v -> Unit

-- TODO define instance of Functor, Monad and all the other

export
Serialize k, Serialize v => Serialize (HashMap k v) where
  serialize map =  -- //TODO

-- get: (key: k) -> (list: List (k, v)) -> {auto eq: Eq k} -> Maybe v
-- get _ [] = Nothing
-- get key ((xk, xv)::xs) with (key == xk)
--   | True = Just xv
--   | False = get key xs