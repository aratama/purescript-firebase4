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

exports._on = function(eventType){
    return function(reject){
        return function(callback){
            return function(reference){
                return function(){
                    reference.on(eventType, function(snapshot){
                        callback(snapshot)();
                    }, function(err){
                        reject(err)();
                    });
                };
            };
        };
    };
};

exports._once = function(eventType){
    return function(reject){
        return function(callback){
            return function(reference){
                return function(){
                    reference.once(eventType, function(snapshot){
                        callback(snapshot)();
                    }, function(err){
                        reject(err)();
                    });
                };
            };
        };
    };
};

exports.off = function(reference){
    return function(){
        reference.off();
    };
};

exports.onDisconnect = function(reference){
    return function(){
        return reference.onDisconnect();
    };
};

