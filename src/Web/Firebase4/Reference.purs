module Web.Firebase4.Reference (
    set, remove, onValue, on, once, off, child, onDisconnect, limitToLast
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

import Web.Firebase4.Type (Profile(..), FIREBASE, Firebase, FirebaseError, Database, Reference, Snapshot, Auth, User, AuthProvider, UserCredential, EventType(..), RedirectResult, showEventType)


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