"use strict";

/* global firebase */

exports.newGithubAuthProvider = function(){
    return new firebase.auth.GithubAuthProvider();
};
