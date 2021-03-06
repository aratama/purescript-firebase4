module Web.Firebase4.Database.Database (
    ref
) where

import Control.Monad.Eff (Eff)
import Web.Firebase4.Type (FIREBASE)
import Web.Firebase4.Database.Type (Database, Reference)

foreign import ref :: ∀eff . String → Database → Eff (firebase :: FIREBASE | eff) Reference



