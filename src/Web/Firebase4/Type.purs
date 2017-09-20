module Web.Firebase4.Type (
    Options(..), FIREBASE, Firebase, FirebaseError, App, 
    Auth, User, UserInfo, 
    AuthProvider, UserCredential, 
    RedirectResult, AuthCredential, AdditionalUserInfo
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

foreign import data App :: Type

foreign import data Auth :: Type

type User = UserInfo

foreign import data UserInfo :: Type

foreign import data AuthProvider :: Type

type UserCredential = {
    user :: Maybe User, 
    credential :: Maybe AuthCredential, 
    operationType :: Maybe String, -- (nullable string or undefined), 
    additionalUserInfo :: Maybe AdditionalUserInfo -- (nullable firebase.auth.AdditionalUserInfo or undefined)
}

foreign import data AuthCredential :: Type 

foreign import data AdditionalUserInfo :: Type 

foreign import data RedirectResult :: Type