## Module Web.Firebase4.Type

#### `Profile`

``` purescript
newtype Profile
  = Profile { apiKey :: String, authDomain :: String, databaseURL :: String, storageBucket :: String, messagingSenderId :: String }
```

##### Instances
``` purescript
Generic Profile _
Decode Profile
Encode Profile
```

#### `FIREBASE`

``` purescript
data FIREBASE :: Effect
```

#### `Firebase`

``` purescript
data Firebase :: Type
```

#### `FirebaseError`

``` purescript
data FirebaseError :: Type
```

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

#### `Auth`

``` purescript
data Auth :: Type
```

#### `User`

``` purescript
data User :: Type
```

#### `AuthProvider`

``` purescript
data AuthProvider :: Type
```

#### `UserCredential`

``` purescript
data UserCredential :: Type
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

#### `RedirectResult`

``` purescript
data RedirectResult :: Type
```


