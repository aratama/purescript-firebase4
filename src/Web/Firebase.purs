module Web.Firebase4 (
    initializeApp, database, auth
) where

import Control.Monad.Eff (Eff)
import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe)
import Web.Firebase4.Type (Options(..), FIREBASE, Firebase, Database, Auth)

initializeApp :: ∀eff . Options → Maybe String -> Eff (firebase :: FIREBASE | eff) Firebase
initializeApp config name = _initializeApp config (toNullable name)

foreign import _initializeApp :: ∀eff . Options → Nullable String -> Eff (firebase :: FIREBASE | eff) Firebase

foreign import database :: ∀eff . Firebase → Eff (firebase :: FIREBASE | eff) Database

foreign import auth :: ∀eff . Firebase → Eff (firebase :: FIREBASE | eff) Auth
