module Web.Firebase4.Database.Type (
    Database, 
    Reference, DataSnapshot,  
    Query, EventType(..), showEventType
) where

foreign import data Database :: Type

foreign import data Reference :: Type

foreign import data DataSnapshot :: Type

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

