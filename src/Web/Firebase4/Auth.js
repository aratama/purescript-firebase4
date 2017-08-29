"use strict";

/* global firebase */

exports.signInAnonymously = function(auth){
    return function(){
        auth.signInAnonymously();
    };
};

exports.signInWithEmailAndPassword = function(email){
    return function(password){
        return function(auth){
            return function(){
                auth.signInWithEmailAndPassword(email, password);
            };
        };
    };
};

exports.signOut = function(auth){
    return function(){
        auth.signOut();
    };
};

exports._onAuthStateChanged = function(callback){
    return function(auth){
        return function(){
            auth.onAuthStateChanged(function(user){
                callback(user)();
            });
        };
    };
};



exports.newTwitterAuthProvider = function(){
    return new firebase.auth.TwitterAuthProvider();
};

exports.newFacebookAuthProvider = function(){
    return new firebase.auth.FacebookAuthProvider();
};

exports.newGithubAuthProvider = function(){
    return new firebase.auth.GithubAuthProvider();
};

exports.newGoogleAuthProvider = function(){
    return new firebase.auth.GoogleAuthProvider();
};

exports.signInWithRedirectEff = function(provider){
    return function(auth){
        return function(reject){
            return function(resolve){
                return function(){
                    auth.signInWithRedirect(provider).then(function(){
                        resolve({})();
                    }).catch(function(err){
                        reject(err)();
                    });
                };
            };
        };
    };
};

exports.signInWithPopup = function(provider){
    return function(auth){
        return function(reject){
            return function(resolve){
                return function(){
                    auth.signInWithPopup(provider).then(function(userCredential){
                        resolve(userCredential)();
                    }).catch(function(err){
                        reject(err)();
                    });
                };
            };
        };
    };
};

exports.getRedirectResult = function(auth){
    return function(reject){
        return function(resolve){
            return function(){
                auth.getRedirectResult().then(function(result){
                    resolve(result)();
                }).catch(function(error){
                    reject(error)();
                });
            };
        };
    };
};
