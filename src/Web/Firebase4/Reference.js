"use strict";

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

exports.limitToLast = function(limit){
    return function(reference){
        return function(){
            return reference.limitToLast(limit);
        };
    };
};

exports.onDisconnect = function(reference){
    return function(){
        return reference.onDisconnect();
    };
};
