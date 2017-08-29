## Module Web.Firebase4

#### `initializeApp`

``` purescript
initializeApp :: forall eff. Options -> Maybe String -> Eff (firebase :: FIREBASE | eff) Firebase
```

#### `database`

``` purescript
database :: forall eff. Firebase -> Eff (firebase :: FIREBASE | eff) Database
```

#### `auth`

``` purescript
auth :: forall eff. Firebase -> Eff (firebase :: FIREBASE | eff) Auth
```


