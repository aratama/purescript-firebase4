module Web.Firebase4.Database.Query (
    orderByKey, limitToFirst, limitToLast, 
    startAt, endAt, equalToWithKey, 
    startAtWithKey, endAtWithKey
) where 

import Data.Foreign (Foreign)
import Web.Firebase4.Database.Type (Query)

foreign import orderByKey :: forall eff. Query -> Query

foreign import limitToFirst :: forall eff. Int -> Query -> Query

foreign import limitToLast :: forall eff. Int -> Query -> Query

foreign import startAt :: forall eff. Foreign -> Query -> Query

foreign import endAt :: forall eff. Foreign -> Query -> Query

foreign import equalTo :: forall eff. Foreign -> Query -> Query

foreign import startAtWithKey :: forall eff. Foreign -> String -> Query -> Query

foreign import endAtWithKey :: forall eff. Foreign -> String -> Query -> Query

foreign import equalToWithKey :: forall eff. Foreign -> String -> Query -> Query


