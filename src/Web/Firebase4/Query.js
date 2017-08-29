"use strict";

exports.orderByKey = function(query){
    return query.orderByKey();
};

exports.limitToFirst = function(limit){
    return function(query){     
        return query.limitToFirst(limit);
    }; 
};

exports.limitToLast = function(limit){
    return function(query){     
        return query.limitToLast(limit); 
    };
};


exports.startAt = function(value){
    return function(query){     
        return query.startAt(value); 
    };
};

exports.endAt = function(value){
    return function(query){     
        return query.endAt(value); 
    };
};

exports.equalTo = function(value){
    return function(query){    
        return query.equalTo(value); 
    };
};



exports.startAtWithKey = function(value){
    return function(key){
        return function(query){     
            return query.startAt(value, key); 
        };
    };
};

exports.endAtWithKey = function(value){
    return function(key){
        return function(query){     
            return query.endAt(value, key); 
        };
    };
};

exports.equalToWithKey = function(value){
    return function(key){
        return function(query){    
            return query.equalTo(value, key); 
        };
    };
};
