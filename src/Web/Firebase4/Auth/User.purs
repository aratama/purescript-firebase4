module Web.Firebase4.Auth.User (    
    displayName, email, emailVerified, isAnonymous, phoneNumber,
    photoURL, providerData, 
    uid,
    delete, getIdToken, linkAndRetrieveDataWithCredential
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

foreign import emailVerified :: User -> Boolean

foreign import isAnonymous :: User -> Boolean

foreign import phoneNumberNullable :: User -> Nullable String

phoneNumber :: User -> Maybe String
phoneNumber user = toMaybe (phoneNumberNullable user)

foreign import _photoURL :: User -> Nullable String

photoURL :: User -> Maybe String
photoURL user = toMaybe (_photoURL user)

foreign import providerData :: User -> Array UserInfo

foreign import providerId :: User -> String

foreign import refreshToken :: User -> String

foreign import uid :: User -> String

-- methods

foreign import deleteEff :: forall eff 
    . User 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> (Unit -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> Eff (firebase :: FIREBASE | eff) Unit

delete :: forall eff . User -> Aff (firebase :: FIREBASE | eff) Unit
delete user = makeAff (deleteEff user) 

foreign import getIdTokenEff :: forall eff 
    . Boolean
    -> User 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> (String -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> Eff (firebase :: FIREBASE | eff) Unit

getIdToken :: forall eff . Boolean -> User -> Aff (firebase :: FIREBASE | eff) String
getIdToken forceRefresh user = makeAff (getIdTokenEff forceRefresh user) 


foreign import linkAndRetrieveDataWithCredentialEff :: forall eff 
    . AuthCredential
    -> User 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> (UserCredential -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> Eff (firebase :: FIREBASE | eff) Unit


linkAndRetrieveDataWithCredential :: forall eff 
    . AuthCredential
    -> User 
    -> Aff (firebase :: FIREBASE | eff) UserCredential
linkAndRetrieveDataWithCredential authCredential user = makeAff (linkAndRetrieveDataWithCredentialEff authCredential user)

