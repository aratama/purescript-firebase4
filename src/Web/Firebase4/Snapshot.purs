module Web.Firebase4.Snapshot (
    val, exists, forEach, key, numChildren
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



-- datasnapshot
foreign import val :: Snapshot → Foreign

foreign import exists :: Snapshot → Boolean

foreign import forEach :: forall eff. Snapshot -> (Snapshot -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) Unit

foreign import key :: Snapshot → String

foreign import numChildren :: Snapshot -> Int



