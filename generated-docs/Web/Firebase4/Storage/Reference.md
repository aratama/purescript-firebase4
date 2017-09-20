## Module Web.Firebase4.Storage.Reference

#### `bucket`

``` purescript
bucket :: Reference -> String
```

#### `fullPath`

``` purescript
fullPath :: Reference -> String
```

#### `name`

``` purescript
name :: Reference -> String
```

#### `parent`

``` purescript
parent :: Reference -> Maybe Reference
```

#### `root`

``` purescript
root :: Reference -> Reference
```

#### `storage`

``` purescript
storage :: Reference -> Storage
```

#### `child`

``` purescript
child :: String -> Reference -> Reference
```

#### `delete`

``` purescript
delete :: forall eff. Reference -> Aff (firebase :: FIREBASE | eff) Unit
```

#### `getDownloadURL`

``` purescript
getDownloadURL :: forall eff. Reference -> Aff (firebase :: FIREBASE | eff) String
```

#### `getMetadata`

``` purescript
getMetadata :: forall eff. Reference -> Aff (firebase :: FIREBASE | eff) FullMetadata
```

#### `putBlob`

``` purescript
putBlob :: forall eff. Foreign -> Reference -> Aff (firebase :: FIREBASE | eff) UploadTask
```

#### `putUint8Array`

``` purescript
putUint8Array :: forall eff. Foreign -> Reference -> Aff (firebase :: FIREBASE | eff) UploadTask
```

#### `putArrayBuffer`

``` purescript
putArrayBuffer :: forall eff. Foreign -> Reference -> Aff (firebase :: FIREBASE | eff) UploadTask
```

#### `putString`

``` purescript
putString :: forall eff. String -> Reference -> Aff (firebase :: FIREBASE | eff) UploadTask
```

#### `getGSURL`

``` purescript
getGSURL :: forall eff. Reference -> Aff (firebase :: FIREBASE | eff) String
```


