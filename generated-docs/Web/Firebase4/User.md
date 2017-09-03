## Module Web.Firebase4.User

#### `displayName`

``` purescript
displayName :: User -> Maybe String
```

#### `email`

``` purescript
email :: User -> Nullable String
```

#### `emailVerified`

``` purescript
emailVerified :: User -> Boolean
```

#### `isAnonymous`

``` purescript
isAnonymous :: User -> Boolean
```

#### `phoneNumber`

``` purescript
phoneNumber :: User -> Maybe String
```

#### `photoURL`

``` purescript
photoURL :: User -> Maybe String
```

#### `providerData`

``` purescript
providerData :: User -> Array UserInfo
```

#### `uid`

``` purescript
uid :: User -> String
```

#### `delete`

``` purescript
delete :: forall eff. User -> Aff (firebase :: FIREBASE | eff) Unit
```


