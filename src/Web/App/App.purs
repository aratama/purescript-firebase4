module Web.Firebase4.App.App where 


import Control.Monad.Eff (Eff)
import Web.Firebase4.Type (FIREBASE, Firebase, Auth, Database, Options)

foreign import name :: Firebase -> String 

foreign import options :: Firebase -> Options

foreign import database :: ∀eff . Firebase → Eff (firebase :: FIREBASE | eff) Database

foreign import auth :: ∀eff . Firebase → Eff (firebase :: FIREBASE | eff) Auth
