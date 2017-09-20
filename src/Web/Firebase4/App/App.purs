module Web.Firebase4.App.App (name, options, auth, database, messaging, delete) where 

import Control.Monad.Aff (Aff, makeAff)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (Error)
import Data.Unit (Unit)
import Web.Firebase4.Auth.Type (Auth)
import Web.Firebase4.Database.Type (Database)
import Web.Firebase4.Messaging.Type (Messaging)
import Web.Firebase4.Type (FIREBASE, App, Options)

foreign import name :: App -> String 

foreign import options :: App -> Options

foreign import auth :: App -> Auth

foreign import database :: App -> Database

foreign import messaging :: App -> Messaging

foreign import deleteEff :: forall eff 
    . App 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (Unit -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

delete :: forall eff. App -> Aff (firebase :: FIREBASE | eff) Unit 
delete app = makeAff (deleteEff app)

