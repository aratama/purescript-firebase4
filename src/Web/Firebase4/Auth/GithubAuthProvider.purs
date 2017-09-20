module Web.Firebase4.Auth.GithubAuthProvider (
    newGithubAuthProvider
) where 

import Control.Monad.Eff (Eff)
import Web.Firebase4.Type (FIREBASE,  AuthProvider)

foreign import newGithubAuthProvider :: ∀eff . Eff (firebase :: FIREBASE | eff) AuthProvider

