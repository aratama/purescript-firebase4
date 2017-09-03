"use strict";

// Properties

exports._displayName = function(user){
    return user.displayName;
};

exports.email = function(user){
    return user.email;
};

exports.emailVerified = function(user){
    return user.emailVerified;
};

exports.isAnonymous = function(user){
    return user.isAnonymous;
};

exports.phoneNumberNullable = function(user){
    return user.phoneNumber;
};

exports._photoURL = function(user){
    return user.photoURL;
};

exports.providerData = function(user){
    return user.providerData;
};

exports.providerId = function(user){
    return user.providerId;
};

exports.refreshToken = function(user){
    return user.refreshToken;
};

exports.uid = function(user){
    return user.uid;
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
                    function(e){
                        reject(e)();
                    }
                );
            };
        };
    };
};

exports.getIdTokenEff = function(reject){
    return function(resolve){
        return function(forceRefresh){
            return function(user){
                return function(){
                    return user.getIdToken(forceRefresh).then(
                        function(e){ 
                            reject(e)();
                        },
                        function(token){
                            resolve(token)();
                        }
                    );
                };
            };
        };
    };
};


