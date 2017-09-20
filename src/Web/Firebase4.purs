module Web.Firebase4 (
    initializeApp, sdkVersion, apps
) where

import Control.Monad.Eff (Eff)
import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe)
import Web.Firebase4.Type (FIREBASE, Firebase, Options)

initializeApp :: forall eff . Options -> Maybe String -> Eff (firebase :: FIREBASE | eff) Firebase
initializeApp config name = initializeAppNullable config (toNullable name)

foreign import initializeAppNullable :: forall eff . Options -> Nullable String -> Eff (firebase :: FIREBASE | eff) Firebase

foreign import sdkVersion :: String

foreign import apps :: ∀eff . Eff (firebase :: FIREBASE | eff) (Array Firebase)





