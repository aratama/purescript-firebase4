## Module Web.Firebase4.App.App

#### `name`

``` purescript
name :: Firebase -> String
```

#### `options`

``` purescript
options :: Firebase -> Options
```

#### `auth`

``` purescript
auth :: forall eff. Firebase -> Eff (firebase :: FIREBASE | eff) Auth
```

#### `database`

``` purescript
database :: forall eff. Firebase -> Eff (firebase :: FIREBASE | eff) Database
```

#### `messaging`

``` purescript
messaging :: Firebase -> Messaging
```

#### `delete`

``` purescript
delete :: forall eff. Firebase -> Aff (firebase :: FIREBASE | eff) Unit
```


