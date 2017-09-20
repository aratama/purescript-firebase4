module Web.Firebase4.Database.DataSnapshot (
    val, exists, forEach, key, numChildren
) where

import Control.Monad.Eff (Eff)
import Data.Foreign (Foreign)
import Prelude (Unit)
import Web.Firebase4.Type (FIREBASE)
import Web.Firebase4.Database.Type (DataSnapshot)

foreign import val :: DataSnapshot → Foreign

foreign import exists :: DataSnapshot → Boolean

foreign import forEach :: forall eff. DataSnapshot -> (DataSnapshot -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) Unit

foreign import key :: DataSnapshot → String

foreign import numChildren :: DataSnapshot -> Int
