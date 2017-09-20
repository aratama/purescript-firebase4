## Module Web.Firebase4.Type

#### `Options`

``` purescript
newtype Options
  = Options { apiKey :: String, authDomain :: String, databaseURL :: String, storageBucket :: String, messagingSenderId :: String }
```

##### Instances
``` purescript
Generic Options _
Decode Options
Encode Options
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

#### `App`

``` purescript
data App :: Type
```

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

#### `RedirectResult`

``` purescript
data RedirectResult :: Type
```


