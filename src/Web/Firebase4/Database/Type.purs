module Web.Firebase4.Database.Type (
    Database, 
    Reference, Snapshot,  
    Query, EventType(..), showEventType
) where

import Control.Monad.Eff (Eff, kind Effect)
import Data.Foreign.Class (class Encode, class Decode)
import Data.Generic.Rep (class Generic)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Maybe (Maybe)

foreign import data Database :: Type

foreign import data Reference :: Type

foreign import data Snapshot :: Type

-- foreign import data Query :: Type
type Query = Reference

data EventType = Value | ChildAdded | ChildChanged | ChildRemoved | ChildMoved

showEventType :: EventType -> String
showEventType = case _ of
    Value -> "value"
    ChildAdded -> "child_added"
    ChildChanged -> "child_changed"
    ChildRemoved -> "child_removed"
    ChildMoved -> "child_moved"

