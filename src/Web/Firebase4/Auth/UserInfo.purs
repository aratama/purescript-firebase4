module Web.Firebase4.Auth.UserInfo (    
    displayName, email, phoneNumber,
    photoURL, providerId, uid
) where

import Data.Nullable (Nullable, toMaybe)
import Data.Maybe (Maybe)
import Web.Firebase4.Auth.Type (User)

-- Properties

foreign import displayNameNullable :: User -> Nullable String

displayName :: User -> Maybe String
displayName user = toMaybe (displayNameNullable user)

foreign import emailNullable :: User -> Nullable String 

email :: User -> Maybe String 
email user = toMaybe (emailNullable user)

foreign import phoneNumberNullable :: User -> Nullable String

phoneNumber :: User -> Maybe String
phoneNumber user = toMaybe (phoneNumberNullable user)

foreign import photoURLNullable :: User -> Nullable String

photoURL :: User -> Maybe String
photoURL user = toMaybe (photoURLNullable user)

foreign import providerId :: User -> String

foreign import uid :: User -> String

