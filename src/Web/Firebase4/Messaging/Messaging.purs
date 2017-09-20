module Web.Firebase4.Messaging.Messaging (
    deleteToken, getToken, onMessage, onTokenRefresh, requestPermission, setBackgroundMessageHandler, useServiceWorker
) where 

import Control.Monad.Aff (Aff, makeAff)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (Error)
import Data.Foreign (Foreign)
import Prelude (Unit)
import Web.Firebase4.Messaging.Type (Messaging, Token)
import Web.Firebase4.Type (FIREBASE)

foreign import deleteTokenEff :: forall eff
    . Token
    -> Messaging
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (Unit -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit
    
deleteToken :: forall eff. Token -> Messaging -> Aff (firebase :: FIREBASE | eff) Unit
deleteToken token messaging = makeAff (deleteTokenEff token messaging)

foreign import getTokenEff :: forall eff
    . Messaging
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (Token -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit
    
getToken :: forall eff. Messaging -> Aff (firebase :: FIREBASE | eff) Token
getToken messaging = makeAff (getTokenEff messaging)


foreign import onMessage :: forall eff
    . Messaging
    -> (Foreign -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) (Eff (firebase :: FIREBASE | eff) Unit)
   
foreign import onTokenRefresh :: forall eff
    . Messaging
    -> Eff (firebase :: FIREBASE | eff) Unit
    -> Eff (firebase :: FIREBASE | eff) (Eff (firebase :: FIREBASE | eff) Unit)

foreign import requestPermissionEff :: forall eff
    . Messaging
    -> (Error -> Eff (firebase :: FIREBASE | eff) Unit)
    -> (Unit -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) Unit

requestPermission :: forall eff. Messaging -> Aff (firebase :: FIREBASE | eff) Unit
requestPermission mes = makeAff (requestPermissionEff mes)


foreign import setBackgroundMessageHandler :: forall eff
    . Messaging
    -> (Foreign -> Eff (firebase :: FIREBASE | eff) Unit)
    -> Eff (firebase :: FIREBASE | eff) (Eff (firebase :: FIREBASE | eff) Unit)


foreign import useServiceWorker :: forall eff. Foreign -> Eff (firebase :: FIREBASE | eff) Unit