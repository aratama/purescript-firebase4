module Web.Firebase4.Auth (
    signInAnonymously, signInWithEmailAndPassword, signInWithRedirect, signInWithPopup, signOut,
    onAuthStateChanged, getRedirectResult, getRedirectResultAff,
    newTwitterAuthProvider, newFacebookAuthProvider, newGithubAuthProvider, newGoogleAuthProvider
) where 

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (Error)
import Control.Monad.Aff (Aff, makeAff)
import Data.Nullable (Nullable, toMaybe, toNullable)
import Data.Maybe (Maybe)
import Prelude (Unit, (<<<))
import Web.Firebase4.Type (FIREBASE, Auth, User, AuthProvider, UserCredential, RedirectResult)

foreign import signInAnonymously :: ∀eff . Auth → Eff (firebase :: FIREBASE | eff) Unit

foreign import signInWithEmailAndPassword :: ∀eff . String → String → Auth → Eff (firebase :: FIREBASE | eff) Unit

foreign import signOut :: ∀eff . Auth → Eff (firebase :: FIREBASE | eff) Unit

foreign import _onAuthStateChanged :: ∀eff . (Nullable User → Eff (firebase :: FIREBASE | eff) Unit) → Auth → Eff (firebase :: FIREBASE | eff) Unit

onAuthStateChanged :: ∀eff . (Maybe User → Eff (firebase :: FIREBASE | eff) Unit) → Auth → Eff (firebase :: FIREBASE | eff) Unit
onAuthStateChanged callback = _onAuthStateChanged (callback <<< toMaybe)

foreign import newTwitterAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

foreign import newFacebookAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

foreign import newGithubAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

foreign import newGoogleAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

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

foreign import getRedirectResult :: ∀eff . Auth → (Error → Eff (firebase :: FIREBASE | eff) Unit) → (RedirectResult → Eff (firebase :: FIREBASE | eff) Unit) → Eff (firebase :: FIREBASE | eff) Unit

getRedirectResultAff :: ∀eff . Auth → Aff (firebase :: FIREBASE | eff) RedirectResult
getRedirectResultAff a = makeAff \reject resolve → getRedirectResult a reject resolve
