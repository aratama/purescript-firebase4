"use strict";

/* global firebase */

exports.newFacebookAuthProvider = function(){
    return new firebase.auth.FacebookAuthProvider();
};
