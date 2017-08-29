## Module Web.Firebase4.Auth

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

#### `_onAuthStateChanged`

``` purescript
_onAuthStateChanged :: forall eff. (Nullable User -> Eff (firebase :: FIREBASE | eff) Unit) -> Auth -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `onAuthStateChanged`

``` purescript
onAuthStateChanged :: forall eff. (Maybe User -> Eff (firebase :: FIREBASE | eff) Unit) -> Auth -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `newTwitterAuthProvider`

``` purescript
newTwitterAuthProvider :: forall eff. Eff (firebase :: FIREBASE | eff) AuthProvider
```

#### `newFacebookAuthProvider`

``` purescript
newFacebookAuthProvider :: forall eff. Eff (firebase :: FIREBASE | eff) AuthProvider
```

#### `newGithubAuthProvider`

``` purescript
newGithubAuthProvider :: forall eff. Eff (firebase :: FIREBASE | eff) AuthProvider
```

#### `newGoogleAuthProvider`

``` purescript
newGoogleAuthProvider :: forall eff. Eff (firebase :: FIREBASE | eff) AuthProvider
```

#### `signInWithRedirect`

``` purescript
signInWithRedirect :: forall eff. AuthProvider -> Auth -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `signInWithPopup`

``` purescript
signInWithPopup :: forall eff. AuthProvider -> Auth -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) -> (UserCredential -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `getRedirectResult`

``` purescript
getRedirectResult :: forall eff. Auth -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) -> (RedirectResult -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `getRedirectResultAff`

``` purescript
getRedirectResultAff :: forall eff. Auth -> Aff (firebase :: FIREBASE | eff) RedirectResult
```


