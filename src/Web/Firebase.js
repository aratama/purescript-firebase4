"use strict";

/* global firebase */

exports.initializeApp = function(config){
    return function(){
        //var firebase = require('firebase');
        return firebase.initializeApp(config);
    };
};

exports.database = function(firebase){
    return function(){
        return firebase.database();
    };
};


exports.ref = function(path){
    return function(database){
        return function(){
            return database.ref(path);
        };
    };
};


exports.child = function(path){
    return function(reference){
        return function(){
            return reference.child(path);
        };
    };
};

exports.set = function(value){
    return function(reference){
        return function(){
            reference.set(value).then(function(){
                // ok
            });
        };
    };
};

exports.remove = function(reference){
    return function(){
        reference.remove();
    };
};

exports.onValue = function(callback){
    return function(reference){
        return function(){
            reference.on("value", function(snapshot){
                callback(snapshot)();
            });
        };
    };
};

exports._on = function(eventType){
    return function(reject){
        return function(callback){
            return function(reference){
                return function(){
                    reference.on(eventType, function(snapshot){
                        callback(snapshot)();
                    }, function(e){
                        reject(e)();
                    });
                };
            };
        };
    };
};

exports.once = function(callback){
    return function(reference){
        return function(){
            reference.once("value", function(snapshot){
                callback(snapshot)();
            });
        };
    };
};

exports.off = function(reference){
    return function(){
        reference.off();
    };
};

exports.val = function(snapshot){
    return snapshot.val();
};

exports.exists = function(snapshot){
    return snapshot.exists();
};

exports.forEach = function(snapshot){
    return function(callback){
        return function(){
            return snapshot.forEach(function(snap){
                callback(snap)();
            });
        };
    };
};

exports.key = function(snapshot){
    return snapshot.key;
};

exports.numChildren = function(snapshot){
    return snapshot.numChildren();
};


exports.auth = function(firebase){
    return function(){
        return firebase.auth();
    };
};

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


// User
exports.uid = function(user){
    return user.uid;
};

exports._displayName = function(user){
    return user.displayName;
};

exports.isAnonymous = function(user){
    return user.isAnonymous;
};

exports._photoURL = function(user){
    return user.photoURL;
};

exports.delete = function(user){
    return function(){
        user.delete();
    };
};

exports.newTwitterAuthProvider = function(){
    return new firebase.auth.TwitterAuthProvider();
};

exports.newGithubAuthProvider = function(){
    return new firebase.auth.GithubAuthProvider();
};

exports.newGoogleAuthProvider = function(){
    return new firebase.auth.GoogleAuthProvider();
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




exports.onDisconnect = function(reference){
    return function(){
        return reference.onDisconnect();
    };
};

exports.limitToLast = function(limit){
    return function(reference){
        return function(){
            return reference.limitToLast(limit);
        };
    };
};