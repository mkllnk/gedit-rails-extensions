# Gedit Rails Extensions

Here are some extensions for Ruby/Rails developers using gedit.


## Install

The contained Makefile installs the MIME packages and syntax files to the system directories.

    sudo make install
    sudo update-mime-database /usr/share/mime

Restart gedit if it's already running.

For manually installing MIME packages:

    sudo cp mime-packages/rails.xml /usr/share/mime/packages/
    sudo update-mime-database /usr/share/mime
 
For manually installing syntax files (.lang):

    sudo cp language-specs/*.lang /usr/share/gtksourceview-2.0/language-specs/ # for gedit-2
    sudo cp language-specs/*.lang /usr/share/gtksourceview-3.0/language-specs/ # for gedit-3


## Build a Debian Package

There are three steps to build a Debian package from this repository:

    git archive --format=tar.gz --prefix=gedit-rails-extensions-0.1/ HEAD \
        > /tmp/gedit-rails-extensions_0.1.orig.tar.gz
    cd /tmp && tar xf gedit-rails-extensions_0.1.orig.tar.gz
    cd gedit-rails-extensions-0.1 && debuild -us -uc

Be careful with the file names. The packaging tools need a certain structure.
The version number, in this example 0.1, has to be changed to the version noted 
in `debian/changelog`.
You find more information on: https://wiki.debian.org/IntroDebianPackaging


## MIME packages

rails.xml:

- RHTML Template (*.rhtml, *.erb)
- Ruby JavaScript (*.rjs)
- Ruby Rakefile (Rakefile)
- Ruby Rake Task (*.rake)
- Ruby XML Template (*.rxml, *.builder)
- YAML Document (*.yml)
- Haml Template (*.haml)
- Sass Stylesheet (*.sass)


## Language Specs

- haml.lang: Specs for the Haml templating language
- rhtml.lang: Specs for the old Ruby HTML file type
- sass.lang: Specs for the Sass Stylesheet language 
