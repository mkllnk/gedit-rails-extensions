prefix = /usr
sharedir = $(prefix)/share
mimedir = $(sharedir)/mime
packdir = $(mimedir)/packages
langdir2 = $(sharedir)/gtksourceview-2.0/language-specs
langdir3 = $(sharedir)/gtksourceview-3.0/language-specs

all:
	echo 'nothing to commit'

clean:
	echo 'nothing to clean'

install: all
	install -m 0644 mime-packages/rails.xml $(DESTDIR)$(packdir)
	install -m 0644 language-specs/*.lang $(DESTDIR)$(langdir2)
	install -m 0644 language-specs/*.lang $(DESTDIR)$(langdir3)

