module Web.Firebase4.Database.Reference (
    set, remove, on, once, off, child, onDisconnect
) where

import Control.Monad.Eff (Eff, kind Effect)
import Control.Monad.Eff.Exception (Error)
import Data.Foreign (Foreign)
import Prelude (Unit)
import Web.Firebase4.Type (FIREBASE)
import Web.Firebase4.Database.Type (EventType, Reference, DataSnapshot, showEventType)

foreign import set :: ∀eff . Foreign -> Reference -> Eff (firebase :: FIREBASE | eff) Unit

foreign import remove :: ∀eff . Reference -> Eff (firebase :: FIREBASE | eff) Unit

foreign import _on :: ∀eff 
    . String 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> (DataSnapshot -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> Reference 
    -> Eff (firebase :: FIREBASE | eff) Unit

on :: ∀eff 
    . EventType 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> (DataSnapshot -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> Reference 
    -> Eff (firebase :: FIREBASE | eff) Unit
on eventType reject resolve = _on (showEventType eventType) reject resolve

once :: ∀eff 
    . EventType 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> (DataSnapshot -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> Reference 
    -> Eff (firebase :: FIREBASE | eff) Unit
once eventType = _once (showEventType eventType)

foreign import _once :: ∀eff 
    . String 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> (DataSnapshot -> Eff (firebase :: FIREBASE | eff) Unit) 
    -> Reference 
    -> Eff (firebase :: FIREBASE | eff) Unit

foreign import off :: ∀eff . Reference -> Eff (firebase :: FIREBASE | eff) Unit

foreign import child :: ∀eff . String -> Reference -> Eff (firebase :: FIREBASE | eff) Reference

foreign import onDisconnect :: ∀eff . Reference -> Eff (firebase :: FIREBASE | eff) Reference

