
"use strict";

exports.bucket = function(ref){
    return ref.bucket;
};

exports.fullPath = function(ref){
    return ref.fullPath;
};

exports.name = function(ref){
    return ref.name;
};
 
exports.parentNullable = function(ref){
    return ref.parent;
};

exports.root = function(ref){
    return ref.root;
};

exports.storage = function(ref){
    return ref.storage;
};

exports.child = function(ref){
    return ref.child;
};

exports.deleteEff = function(ref){
    return function(reject){
        return function(resolve){
            return function(){
                ref.delete().then(
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

exports.getDownloadURLEff = function(ref){
    return function(reject){
        return function(resolve){
            return function(){
                ref.getDownloadURL().then(
                    function(url){
                        resolve(url)();
                    }, 
                    function(err){
                        reject(err)();
                    }
                );
            };
        };
    };
};

exports.getMetadataEff = function(ref){
    return function(reject){
        return function(resolve){
            return function(){
                ref.delete().then(
                    function(metadata){
                        resolve(metadata)();
                    }, 
                    function(err){
                        reject(err)();
                    }
                );
            };
        };
    };
};

exports.updateMetadataEff = function(fullMetadata){
    return function(ref){
        return function(reject){
            return function(resolve){
                return function(){
                    ref.updateMetadata(fullMetadata).then(
                        function(result){
                            resolve(result)();
                        }, 
                        function(err){
                            reject(err)();
                        }
                    );
                };
            };
        };
    };
};

exports.putBlobEff = function(blob){
    return function(ref){
        return function(reject){
            return function(resolve){
                return function(){
                    ref.put(blob).then(
                        function(uploadTask){
                            resolve(uploadTask)();
                        }, 
                        function(err){
                            reject(err)();
                        }
                    );
                };
            };
        };
    };
};

exports.putUint8ArrayEff = function(utf8array){
    return function(ref){
        return function(reject){
            return function(resolve){
                return function(){
                    ref.put(utf8array).then(
                        function(uploadTask){
                            resolve(uploadTask)();
                        }, 
                        function(err){
                            reject(err)();
                        }
                    );
                };
            };
        };
    };
};

exports.putArrayBufferEff = function(arrayBuffer){
    return function(ref){
        return function(reject){
            return function(resolve){
                return function(){
                    ref.put(arrayBuffer).then(
                        function(uploadTask){
                            resolve(uploadTask)();
                        }, 
                        function(err){
                            reject(err)();
                        }
                    );
                };
            };
        };
    };
};
exports.putStringEff = function(str){
    return function(ref){
        return function(reject){
            return function(resolve){
                return function(){
                    ref.putString(str).then(
                        function(uploadTask){
                            resolve(uploadTask)();
                        }, 
                        function(err){
                            reject(err)();
                        }
                    );
                };
            };
        };
    };
};

exports.getGSURLEff = function(ref){
    return function(reject){
        return function(resolve){
            return function(){
                ref.toString().then(
                    function(url){
                        resolve(url)();
                    }, 
                    function(err){
                        reject(err)();
                    }
                );
            };
        };
    
    };
};