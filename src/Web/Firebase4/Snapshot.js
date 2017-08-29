"use strict";

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