module Web.Firebase4.Auth.FacebookAuthProvider (
    newFacebookAuthProvider
) where 

import Control.Monad.Eff (Eff)
import Web.Firebase4.Type (FIREBASE, AuthProvider)

foreign import newFacebookAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

