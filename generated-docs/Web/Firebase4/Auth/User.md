## Module Web.Firebase4.Auth.User

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

#### `getIdToken`

``` purescript
getIdToken :: forall eff. Boolean -> User -> Aff (firebase :: FIREBASE | eff) String
```

#### `linkAndRetrieveDataWithCredential`

``` purescript
linkAndRetrieveDataWithCredential :: forall eff. AuthCredential -> User -> Aff (firebase :: FIREBASE | eff) UserCredential
```


