## Module Web.Firebase4.Storage.StorageReference

#### `bucket`

``` purescript
bucket :: StorageReference -> String
```

#### `fullPath`

``` purescript
fullPath :: StorageReference -> String
```

#### `name`

``` purescript
name :: StorageReference -> String
```

#### `parent`

``` purescript
parent :: StorageReference -> Maybe StorageReference
```

#### `root`

``` purescript
root :: StorageReference -> StorageReference
```

#### `storage`

``` purescript
storage :: StorageReference -> Storage
```

#### `child`

``` purescript
child :: String -> StorageReference -> StorageReference
```

#### `delete`

``` purescript
delete :: forall eff. StorageReference -> Aff (firebase :: FIREBASE | eff) Unit
```

#### `getDownloadURL`

``` purescript
getDownloadURL :: forall eff. StorageReference -> Aff (firebase :: FIREBASE | eff) String
```

#### `getMetadata`

``` purescript
getMetadata :: forall eff. StorageReference -> Aff (firebase :: FIREBASE | eff) FullMetadata
```

#### `putBlob`

``` purescript
putBlob :: forall eff. Foreign -> StorageReference -> Aff (firebase :: FIREBASE | eff) UploadTask
```

#### `putUint8Array`

``` purescript
putUint8Array :: forall eff. Foreign -> StorageReference -> Aff (firebase :: FIREBASE | eff) UploadTask
```

#### `putArrayBuffer`

``` purescript
putArrayBuffer :: forall eff. Foreign -> StorageReference -> Aff (firebase :: FIREBASE | eff) UploadTask
```

#### `putString`

``` purescript
putString :: forall eff. String -> StorageReference -> Aff (firebase :: FIREBASE | eff) UploadTask
```

#### `getGSURL`

``` purescript
getGSURL :: forall eff. StorageReference -> Aff (firebase :: FIREBASE | eff) String
```


