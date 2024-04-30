#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY4��  �_�EP���?n߮����    Pm�*�]2��h"1I�M6��=F�ʘOI�dbi����jx��H��I���Dh�5   �h h4$(M=L�y@���OPѠ�A� �a �i��� ��Ri�h���)�i���4�ѐ��i� 4�q �ush[=�^��A��d�<dY�]�i�����Y����: Ah&W��:�<���� ��I��A�ɗdm(��La�a]◓�Q�
�ɭ<C�_V��@�D���*�Y^.rk�,����6���}3���&���� /�P��.�����ߔ:ԲԲ^���zܮ�5Fo#m�y�I�p�P`TjA�'�Q�MW	�O�ri����&[�"��:��!T?��Β�
�)���|�mCSAC��Eu�Cuv�2 N��$6�&�i�N1g7q;��a`0D�$ %I&$"��{$6S-�X+8�Em0	�=�Ʒ�gy=q�0��5m	�υ� #�#�>�؉�53dM��@RM����W���o���ց~7����X�V��2c���!!��5H;.�����<[�!r:�"@"�k	�*����J`l��e{u��z��mkOI�y�ݵ��B9r���隷���ũ-�U��R���hn ]�HK���=�Y�JD����p�1�Z�@� xg��]L6	vw���n�%�瑲��P���TM�9��,�J=���E�$�w �D�稗��	A��RU@�@8��,�D�S��i�-,�謾�)�5�m�B�\��B��&�8�9�§Jl��+�w4���?�>��~0�] ��,�%�̐�C%�؀�a�4e�(� ���JE�PQzq���aI�PPX[B�#ʐ�]l�RJ��NuN�ռ[��9S����Zi�@���*���蠫$�wJ�!�?���_J��?�w$S�	L���