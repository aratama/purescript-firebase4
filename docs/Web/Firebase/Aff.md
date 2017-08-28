## Module Web.Firebase.Aff

#### `onceAff`

``` purescript
onceAff :: forall eff. Reference -> Aff ("firebase" :: FIREBASE | eff) Snapshot
```

#### `signInWithPopupAff`

``` purescript
signInWithPopupAff :: forall eff. AuthProvider -> Auth -> Aff ("firebase" :: FIREBASE | eff) UserCredential
```


