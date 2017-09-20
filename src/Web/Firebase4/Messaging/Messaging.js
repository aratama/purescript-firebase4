"use strict";

exports.deleteTokenEff = function(token){
    return function(messaging){
        return function(reject){
            return function(resolve){
                return function(){
                    messaging.deleteToken(token).then(
                        function(){
                            resolve({})();
                        },
                        function(err){
                            reject(err)();
                        }
                    );
                };
            };
        };
    };
};


exports.getTokenEff = function(messaging){
    return function(reject){
        return function(resolve){
            return function(){
                messaging.getToken().then(
                    function(token){
                        resolve(token)();
                    },
                    function(err){
                        reject(err)();
                    }
                );
            };
        };
    };
};

exports.onMessage = function(callback){
    return function(messaging){
        return function(){
            return messaging.onMessage(function(payload){
                callback(payload)();
            });
        };
    };
};

exports.onTokenRefresh = function(callback){
    return function(messaging){
        return function(){
            return messaging.onTokenRefresh(callback);
        };
    };
};

exports.setBackgroundMessageHandler = function(callback){
    return function(messaging){
        return function(){
            return messaging.setBackgroundMessageHandler(function(payload){
                callback(payload)();
            });
        };
    };
};

exports.requestPermissionEff = function(messaging){
    return function(reject){
        return function(resolve){
            return function(){
                messaging.requestPermissionEff().then(
                    function(){
                        resolve({})();
                    },
                    function(err){
                        reject(err)();
                    }
                );
            };
        };
    };
};

exports.useServiceWorker = function(registration){
    return function(messaging){
        return function(){
            messaging.useServiceWorker(registration);
        };
    };
};