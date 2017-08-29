module Web.Firebase4.Auth where 

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

import Web.Firebase4.Type (Profile(..), FIREBASE, Firebase, FirebaseError, Database, Reference, Snapshot, Auth, User, AuthProvider, UserCredential, EventType(..), RedirectResult)

-- auth
foreign import signInAnonymously :: ∀eff . Auth → Eff (firebase :: FIREBASE | eff) Unit

foreign import signInWithEmailAndPassword :: ∀eff . String → String → Auth → Eff (firebase :: FIREBASE | eff) Unit

foreign import signOut :: ∀eff . Auth → Eff (firebase :: FIREBASE | eff) Unit

foreign import _onAuthStateChanged :: ∀eff . (Nullable User → Eff (firebase :: FIREBASE | eff) Unit) → Auth → Eff (firebase :: FIREBASE | eff) Unit

onAuthStateChanged :: ∀eff . (Maybe User → Eff (firebase :: FIREBASE | eff) Unit) → Auth → Eff (firebase :: FIREBASE | eff) Unit
onAuthStateChanged callback = _onAuthStateChanged (callback <<< toMaybe)

foreign import newTwitterAuthProvider :: ∀eff . Auth -> Eff (firebase :: FIREBASE | eff) AuthProvider

foreign import newFacebookAuthProvider :: ∀eff . Auth -> Eff (firebase :: FIREBASE | eff) AuthProvider

foreign import newGithubAuthProvider :: ∀eff . Auth -> Eff (firebase :: FIREBASE | eff) AuthProvider

foreign import newGoogleAuthProvider :: ∀eff . Auth -> Eff (firebase :: FIREBASE | eff) AuthProvider

foreign import signInWithRedirect :: ∀eff . AuthProvider → Auth → Eff (firebase :: FIREBASE | eff) Unit

foreign import signInWithPopup :: ∀eff . AuthProvider → Auth → (Error -> Eff (firebase :: FIREBASE | eff) Unit) -> (UserCredential -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) Unit





foreign import getRedirectResult :: ∀eff . Auth → (Error → Eff (firebase :: FIREBASE | eff) Unit) → (RedirectResult → Eff (firebase :: FIREBASE | eff) Unit) → Eff (firebase :: FIREBASE | eff) Unit

getRedirectResultAff :: ∀eff . Auth → Aff (firebase :: FIREBASE | eff) RedirectResult
getRedirectResultAff a = makeAff \reject resolve → getRedirectResult a reject resolve
