## Module Web.Firebase4.App.App

#### `name`

``` purescript
name :: App -> String
```

#### `options`

``` purescript
options :: App -> Options
```

#### `auth`

``` purescript
auth :: forall eff. App -> Eff (firebase :: FIREBASE | eff) Auth
```

#### `database`

``` purescript
database :: forall eff. App -> Eff (firebase :: FIREBASE | eff) Database
```

#### `messaging`

``` purescript
messaging :: App -> Messaging
```

#### `delete`

``` purescript
delete :: forall eff. App -> Aff (firebase :: FIREBASE | eff) Unit
```


