## Module Web.Firebase4.Database.Type

#### `Database`

``` purescript
data Database :: Type
```

#### `Reference`

``` purescript
data Reference :: Type
```

#### `Snapshot`

``` purescript
data Snapshot :: Type
```

#### `Query`

``` purescript
type Query = Reference
```

#### `EventType`

``` purescript
data EventType
  = Value
  | ChildAdded
  | ChildChanged
  | ChildRemoved
  | ChildMoved
```

#### `showEventType`

``` purescript
showEventType :: EventType -> String
```


