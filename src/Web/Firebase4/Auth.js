"use strict";

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



exports.newTwitterAuthProvider = function(auth){
    return function(){
        return new auth.TwitterAuthProvider();
    };
};

exports.newFacebookAuthProvider = function(auth){
    return function(){
        return new auth.FacebookAuthProvider();
    };
};

exports.newGithubAuthProvider = function(auth){
    return function(){
        return new auth.GithubAuthProvider();
    };
};

exports.newGoogleAuthProvider = function(auth){
    return function(){
        return new auth.GoogleAuthProvider();
    };
};

exports.signInWithRedirect = function(provider){
    return function(auth){
        return function(/*reject*/){
            return function(/*resolve*/){
                return function(){
                    auth.signInWithRedirect(provider);
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
