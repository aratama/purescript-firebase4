module Web.Firebase4.Storage.Storage (storage) where 

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)
import Prelude (Unit)
import Web.Firebase4.Type (FIREBASE, App)
import Web.Firebase4.Storage.Type (Storage, Reference)

foreign import storageNullable :: Nullable App -> Storage
 
storage :: Maybe App -> Storage
storage app = storageNullable (toNullable app)

foreign import app :: Storage -> App

foreign import getMaxOperationRetryTime :: forall eff. Storage -> Eff (firebase :: FIREBASE | eff) Number

foreign import getMaxUploadRetryTime :: forall eff. Storage -> Eff (firebase :: FIREBASE | eff) Number

foreign import ref :: forall eff. String -> Storage -> Eff (firebase :: FIREBASE | eff) Reference

foreign import refFromURL :: forall eff. String -> Storage -> Eff (firebase :: FIREBASE | eff) Reference

foreign import setMaxOperationRetryTime :: forall eff. Number -> Storage -> Eff (firebase :: FIREBASE | eff) Unit

foreign import setMaxUploadRetryTime :: forall eff. Number -> Storage -> Eff (firebase :: FIREBASE | eff) Unit
