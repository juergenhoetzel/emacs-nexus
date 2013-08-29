# Installation 

Your .emacs now needs something like this:

  (add-to-list 'load-path "/path/to/emacs-nexus")
  (require 'nexus)

## Usage 

Execute Emacs command:

  M-x nexus-search-keyword

to search by keywords.

  M-x nexus-search-coordinates

to search by [Maven Coordinates](http://maven.apache.org/pom.html#Maven_Coordinates).

  M-x nexus-search-classname 

to search by Java class name.  

## Customization

By default *Sonatypes Maven Central Repository*  is used. You can configure your own Nexus Server:

 M-x customize-variable nexus-rest-url

## Screenshot

![Nexus Widget](https://github.com/juergenhoetzel/emacs-nexus/raw/master/doc-img/nexus-widget-screenshot.png "Nexus Widget")

# ac-nexus

A Nexus Source for Emacs Auto Complte Mode: https://github.com/auto-complete/auto-complete 

## Installation

Add to your .emacs file:

```lisp
(require 'ac-nexus)
(add-hook 'clojure-mode-hook 'ac-source-lein-set-up)
```

The url client in pure elisp is much slower compared to external retrieving. 

Recommended is setting up external url retriving i.e. setting  the custom variable `mm-url-use-external'  to a non nil value

```lisp
(setq mm-url-use-external t)
```

## Screenshot

![Nexus Autocomplete](https://github.com/juergenhoetzel/emacs-nexus/raw/master/doc-img/ac-nexus-screenshot.jpg "Nexus Autocomplete")

