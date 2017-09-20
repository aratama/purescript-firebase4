module Web.Firebase4.Auth.GithubAuthProvider (
    newGithubAuthProvider
) where 

import Control.Monad.Eff (Eff)
import Web.Firebase4.Auth.Type (AuthProvider)
import Web.Firebase4.Type (FIREBASE)

foreign import newGithubAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

