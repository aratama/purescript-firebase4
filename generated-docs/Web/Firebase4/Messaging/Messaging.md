## Module Web.Firebase4.Messaging.Messaging

#### `messaging`

``` purescript
messaging :: App -> Firebase -> Messaging
```

#### `deleteToken`

``` purescript
deleteToken :: forall eff. Token -> Messaging -> Aff (firebase :: FIREBASE | eff) Unit
```

#### `getToken`

``` purescript
getToken :: forall eff. Messaging -> Aff (firebase :: FIREBASE | eff) Token
```

#### `onMessage`

``` purescript
onMessage :: forall eff. Messaging -> (Foreign -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) (Eff (firebase :: FIREBASE | eff) Unit)
```

#### `onTokenRefresh`

``` purescript
onTokenRefresh :: forall eff. Messaging -> Eff (firebase :: FIREBASE | eff) Unit -> Eff (firebase :: FIREBASE | eff) (Eff (firebase :: FIREBASE | eff) Unit)
```

#### `requestPermission`

``` purescript
requestPermission :: forall eff. Messaging -> Aff (firebase :: FIREBASE | eff) Unit
```

#### `setBackgroundMessageHandler`

``` purescript
setBackgroundMessageHandler :: forall eff. Messaging -> (Foreign -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) (Eff (firebase :: FIREBASE | eff) Unit)
```

#### `useServiceWorker`

``` purescript
useServiceWorker :: forall eff. Foreign -> Eff (firebase :: FIREBASE | eff) Unit
```


