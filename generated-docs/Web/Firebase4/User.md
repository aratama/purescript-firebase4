## Module Web.Firebase4.User

#### `uid`

``` purescript
uid :: User -> String
```

#### `displayName`

``` purescript
displayName :: User -> Maybe String
```

#### `photoURL`

``` purescript
photoURL :: User -> Maybe String
```

#### `isAnonymous`

``` purescript
isAnonymous :: User -> Boolean
```

#### `delete`

``` purescript
delete :: forall eff. User -> Eff (firebase :: FIREBASE | eff) Unit
```


