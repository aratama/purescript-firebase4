module Web.Firebase4.Auth.TwitterAuthProvider (
    newTwitterAuthProvider
) where 


import Control.Monad.Eff (Eff)
import Web.Firebase4.Auth.Type (AuthProvider)
import Web.Firebase4.Type (FIREBASE)

foreign import newTwitterAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

