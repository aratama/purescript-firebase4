"use strict";

exports._onceAff = function(reject){
    return function(resolve){
        return function(reference){
            return function(){
                reference.once("value", function(snapshot){
                    resolve(snapshot)();
                }).catch(function(err){
                    reject(err)();
                });
            };
        };
    };
};