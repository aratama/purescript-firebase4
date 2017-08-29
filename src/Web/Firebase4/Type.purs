module Web.Firebase4.Type (
    Profile(..), FIREBASE, Firebase, FirebaseError, Database, Reference, Snapshot, Auth, User, AuthProvider, UserCredential, EventType(..),
    RedirectResult, showEventType
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

newtype Profile = Profile {
    apiKey :: String,
    authDomain :: String,
    databaseURL :: String,
    storageBucket :: String,
    messagingSenderId :: String
}

derive instance generic_Profile:: Generic Profile _

instance decodeProfile :: Decode Profile where
    decode = genericDecode defaultOptions { unwrapSingleConstructors = true }

instance encodeProfile :: Encode Profile where
    encode = genericEncode defaultOptions { unwrapSingleConstructors = true }

foreign import data FIREBASE :: Effect

foreign import data Firebase :: Type

foreign import data FirebaseError :: Type

foreign import data Database :: Type

foreign import data Reference :: Type

foreign import data Snapshot :: Type

foreign import data Auth :: Type

foreign import data User :: Type

foreign import data AuthProvider :: Type

foreign import data UserCredential :: Type

data EventType = Value | ChildAdded | ChildChanged | ChildRemoved | ChildMoved

showEventType :: EventType -> String
showEventType = case _ of
    Value -> "value"
    ChildAdded -> "child_added"
    ChildChanged -> "child_changed"
    ChildRemoved -> "child_removed"
    ChildMoved -> "child_moved"


foreign import data RedirectResult :: Type