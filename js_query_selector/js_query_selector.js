// INSTRUCTIONS AT THE BOTTOM.

var Query = function (selector) {
    var elements = [];
 
    var idNameCheck = /[\#][^\#\.]+/;
    var classNameCheck = /[\.][^\#\.]+/;
    var tagNameCheck = /^[^\#\.]+/;
 
    var tagMatch = selector.match(tagNameCheck);
    var idMatch =  selector.match(idNameCheck);
    var classMatch = selector.match(classNameCheck);
 
    if (idMatch && tagMatch) {
        var idName = idMatch[0].split("#")[1];
        var tagName = tagMatch[0];
        findElementByIdAndTag(idName, tagName);
    } else if (classMatch && tagMatch) {
        var className = classMatch[0].split(".")[1];
        var tagName = tagMatch[0];
        findElementsByClassAndTag(className, tagName);
    } else if (idMatch) {
        var idName = idMatch[0].split("#")[1];
        findElementByIdOnly(idName);
    } else if (classMatch) {
        var className = classMatch[0].split(".")[1];
        findElementsByClassOnly(className);
    } else if (tagMatch) {
        var tagName = tagMatch[0];
        findElementsByTagOnly(tagName);
    }
 
    function findElementByIdAndTag(idName, tagName) {
        var idElement = document.getElementById(idName);
    
        if (idElement !== null && idElement.tagName == tagName.toUpperCase()) {
            elements.push(idElement);
        }
    }
 
    function findElementsByClassAndTag(className, tagName) {
        var elementsFound = document.getElementsByClassName(className);
 
        for (var i=0; i < elementsFound.length; i++) {
            if (elementsFound[i].tagName == tagName.toUpperCase()) {
                elements.push(elementsFound[i]);
            }
        }
    }
 
    function findElementByIdOnly(idName) {
        if (document.getElementById(idName) !== null) {
            elements.push(document.getElementById(idName));
        }
    }
 
    function findElementsByClassOnly(className){
        var elementsFound = document.getElementsByClassName(className);
    
        for (var i=0; i < elementsFound.length; i++) {
            elements.push(elementsFound[i]);
        }
    }
 
    function findElementsByTagOnly (tagName) {
        var elementsFound = document.getElementsByTagName(tagName);
	
        for (var i=0; i < elementsFound.length; i++) {
            if (elementsFound[i].tagName == tagName.toUpperCase()) {
                elements.push(elementsFound[i]);
            }
        }
    }
 
    return elements;
};

/* To run the code, paste in to broswer console, and make queries like so:

Query("div")
Query("img.some_class")
Query("#some_id")
Query(".some_class")
Query("input#some_id") 
Query("div#some_id.some_class") 
Query("div.some_class#some_id")

 */