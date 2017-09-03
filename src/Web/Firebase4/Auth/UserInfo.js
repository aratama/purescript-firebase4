"use strict";

// Properties

exports._displayName = function(user){
    return user.displayName;
};

exports.email = function(user){
    return user.email;
};

exports.phoneNumberNullable = function(user){
    return user.phoneNumber;
};

exports._photoURL = function(user){
    return user.photoURL;
};

exports.providerId = function(user){
    return user.providerId;
};

exports.uid = function(user){
    return user.uid;
};
