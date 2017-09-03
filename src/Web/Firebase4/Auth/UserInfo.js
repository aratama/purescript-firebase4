"use strict";

// Properties

exports.displayNameNullable = function(user){
    return user.displayName;
};

exports.emailNullable = function(user){
    return user.email;
};

exports.phoneNumberNullable = function(user){
    return user.phoneNumber;
};

exports.photoURLNullable = function(user){
    return user.photoURL;
};

exports.providerId = function(user){
    return user.providerId;
};

exports.uid = function(user){
    return user.uid;
};
