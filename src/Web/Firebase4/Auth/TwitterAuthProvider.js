"use strict";

/* global firebase */

exports.newTwitterAuthProvider = function(){
    return new firebase.auth.TwitterAuthProvider();
};

