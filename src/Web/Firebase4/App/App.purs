module Web.Firebase4.App.App (name, options, auth, database, delete) where 

import Control.Monad.Aff (Aff, makeAff)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (Error)
import Web.Firebase4.Type (FIREBASE, Firebase, Options)
import Web.Firebase4.Auth.Type (Auth)
import Web.Firebase4.Database.Type (Database)
import Data.Unit (Unit)

foreign import name :: Firebase -> String 

foreign import options :: Firebase -> Options

foreign import auth :: forall eff . Firebase -> Eff (firebase :: FIREBASE | eff) Auth

foreign import database :: forall eff . Firebase -> Eff (firebase :: FIREBASE | eff) Database

foreign import deleteEff :: forall eff 
    . Firebase 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (Unit -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

delete :: forall eff. Firebase -> Aff (firebase :: FIREBASE | eff) Unit 
delete app = makeAff (deleteEff app)