## Module Web.Firebase4.Auth.Type

#### `Auth`

``` purescript
data Auth :: Type
```

#### `User`

``` purescript
type User = UserInfo
```

#### `UserInfo`

``` purescript
data UserInfo :: Type
```

#### `AuthProvider`

``` purescript
data AuthProvider :: Type
```

#### `UserCredential`

``` purescript
type UserCredential = { user :: Maybe User, credential :: Maybe AuthCredential, operationType :: Maybe String, additionalUserInfo :: Maybe AdditionalUserInfo }
```

#### `AuthCredential`

``` purescript
data AuthCredential :: Type
```

#### `AdditionalUserInfo`

``` purescript
data AdditionalUserInfo :: Type
```


