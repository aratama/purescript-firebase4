## Module Web.Firebase4.Auth.Auth

#### `signInAnonymously`

``` purescript
signInAnonymously :: forall eff. Auth -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `signInWithEmailAndPassword`

``` purescript
signInWithEmailAndPassword :: forall eff. String -> String -> Auth -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `signOut`

``` purescript
signOut :: forall eff. Auth -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `onAuthStateChanged`

``` purescript
onAuthStateChanged :: forall eff. (Maybe User -> Eff (firebase :: FIREBASE | eff) Unit) -> Auth -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `signInWithRedirect`

``` purescript
signInWithRedirect :: forall eff. AuthProvider -> Auth -> Aff (firebase :: FIREBASE | eff) Unit
```

#### `signInWithPopup`

``` purescript
signInWithPopup :: forall eff. AuthProvider -> Auth -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) -> (UserCredential -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `getRedirectResult`

``` purescript
getRedirectResult :: forall eff. Auth -> Aff (firebase :: FIREBASE | eff) UserCredential
```


