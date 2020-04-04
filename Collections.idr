module Collections

-- export
-- interface Map k v where
--   get: k -> Maybe v
--   set: k -> v -> Unit

export
get: (list: List (k, v)) -> (key: k) -> {auto eq: Eq k} -> Maybe v
get [] _ = Nothing
get ((xk, xv)::xs) key with (key == xk)
  | True = Just xv
  | False = get xs key
