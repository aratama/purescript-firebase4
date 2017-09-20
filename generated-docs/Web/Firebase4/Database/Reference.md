## Module Web.Firebase4.Database.Reference

#### `set`

``` purescript
set :: forall eff. Foreign -> Reference -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `remove`

``` purescript
remove :: forall eff. Reference -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `on`

``` purescript
on :: forall eff. EventType -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) -> (DataSnapshot -> Eff (firebase :: FIREBASE | eff) Unit) -> Reference -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `once`

``` purescript
once :: forall eff. EventType -> (Error -> Eff (firebase :: FIREBASE | eff) Unit) -> (DataSnapshot -> Eff (firebase :: FIREBASE | eff) Unit) -> Reference -> Eff (firebase :: FIREBASE | eff) Unit
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


