## Module Web.Firebase

#### `Profile`

``` purescript
newtype Profile
  = Profile { "apiKey" :: String, "authDomain" :: String, "databaseURL" :: String, "storageBucket" :: String, "messagingSenderId" :: String }
```

##### Instances
``` purescript
Generic Profile _
IsForeign Profile
AsForeign Profile
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

#### `Database`

``` purescript
data Database :: Type
```

#### `Reference`

``` purescript
data Reference :: Type
```

#### `Snapshot`

``` purescript
data Snapshot :: Type
```

#### `Auth`

``` purescript
data Auth :: Type
```

#### `User`

``` purescript
data User :: Type
```

#### `AuthProvider`

``` purescript
data AuthProvider :: Type
```

#### `UserCredential`

``` purescript
data UserCredential :: Type
```

#### `EventType`

``` purescript
data EventType
  = Value
  | ChildAdded
  | ChildChanged
  | ChildRemoved
  | ChildMoved
```

#### `initializeApp`

``` purescript
initializeApp :: forall eff. Profile -> Eff ("firebase" :: FIREBASE | eff) Firebase
```

#### `database`

``` purescript
database :: forall eff. Firebase -> Eff ("firebase" :: FIREBASE | eff) Database
```

#### `auth`

``` purescript
auth :: forall eff. Firebase -> Eff ("firebase" :: FIREBASE | eff) Auth
```

#### `set`

``` purescript
set :: forall eff. Foreign -> Reference -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `remove`

``` purescript
remove :: forall eff. Reference -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `onValue`

``` purescript
onValue :: forall eff1 eff2. (Snapshot -> Eff ("firebase" :: FIREBASE | eff1) Unit) -> Reference -> Eff ("firebase" :: FIREBASE | eff2) Unit
```

#### `on`

``` purescript
on :: forall eff. EventType -> (Error -> Eff ("firebase" :: FIREBASE | eff) Unit) -> (Snapshot -> Eff ("firebase" :: FIREBASE | eff) Unit) -> Reference -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `once`

``` purescript
once :: forall eff. (Snapshot -> Eff ("firebase" :: FIREBASE | eff) Unit) -> Reference -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `off`

``` purescript
off :: forall eff. Reference -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `child`

``` purescript
child :: forall eff. String -> Reference -> Eff ("firebase" :: FIREBASE | eff) Reference
```

#### `onDisconnect`

``` purescript
onDisconnect :: forall eff. Reference -> Eff ("firebase" :: FIREBASE | eff) Reference
```

#### `limitToLast`

``` purescript
limitToLast :: forall eff. Int -> Reference -> Eff ("firebase" :: FIREBASE | eff) Reference
```

#### `val`

``` purescript
val :: Snapshot -> Foreign
```

#### `exists`

``` purescript
exists :: Snapshot -> Boolean
```

#### `forEach`

``` purescript
forEach :: forall eff. Snapshot -> (Snapshot -> Eff ("firebase" :: FIREBASE | eff) Unit) -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `key`

``` purescript
key :: Snapshot -> String
```

#### `numChildren`

``` purescript
numChildren :: Snapshot -> Int
```

#### `ref`

``` purescript
ref :: forall eff. String -> Database -> Eff ("firebase" :: FIREBASE | eff) Reference
```

#### `signInAnonymously`

``` purescript
signInAnonymously :: forall eff. Auth -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `signInWithEmailAndPassword`

``` purescript
signInWithEmailAndPassword :: forall eff. String -> String -> Auth -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `signOut`

``` purescript
signOut :: forall eff. Auth -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `onAuthStateChanged`

``` purescript
onAuthStateChanged :: forall eff. (Maybe User -> Eff ("firebase" :: FIREBASE | eff) Unit) -> Auth -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `newTwitterAuthProvider`

``` purescript
newTwitterAuthProvider :: forall eff. Eff ("firebase" :: FIREBASE | eff) AuthProvider
```

#### `newGithubAuthProvider`

``` purescript
newGithubAuthProvider :: forall eff. Eff ("firebase" :: FIREBASE | eff) AuthProvider
```

#### `newGoogleAuthProvider`

``` purescript
newGoogleAuthProvider :: forall eff. Eff ("firebase" :: FIREBASE | eff) AuthProvider
```

#### `signInWithRedirect`

``` purescript
signInWithRedirect :: forall eff. AuthProvider -> Auth -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `signInWithPopup`

``` purescript
signInWithPopup :: forall eff. AuthProvider -> Auth -> (Error -> Eff ("firebase" :: FIREBASE | eff) Unit) -> (UserCredential -> Eff ("firebase" :: FIREBASE | eff) Unit) -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `RedirectResult`

``` purescript
data RedirectResult :: Type
```

#### `getRedirectResult`

``` purescript
getRedirectResult :: forall eff. Auth -> (Error -> Eff ("firebase" :: FIREBASE | eff) Unit) -> (RedirectResult -> Eff ("firebase" :: FIREBASE | eff) Unit) -> Eff ("firebase" :: FIREBASE | eff) Unit
```

#### `getRedirectResultAff`

``` purescript
getRedirectResultAff :: forall eff. Auth -> Aff ("firebase" :: FIREBASE | eff) RedirectResult
```

#### `uid`

``` purescript
uid :: User -> String
```

#### `displayName`

``` purescript
displayName :: User -> Maybe String
```

#### `photoURL`

``` purescript
photoURL :: User -> Maybe String
```

#### `isAnonymous`

``` purescript
isAnonymous :: User -> Boolean
```

#### `delete`

``` purescript
delete :: forall eff. User -> Eff ("firebase" :: FIREBASE | eff) Unit
```


