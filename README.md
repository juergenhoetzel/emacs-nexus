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

A Nexus Source for Emacs Auto Complete Mode: https://github.com/auto-complete/auto-complete

## Installation

Add to your .emacs file:

```lisp
(require 'ac-nexus)
(add-hook 'clojure-mode-hook 'ac-source-lein-set-up)
```

The url client in pure elisp is much slower compared to external retrieving. 

Recommended is setting up external url retriving i.e. setting  the custom variable to a non nil value:

```lisp
(setq mm-url-use-external t)
```

## Performance

The Nexus Rest API is used for completion. Because of the huge amount of artifacts in Maven Central,  HTTP Responses can be very large (thus slow).
To limit the size of the responses. only Artifact-IDs and Version Numbers are completed. Group-IDs are not completed.
Also completion of Artifact-IDs only starts after entering 3 prefix characters. This prefix length is customizable via `nexus-ac-artifact-prefix-length`.

It is recommended to use a local Nexus instance for performance reasons. When using a local Nexus instance you can also setup Clojars as a Mirror-Repository and get
completion for Clojars artifacts.

```lisp
(setq mm-url-use-external t)
```

## Screenshot

![Nexus Autocomplete](https://github.com/juergenhoetzel/emacs-nexus/raw/master/doc-img/ac-nexus-screenshot.jpg "Nexus Autocomplete")

