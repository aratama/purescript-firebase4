module Web.Firebase4.Storage.Storage (storage) where 

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)
import Prelude (Unit)
import Web.Firebase4.Type (FIREBASE, Firebase)
import Web.Firebase4.Storage.Type (Storage, Reference)

foreign import storageNullable :: Nullable Firebase -> Storage
 
storage :: Maybe Firebase -> Storage
storage app = storageNullable (toNullable app)

foreign import app :: Storage -> Firebase

foreign import getMaxOperationRetryTime :: forall eff. Storage -> Eff (firebase :: FIREBASE | eff) Number

foreign import getMaxUploadRetryTime :: forall eff. Storage -> Eff (firebase :: FIREBASE | eff) Number

foreign import ref :: forall eff. String -> Storage -> Eff (firebase :: FIREBASE | eff) Reference

foreign import refFromURL :: forall eff. String -> Storage -> Eff (firebase :: FIREBASE | eff) Reference

foreign import setMaxOperationRetryTime :: forall eff. Number -> Storage -> Eff (firebase :: FIREBASE | eff) Unit

foreign import setMaxUploadRetryTime :: forall eff. Number -> Storage -> Eff (firebase :: FIREBASE | eff) Unit
