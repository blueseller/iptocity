dnl $Id$
dnl config.m4 for extension iptocity

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

PHP_ARG_WITH(iptocity, for iptocity support,
Make sure that the comment is aligned:
[  --with-iptocity             Include iptocity support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(iptocity, whether to enable iptocity support,
dnl Make sure that the comment is aligned:
dnl [  --enable-iptocity           Enable iptocity support])

if test "$PHP_IPTOCITY" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-iptocity -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/iptocity.h"  # you most likely want to change this
  dnl if test -r $PHP_IPTOCITY/$SEARCH_FOR; then # path given as parameter
  dnl   IPTOCITY_DIR=$PHP_IPTOCITY
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for iptocity files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       IPTOCITY_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$IPTOCITY_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the iptocity distribution])
  dnl fi

  dnl # --with-iptocity -> add include path
  dnl PHP_ADD_INCLUDE($IPTOCITY_DIR/include)

  dnl # --with-iptocity -> check for lib and symbol presence
  dnl LIBNAME=iptocity # you may want to change this
  dnl LIBSYMBOL=iptocity # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $IPTOCITY_DIR/lib, IPTOCITY_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_IPTOCITYLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong iptocity lib version or lib not found])
  dnl ],[
  dnl   -L$IPTOCITY_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(IPTOCITY_SHARED_LIBADD)

  PHP_NEW_EXTENSION(iptocity, iptocity.c, $ext_shared)
fi
