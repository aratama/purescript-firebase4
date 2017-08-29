"use strict";

exports.ref = function(path){
    return function(database){
        return function(){
            return database.ref(path);
        };
    };
};

