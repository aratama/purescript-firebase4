module Web.Firebase4.Auth.GoogleAuthProvider (
    newGoogleAuthProvider
) where 


import Control.Monad.Eff (Eff)
import Web.Firebase4.Type (AuthProvider, FIREBASE)

foreign import newGoogleAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

