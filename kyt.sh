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
BZh91AY&SYt�!!  ��� }���o߮����    P��v�6�Z 2!OEO��4Ǵ�zO�M6�� �@zC6��4�SF��ɧ����� @  Ѡ 	i'��SQ�6��d�@C@ @s	�#CC!�hd4Ѡ� @0	)�h?���	��m=S��P�   �#]��=�R�:h�`k�!>��`���a�IΧ(�Y��G��H'-#�x�+n�r.b&��Ja��ׂ���踶�gW>T4o\R�|��;�l�([Հ��0z�"��#���Sw��~U�����#�Z9/�Y����v�?\���������,��qc2c���֥֔,K�b�b]GwV�J�V�vѷ&Eˊ�����S�ǰ}B���k��HD?f67��!��s�PKs��I#�ZP��Q�R�[tg"RQC���8XpG;��J� ;#�N�G��K�Yr��f���d�q��ܑ�
7^���. \>�iiB4_�'��?c\���2�t�wE	F'��8�5�u\
B*1 �$���� ,kyȃȩ\�6�*��Vߎ��y��LI�r�6��^HF����3������O��=� ��I�ݢ�����;A�U ��+qL|ot�'*�#i]*[��&F=��F�G8���v{Ʋj���A{��ȼ�I�	.ʢ�}j4�]$�?�+^�����'.���En/I�u�̌p!��4�8�)�V�nЁ5x�y�]}5w	j�di=6��f0�O�jDl��h�$�?)8WB�(DD#�*�P }to�dQ.{a�Ll��f��9���6W�m�oR��΃`Phc�n��A�z��r��+�� �7xE��H��e�0k����.��og����0���,Q�� 4ݫ�i68��ߴ��o!�F��q`5��Bn0��Z���<pFk����P�N�6w��)u�u�A��u2�3��\b�Mk���*�S�N�I�8d�g�1��1\Dخ�5v^	U��8�
c���Ȟ3�X`5��B�m= ���3@̅9�����B�j2s{2�@Mt�<Y�B]��"xrgE�'mi֯�K�$��$�/���)���	