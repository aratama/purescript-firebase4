module Web.Firebase4.Auth.TwitterAuthProvider (
    newTwitterAuthProvider
) where 


import Control.Monad.Eff (Eff)
import Web.Firebase4.Type (AuthProvider, FIREBASE)

foreign import newTwitterAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

