"use strict";

exports._initializeApp = function(config){
    return function(name){
        return function(){
            var global = new Function("return this")();
            var fb = global["firebase"] || (require && require("firebase"));
            return name === null ? fb.initializeApp(config) : fb.initializeApp(config, name);
        };
    };
};

exports.database = function(firebase){
    return function(){
        return firebase.database();
    };
};

exports.auth = function(firebase){
    return function(){
        return firebase.auth();
    };
};













