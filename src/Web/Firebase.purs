module Web.Firebase4 (
    initializeApp, database, auth
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

-- firebase

initializeApp :: ∀eff . Profile → Maybe String -> Eff (firebase :: FIREBASE | eff) Firebase
initializeApp config name = _initializeApp config (toNullable name)

foreign import _initializeApp :: ∀eff . Profile → Nullable String -> Eff (firebase :: FIREBASE | eff) Firebase

foreign import database :: ∀eff . Firebase → Eff (firebase :: FIREBASE | eff) Database

foreign import auth :: ∀eff . Firebase → Eff (firebase :: FIREBASE | eff) Auth
