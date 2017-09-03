module Web.Firebase4.Auth.GoogleAuthProvider (
    newGoogleAuthProvider
) where 

import Control.Monad.Except (runExcept)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (Error)
import Control.Monad.Aff (Aff, makeAff)
import Data.Nullable (Nullable, toMaybe, toNullable)
import Data.Maybe (Maybe(..))
import Data.Either (Either(..))
import Prelude (Unit, (<<<), (>>=), (||))
import Web.Firebase4.Type (FIREBASE, Auth, User, AuthProvider, UserCredential, RedirectResult, AuthCredential, Snapshot, Reference)
import Data.Foreign (Foreign, readNullOrUndefined, readString, unsafeFromForeign, isNull, isUndefined)


foreign import newGoogleAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

