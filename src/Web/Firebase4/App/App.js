"use strict";

exports.name = function(app){
    return app.name;
};

exports.options = function(app){
    return app.options;
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

exports.deleteEff = function(app){
    return function(reject){
        return function(resolve){
            return function(){
                app.delete().then(
                    function(){
                        resolve({})();
                    },
                    function(err){
                        reject(err)();
                    }
                );
            };
        };
    };
};