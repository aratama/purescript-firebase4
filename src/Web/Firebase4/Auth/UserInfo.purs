module Web.Firebase4.Auth.UserInfo (    
    displayName, email, phoneNumber,
    photoURL, providerId, uid
) where

import Control.Monad.Aff (Aff, makeAff)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (Error)
import Data.Nullable (Nullable, toMaybe)
import Data.Maybe (Maybe)
import Prelude (Unit)
import Web.Firebase4.Type (FIREBASE, Firebase, User, UserInfo, AuthCredential, UserCredential)

-- Properties

foreign import _displayName :: User -> Nullable String

displayName :: User -> Maybe String
displayName user = toMaybe (_displayName user)

foreign import email :: User -> Nullable String 

foreign import phoneNumberNullable :: User -> Nullable String

phoneNumber :: User -> Maybe String
phoneNumber user = toMaybe (phoneNumberNullable user)

foreign import _photoURL :: User -> Nullable String

photoURL :: User -> Maybe String
photoURL user = toMaybe (_photoURL user)

foreign import providerId :: User -> String

foreign import uid :: User -> String

