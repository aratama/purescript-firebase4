module Web.Firebase4.Auth.FacebookAuthProvider (
    newFacebookAuthProvider
) where 

import Control.Monad.Eff (Eff)
import Web.Firebase4.Auth.Type (AuthProvider)
import Web.Firebase4.Type (FIREBASE)

foreign import newFacebookAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

