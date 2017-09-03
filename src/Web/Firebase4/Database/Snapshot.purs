module Web.Firebase4.Database.Snapshot (
    val, exists, forEach, key, numChildren
) where

import Control.Monad.Eff (Eff)
import Data.Foreign (Foreign)
import Prelude (Unit)
import Web.Firebase4.Type (FIREBASE, Snapshot)

foreign import val :: Snapshot → Foreign

foreign import exists :: Snapshot → Boolean

foreign import forEach :: forall eff. Snapshot -> (Snapshot -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) Unit

foreign import key :: Snapshot → String

foreign import numChildren :: Snapshot -> Int
