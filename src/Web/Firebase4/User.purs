module Web.Firebase4.User (    
    uid, displayName, photoURL, isAnonymous, delete
) where

import Control.Monad.Eff (Eff, kind Effect)
import Control.Monad.Eff.Exception (Error)
import Control.Monad.Aff (Aff, makeAff)
import Data.Foreign (Foreign)
import Data.Foreign.Class (class Encode, class Decode)
import Data.Nullable (Nullable, toMaybe, toNullable)
import Data.Maybe (Maybe)
import Prelude (Unit, (<<<))
import Data.Generic.Rep (class Generic)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)

import Web.Firebase4.Type (Profile(..), FIREBASE, Firebase, FirebaseError, Database, Reference, Snapshot, Auth, User, AuthProvider, UserCredential, EventType(..), RedirectResult, showEventType)




-- User

foreign import uid :: User → String

foreign import _displayName :: User → Nullable String

displayName :: User → Maybe String
displayName user = toMaybe (_displayName user)

foreign import _photoURL :: User → Nullable String

photoURL :: User → Maybe String
photoURL user = toMaybe (_photoURL user)

foreign import isAnonymous :: User → Boolean

foreign import delete :: ∀eff . User → Eff (firebase :: FIREBASE | eff) Unit


