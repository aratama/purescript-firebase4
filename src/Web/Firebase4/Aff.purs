module Web.Firebase4.Aff (onceAff, signInWithPopupAff) where

import Web.Firebase4
import Control.Monad.Aff (Aff, makeAff)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (Error)
import Prelude (Unit)

foreign import _onceAff :: ∀eff. (Error → Eff (firebase :: FIREBASE | eff) Unit) → (Snapshot → Eff (firebase :: FIREBASE | eff) Unit) → Reference → Eff (firebase :: FIREBASE | eff) Unit

onceAff :: ∀eff. Reference → Aff (firebase :: FIREBASE | eff) Snapshot
onceAff reference = makeAff \reject resolve → _onceAff reject resolve reference

signInWithPopupAff :: ∀eff . AuthProvider → Auth → Aff (firebase :: FIREBASE | eff) UserCredential
signInWithPopupAff provider auth = makeAff (signInWithPopup provider auth)
