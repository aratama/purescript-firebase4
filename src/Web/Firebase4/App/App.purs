module Web.Firebase4.App.App (name, options, auth, database, messaging, delete) where 

import Control.Monad.Aff (Aff, makeAff)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (Error)
import Data.Unit (Unit)
import Web.Firebase4.Auth.Type (Auth)
import Web.Firebase4.Database.Type (Database)
import Web.Firebase4.Messaging.Type (Messaging)
import Web.Firebase4.Type (FIREBASE, Firebase, Options)

foreign import name :: Firebase -> String 

foreign import options :: Firebase -> Options

foreign import auth :: forall eff . Firebase -> Eff (firebase :: FIREBASE | eff) Auth

foreign import database :: forall eff . Firebase -> Eff (firebase :: FIREBASE | eff) Database

foreign import messaging :: Firebase -> Messaging

foreign import deleteEff :: forall eff 
    . Firebase 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (Unit -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

delete :: forall eff. Firebase -> Aff (firebase :: FIREBASE | eff) Unit 
delete app = makeAff (deleteEff app)

