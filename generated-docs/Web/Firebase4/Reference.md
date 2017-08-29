## Module Web.Firebase4.Reference

#### `set`

``` purescript
set :: forall eff. Foreign -> Reference -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `remove`

``` purescript
remove :: forall eff. Reference -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `onValue`

``` purescript
onValue :: forall eff1 eff2. (Snapshot -> Eff (firebase :: FIREBASE | eff1) Unit) -> Reference -> Eff (firebase :: FIREBASE | eff2) Unit
```

#### `on`

``` purescript
on :: forall eff. EventType -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) -> (Snapshot -> Eff (firebase :: FIREBASE | eff) Unit) -> Reference -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `once`

``` purescript
once :: forall eff. (Snapshot -> Eff (firebase :: FIREBASE | eff) Unit) -> Reference -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `off`

``` purescript
off :: forall eff. Reference -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `child`

``` purescript
child :: forall eff. String -> Reference -> Eff (firebase :: FIREBASE | eff) Reference
```

#### `onDisconnect`

``` purescript
onDisconnect :: forall eff. Reference -> Eff (firebase :: FIREBASE | eff) Reference
```

#### `limitToLast`

``` purescript
limitToLast :: forall eff. Int -> Reference -> Eff (firebase :: FIREBASE | eff) Reference
```


