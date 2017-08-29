"use strict";

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
