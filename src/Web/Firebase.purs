module Web.Firebase4 (
    Profile(..), FIREBASE, Firebase, FirebaseError, Database, Reference, Snapshot, Auth, User, AuthProvider, UserCredential, EventType(..),
    initializeApp, database, auth, set, remove, onValue, on, once, off, child, onDisconnect, limitToLast, val, exists, forEach, key, numChildren, ref,
    signInAnonymously, signInWithEmailAndPassword, signOut, onAuthStateChanged, 
    newTwitterAuthProvider, newFacebookAuthProvider, newGithubAuthProvider, newGoogleAuthProvider,
    signInWithRedirect, signInWithPopup, RedirectResult, getRedirectResult, getRedirectResultAff, uid, displayName, photoURL, isAnonymous, delete
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

-- firebase

initializeApp :: ∀eff . Profile → Maybe String -> Eff (firebase :: FIREBASE | eff) Firebase
initializeApp config name = _initializeApp config (toNullable name)

foreign import _initializeApp :: ∀eff . Profile → Nullable String -> Eff (firebase :: FIREBASE | eff) Firebase

foreign import database :: ∀eff . Firebase → Eff (firebase :: FIREBASE | eff) Database

foreign import auth :: ∀eff . Firebase → Eff (firebase :: FIREBASE | eff) Auth

-- reference
foreign import set :: ∀eff . Foreign → Reference → Eff (firebase :: FIREBASE | eff) Unit

foreign import remove :: ∀eff . Reference → Eff (firebase :: FIREBASE | eff) Unit

foreign import onValue :: ∀eff1 eff2. (Snapshot → Eff (firebase :: FIREBASE | eff1) Unit) → Reference → Eff (firebase :: FIREBASE | eff2) Unit

foreign import _on :: ∀eff . String -> (Error → Eff (firebase :: FIREBASE | eff) Unit) → (Snapshot → Eff (firebase :: FIREBASE | eff) Unit) → Reference → Eff (firebase :: FIREBASE | eff) Unit

on :: ∀eff . EventType -> (Error → Eff (firebase :: FIREBASE | eff) Unit) → (Snapshot → Eff (firebase :: FIREBASE | eff) Unit) → Reference → Eff (firebase :: FIREBASE | eff) Unit
on eventType reject resolve = _on (showEventType eventType) reject resolve

foreign import once :: ∀eff . (Snapshot → Eff (firebase :: FIREBASE | eff) Unit) → Reference → Eff (firebase :: FIREBASE | eff) Unit

foreign import off :: ∀eff . Reference → Eff (firebase :: FIREBASE | eff) Unit

foreign import child :: ∀eff . String → Reference → Eff (firebase :: FIREBASE | eff) Reference

foreign import onDisconnect :: ∀eff . Reference → Eff (firebase :: FIREBASE | eff) Reference

foreign import limitToLast :: ∀eff . Int → Reference → Eff (firebase :: FIREBASE | eff) Reference

-- datasnapshot
foreign import val :: Snapshot → Foreign

foreign import exists :: Snapshot → Boolean

foreign import forEach :: forall eff. Snapshot -> (Snapshot -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) Unit

foreign import key :: Snapshot → String

foreign import numChildren :: Snapshot -> Int

-- database
foreign import ref :: ∀eff . String → Database → Eff (firebase :: FIREBASE | eff) Reference

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




foreign import data RedirectResult :: Type

foreign import getRedirectResult :: ∀eff . Auth → (Error → Eff (firebase :: FIREBASE | eff) Unit) → (RedirectResult → Eff (firebase :: FIREBASE | eff) Unit) → Eff (firebase :: FIREBASE | eff) Unit

getRedirectResultAff :: ∀eff . Auth → Aff (firebase :: FIREBASE | eff) RedirectResult
getRedirectResultAff a = makeAff \reject resolve → getRedirectResult a reject resolve


-- User

foreign import uid :: User → String

foreign import _displayName :: User → Nullable String

displayName :: User → Maybe String
displayName user = toMaybe (_displayName user)

foreign import _photoURL :: User → Nullable String

photoURL :: User → Maybe String
photoURL user = toMaybe (_photoURL user)

foreign import isAnonymous :: User → Boolean

foreign import delete :: ∀eff . User → Eff (firebase :: FIREBASE | eff) Unit



