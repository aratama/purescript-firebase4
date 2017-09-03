## Module Web.Firebase4.Auth.User

#### `emailVerified`

``` purescript
emailVerified :: User -> Boolean
```

#### `isAnonymous`

``` purescript
isAnonymous :: User -> Boolean
```

#### `providerData`

``` purescript
providerData :: User -> Array UserInfo
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


