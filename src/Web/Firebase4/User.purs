module Web.Firebase4.User (    
    uid, displayName, photoURL, isAnonymous, delete
) where

import Control.Monad.Eff (Eff)
import Data.Nullable (Nullable, toMaybe)
import Data.Maybe (Maybe)
import Prelude (Unit)

import Web.Firebase4.Type (FIREBASE, Firebase, User)

foreign import uid :: User → String

foreign import _displayName :: User → Nullable String

displayName :: User → Maybe String
displayName user = toMaybe (_displayName user)

foreign import _photoURL :: User → Nullable String

photoURL :: User → Maybe String
photoURL user = toMaybe (_photoURL user)

foreign import isAnonymous :: User → Boolean

foreign import delete :: ∀eff . User → Eff (firebase :: FIREBASE | eff) Unit


