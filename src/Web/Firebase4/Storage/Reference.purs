module Web.Firebase4.Storage.Reference (
    bucket, fullPath, name, parent, root, storage, child, 
    delete, getDownloadURL, getMetadata, putBlob, putUint8Array, putArrayBuffer, putString, getGSURL
) where 



import Control.Monad.Aff (Aff, makeAff)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (Error)
import Data.Foreign (Foreign)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Prelude (Unit)
import Web.Firebase4.Type (FIREBASE)
import Web.Firebase4.Storage.Type (FullMetadata, Storage, Reference, UploadTask)

foreign import bucket :: Reference -> String 

foreign import fullPath :: Reference -> String 

foreign import name :: Reference -> String 
 
foreign import parentNullable :: Reference -> Nullable Reference

parent :: Reference -> Maybe Reference
parent ref = toMaybe (parentNullable ref)

foreign import root :: Reference -> Reference

foreign import storage :: Reference -> Storage

foreign import child :: String -> Reference -> Reference

foreign import deleteEff :: forall eff
    . Reference 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (Unit -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

delete :: forall eff. Reference -> Aff (firebase :: FIREBASE | eff) Unit
delete ref = makeAff (deleteEff ref)

foreign import getDownloadURLEff :: forall eff
    . Reference 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (String -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

getDownloadURL :: forall eff. Reference -> Aff (firebase :: FIREBASE | eff) String
getDownloadURL ref = makeAff (getDownloadURLEff ref)

foreign import getMetadataEff :: forall eff
    . Reference 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (FullMetadata -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

getMetadata :: forall eff. Reference -> Aff (firebase :: FIREBASE | eff) FullMetadata
getMetadata ref = makeAff (getMetadataEff ref)

foreign import updateMetadataEff :: forall eff
    . FullMetadata
    -> Reference 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (FullMetadata -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

updateMetadata :: forall eff. FullMetadata -> Reference -> Aff (firebase :: FIREBASE | eff) FullMetadata
updateMetadata metadata ref = makeAff (updateMetadataEff metadata ref)

foreign import putBlobEff :: forall eff
    . Foreign 
    -> Reference 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (UploadTask -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

putBlob :: forall eff. Foreign -> Reference -> Aff (firebase :: FIREBASE | eff) UploadTask
putBlob blob ref = makeAff (putBlobEff blob ref)

foreign import putUint8ArrayEff :: forall eff
    . Foreign 
    -> Reference 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (UploadTask -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

putUint8Array :: forall eff. Foreign -> Reference -> Aff (firebase :: FIREBASE | eff) UploadTask
putUint8Array array ref = makeAff (putUint8ArrayEff array ref)


foreign import putArrayBufferEff :: forall eff
    . Foreign 
    -> Reference 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (UploadTask -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

putArrayBuffer :: forall eff. Foreign -> Reference -> Aff (firebase :: FIREBASE | eff) UploadTask
putArrayBuffer buffer ref = makeAff (putArrayBufferEff buffer ref)

foreign import putStringEff :: forall eff
    . String
    -> Reference 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (UploadTask -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

putString :: forall eff. String -> Reference -> Aff (firebase :: FIREBASE | eff) UploadTask
putString str ref = makeAff (putStringEff str ref)

foreign import getGSURLEff :: forall eff
    . Reference 
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (String -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

getGSURL :: forall eff. Reference -> Aff (firebase :: FIREBASE | eff) String
getGSURL ref = makeAff (getGSURLEff ref)

