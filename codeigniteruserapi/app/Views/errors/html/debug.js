var tabLinks = {};
var contentDivs = {};

function init() {
    var tabsElement = document.getElementById('tabs');
    
    if (tabsElement !== null) {
        var tabListItems = tabsElement.querySelectorAll('li');
        
        tabListItems.forEach(function(tabListItem) {
            var tabLink = getFirstChildWithTagName(tabListItem, 'A');
            if (tabLink !== null) {
                var id = getHash(tabLink.getAttribute('href'));
                tabLinks[id] = tabLink;
                contentDivs[id] = document.getElementById(id);
            }
        });
    } else {
        // console.error("Element with ID 'tabs' not found.");
    }

    for (var id in tabLinks) {
        tabLinks[id].addEventListener('click', showTab);
        tabLinks[id].addEventListener('focus', function() {
            this.blur();
        });
        tabLinks[id].classList.remove('active');
    }

    // Highlight the first tab
    var firstTabId = Object.keys(tabLinks)[0];
    if (firstTabId) {
        tabLinks[firstTabId].classList.add('active');
    }

    // Hide all content divs except the first
    for (var id in contentDivs) {
        if (id !== firstTabId) {
            contentDivs[id].classList.add('hide');
        }
    }
}

function showTab(event) {
    event.preventDefault();
    var selectedId = getHash(this.getAttribute('href'));

    for (var id in contentDivs) {
        if (id === selectedId) {
            tabLinks[id].classList.add('active');
            contentDivs[id].classList.remove('hide');
        } else {
            tabLinks[id].classList.remove('active');
            contentDivs[id].classList.add('hide');
        }
    }
}

function getFirstChildWithTagName(element, tagName) {
    var children = element.childNodes;
    for (var i = 0; i < children.length; i++) {
        var child = children[i];
        if (child.nodeType === 1 && child.nodeName === tagName.toUpperCase()) {
            return child;
        }
    }
    return null;
}

function getHash(url) {
    var hashPos = url.lastIndexOf('#');
    return url.substring(hashPos + 1);
}

// Call the init function when the DOM content is loaded
document.addEventListener('DOMContentLoaded', init);
