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

#### `App`

``` purescript
data App :: Type
```

#### `FirebaseError`

``` purescript
data FirebaseError :: Type
```


