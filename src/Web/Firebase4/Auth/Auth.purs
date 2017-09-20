module Web.Firebase4.Auth.Auth (
    signInAnonymously, signInWithEmailAndPassword, signInWithRedirect, signInWithPopup, signOut,
    onAuthStateChanged, getRedirectResult
) where 

import Control.Monad.Aff (Aff, makeAff)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (Error)
import Control.Monad.Except (runExcept)
import Data.Either (Either(..))
import Data.Foreign (Foreign, isNull, isUndefined, readString, unsafeFromForeign)
import Data.Maybe (Maybe(..))
import Data.Nullable (Nullable, toMaybe)
import Prelude (Unit, (<<<), (||))
import Web.Firebase4.Database.Type (Reference, Snapshot)
import Web.Firebase4.Type (Auth, AuthCredential, AuthProvider, FIREBASE, User, UserCredential)

foreign import signInAnonymously :: ∀eff . Auth → Eff (firebase :: FIREBASE | eff) Unit

foreign import signInWithEmailAndPassword :: ∀eff . String → String → Auth → Eff (firebase :: FIREBASE | eff) Unit

foreign import signOut :: ∀eff . Auth → Eff (firebase :: FIREBASE | eff) Unit

foreign import _onAuthStateChanged :: ∀eff . (Nullable User → Eff (firebase :: FIREBASE | eff) Unit) → Auth → Eff (firebase :: FIREBASE | eff) Unit

onAuthStateChanged :: ∀eff . (Maybe User → Eff (firebase :: FIREBASE | eff) Unit) → Auth → Eff (firebase :: FIREBASE | eff) Unit
onAuthStateChanged callback = _onAuthStateChanged (callback <<< toMaybe)

signInWithRedirect :: ∀eff . AuthProvider -> Auth -> Aff (firebase :: FIREBASE | eff) Unit
signInWithRedirect provider auth = makeAff (signInWithRedirectEff provider auth)

foreign import signInWithRedirectEff :: ∀eff . AuthProvider 
    -> Auth
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> (Unit -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> Eff (firebase :: FIREBASE | eff) Unit

foreign import signInWithPopup :: ∀eff . AuthProvider 
    -> Auth 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> (UserCredential -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> Eff (firebase :: FIREBASE | eff) Unit

foreign import getRedirectResultEff :: ∀eff . Auth 
    → (Error → Eff (firebase :: FIREBASE | eff) Unit) 
    → (UserCredentialRaw → Eff (firebase :: FIREBASE | eff) Unit) 
    → Eff (firebase :: FIREBASE | eff) Unit

getRedirectResult :: ∀eff . Auth → Aff (firebase :: FIREBASE | eff) UserCredential
getRedirectResult auth = makeAff \reject resolve → getRedirectResultEff auth reject (\raw -> resolve {
    user: toMaybe raw.user , 
    credential: toMaybe raw.credential, 
    operationType: case runExcept (readString raw.operationType) of 
        Left errors -> Nothing
        Right op -> Just op,   
    additionalUserInfo: if isNull raw.additionalUserInfo || isUndefined raw.additionalUserInfo then Nothing else unsafeFromForeign raw.additionalUserInfo
})


type UserCredentialRaw = {
    user :: Nullable User, 
    credential :: Nullable AuthCredential, 
    operationType :: Foreign,
    additionalUserInfo :: Foreign
}




foreign import _onceAff :: ∀eff. (Error → Eff (firebase :: FIREBASE | eff) Unit) → (Snapshot → Eff (firebase :: FIREBASE | eff) Unit) → Reference → Eff (firebase :: FIREBASE | eff) Unit

onceAff :: ∀eff. Reference → Aff (firebase :: FIREBASE | eff) Snapshot
onceAff reference = makeAff \reject resolve → _onceAff reject resolve reference

signInWithPopupAff :: ∀eff . AuthProvider → Auth → Aff (firebase :: FIREBASE | eff) UserCredential
signInWithPopupAff provider auth = makeAff (signInWithPopup provider auth)

