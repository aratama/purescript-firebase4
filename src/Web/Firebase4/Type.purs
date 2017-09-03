module Web.Firebase4.Type (
    Options(..), FIREBASE, Firebase, FirebaseError, Database, 
    Reference, Snapshot, Auth, User, UserInfo, 
    Query, AuthProvider, UserCredential, EventType(..),
    RedirectResult, showEventType, AuthCredential, AdditionalUserInfo
) where

import Control.Monad.Eff (Eff, kind Effect)
import Data.Foreign.Class (class Encode, class Decode)
import Data.Generic.Rep (class Generic)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Maybe (Maybe)

newtype Options = Options {
    apiKey :: String,
    authDomain :: String,
    databaseURL :: String,
    storageBucket :: String,
    messagingSenderId :: String
}

derive instance generic_Options:: Generic Options _

instance decodeOptions :: Decode Options where
    decode = genericDecode defaultOptions { unwrapSingleConstructors = true }

instance encodeOptions :: Encode Options where
    encode = genericEncode defaultOptions { unwrapSingleConstructors = true }

foreign import data FIREBASE :: Effect

foreign import data Firebase :: Type

foreign import data FirebaseError :: Type

foreign import data Database :: Type

foreign import data Reference :: Type

foreign import data Snapshot :: Type

foreign import data Auth :: Type

type User = UserInfo

foreign import data UserInfo :: Type

foreign import data AuthProvider :: Type

-- foreign import data Query :: Type
type Query = Reference

type UserCredential = {
    user :: Maybe User, 
    credential :: Maybe AuthCredential, 
    operationType :: Maybe String, -- (nullable string or undefined), 
    additionalUserInfo :: Maybe AdditionalUserInfo -- (nullable firebase.auth.AdditionalUserInfo or undefined)
}

foreign import data AuthCredential :: Type 

foreign import data AdditionalUserInfo :: Type 

data EventType = Value | ChildAdded | ChildChanged | ChildRemoved | ChildMoved

showEventType :: EventType -> String
showEventType = case _ of
    Value -> "value"
    ChildAdded -> "child_added"
    ChildChanged -> "child_changed"
    ChildRemoved -> "child_removed"
    ChildMoved -> "child_moved"


foreign import data RedirectResult :: Type