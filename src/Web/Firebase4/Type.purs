module Web.Firebase4.Type (
    Options(..), FIREBASE, Firebase, FirebaseError
) where

import Control.Monad.Eff (kind Effect)
import Data.Foreign.Class (class Encode, class Decode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Generic.Rep (class Generic)

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


