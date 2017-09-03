"use strict";

/* global firebase */

exports.newGoogleAuthProvider = function(){
    return new firebase.auth.GoogleAuthProvider();
};
