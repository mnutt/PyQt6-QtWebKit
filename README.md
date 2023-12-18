# PyQt6-QtWebKit - Python Bindings for the QtWebKit Framework

PyQt6-QtWebKit is a set of Python bindings for QtWebKit.  The
bindings sit on top of PyQt6 and are implemented as two separate modules
corresponding to the different libraries that make up the framework.

# Author

PyQt6-QtWebKit is an adaptation of other PyQt6 modules, which are
copyright (c) Riverbank Computing Limited.  Its homepage is
https://www.riverbankcomputing.com/software/pyqt/.

# License

PyQt6-QtWebKit is released under the GPL v3 license.

# Installation

When eventually published, PyQt6-QtWebKit will be able to be installed from PyPI::

    pip install PyQt6-QtWebKit

``pip`` will also build and install the bindings from the sdist package but
Qt's ``qmake`` tool must be on ``PATH``.

The ``sip-install`` tool will also install the bindings from the sdist package
but will allow you to configure many aspects of the installation.

# Building From Source

Building requires `sip`, and for whatever reason requires manually including `printsupport`:

```
sip-build --pep484-pyi --verbose --qmake=/usr/lib/qt6/bin/qmake6 --qmake-setting "QT += printsupport"
```
