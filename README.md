# Installation 

Your .emacs now needs something like this:

  (add-to-list 'load-path "/path/to/emacs-nexus")
  (require 'nexus)

# Usage 

Execute Emacs command:

  M-x nexus-search-keyword

to search by keywords.


# Customization

By default *Sonatypes Maven Central Repository*  is used. You can configure your own Nexus Server:

 M-x customize-variable nexus-rest-url

# Screenshot
 
![Just a screenshot](emacs-nexus/raw/master/nexus-widget-screenshot.png) 