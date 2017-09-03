## Module Web.Firebase4.Database.Snapshot

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
forEach :: forall eff. Snapshot -> (Snapshot -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `key`

``` purescript
key :: Snapshot -> String
```

#### `numChildren`

``` purescript
numChildren :: Snapshot -> Int
```


