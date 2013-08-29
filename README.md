# Installation 

Your .emacs now needs something like this:

  (add-to-list 'load-path "/path/to/emacs-nexus")
  (require 'nexus)

# Usage 

Execute Emacs command:

  M-x nexus-search-keyword

to search by keywords.

  M-x nexus-search-coordinates

to search by [Maven Coordinates](http://maven.apache.org/pom.html#Maven_Coordinates).

  M-x nexus-search-classname 

to search by Java class name.  

# Customization

By default *Sonatypes Maven Central Repository*  is used. You can configure your own Nexus Server:

 M-x customize-variable nexus-rest-url

# ac-nexus
 
## Installation

Add to your .emacs file:

     (require 'ac-nexus)
     (add-hook 'clojure-mode-hook 'ac-source-lein-set-up)
     

The url client in pure elisp is much slower compared to external retrieving. 

Recommended is setting up external url retriving i.e. setting  the custom variable `mm-url-use-external'  to a non nil value
    (setq mm-url-use-external t)


![Just a screenshot](emacs-nexus/raw/master/nexus-widget-screenshot.png) 