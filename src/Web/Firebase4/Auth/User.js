"use strict";

// Properties

exports.emailVerified = function(user){
    return user.emailVerified;
};

exports.isAnonymous = function(user){
    return user.isAnonymous;
};

exports.providerData = function(user){
    return user.providerData;
};

exports.refreshToken = function(user){
    return user.refreshToken;
};

// methods

exports.deleteEff = function(reject){
    return function(resolve){
        return function(user){
            return function(){
                user.delete().then(
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

exports.getIdTokenEff = function(forceRefresh){
    return function(user){
        return function(reject){
            return function(resolve){
                return function(){
                    return user.getIdToken(forceRefresh).then(
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
};


exports.linkAndRetrieveDataWithCredentialEff = function(credential){
    return function(user){
        return function(reject){
            return function(resolve){
                return function(){
                    return user.linkAndRetrieveDataWithCredentialEff(credential).then(
                        function(userCredential){
                            resolve(userCredential)();
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