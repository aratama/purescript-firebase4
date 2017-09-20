"use strict";

exports.storageNullable = function(app){
    return app.storage();
};

exports.app = function(storage){
    return storage.app;
};

exports.getMaxOperationRetryTime = function(storage){
    return storage.maxOperationRetryTime;
};

exports.getMaxUploadRetryTime = function(storage){
    return storage.maxUploadRetryTime;
};

exports.ref = function(path){
    return function(storage){
        return function(){
            return storage.ref(path);          
        };
    };
};

exports.refFromURL = function(url){
    return function(storage){
        return function(){
            return storage.refFromURL(url);
        };
    };
};

exports.setMaxOperationRetryTime = function(time){
    return function(storage){
        return function(){
            storage.maxOperationRetryTime = time;
        };
    };
};

exports.setMaxUploadRetryTime = function(time){
    return function(storage){
        return function(){
            storage.maxUploadRetryTime = time;
        };
    };
};