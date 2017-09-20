## Module Web.Firebase4.Database.DataSnapshot

#### `val`

``` purescript
val :: DataSnapshot -> Foreign
```

#### `exists`

``` purescript
exists :: DataSnapshot -> Boolean
```

#### `forEach`

``` purescript
forEach :: forall eff. DataSnapshot -> (DataSnapshot -> Eff (firebase :: FIREBASE | eff) Unit) -> Eff (firebase :: FIREBASE | eff) Unit
```

#### `key`

``` purescript
key :: DataSnapshot -> String
```

#### `numChildren`

``` purescript
numChildren :: DataSnapshot -> Int
```


