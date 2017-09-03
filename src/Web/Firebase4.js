"use strict";

/* global firebase */

exports._initializeApp = function(config){
    return function(name){
        return function(){
            var global = new Function("return this")();
            var fb = global["firebase"] || (require && require("firebase"));
            return name === null ? fb.initializeApp(config) : fb.initializeApp(config, name);
        };
    };
};



exports.sDK_VERSION = firebase.SDK_VERSION;

exports.apps = function(){
    return firebase.apps;
};









