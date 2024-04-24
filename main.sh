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
BZh91AY&SY
4�9 ,��8	�����������B�� �   0 @ `+'ٳ��b��A�kdz[ik���Ϫ�}y���[����m��f8T_l����^�\��}tW/v�B-[7j���J��Z��mtҹ�C�C���n��Ss��<�
����(�14� L@i2d�z��Oji?Q�j~�ڞ����&L�D��!���5 � � � hh �"4�=�3)�Sɦ��A����CL�24� �R	O�SzOF��MM��ѡ��b�    @D��h���#$���e=O���j�F�@�  � mA"D  �hF�ڙ@M2O
��6҃!�`��P��������_���=K}���w61n��qC�&W��}�*����tET��������D�r�<�ks�kQ/�Ƞ��k�0|�h��T?��2\��/螄����@����m�9/McɆ:����6_��:�� �F!�ų����Ul�����s��>�ɵLY��q8�m6��ck�f��ˏ�T�l'm���Wˇ�x~�+��Q`��K9���Mf��.���B|��[�����l�J��\��皱�g�F�խK'%�,�q*K��-_��uxY�nrH��݃��J�=�	�w�Z*��R�)7�҂���/�>�M�Ɔ��B~y��N�)���a~�dV��?����~j�I��w����.I�)\�V� ����V=q��;���N�9�*���9`A�ins�[<�s��\[c�U�wf���!	Z��K~ke�uy ���"���wi���+e���`y-j��p_��ܼ�҅�m�nl�:m��'���ե�#{1�p�ֵ�6��!��ؗq����I���kgOǲ&�l��'����5��s{)�>@��)5KX9���_�~d�+hF�-?����J8�B[ݻs��a�G[�PSn������0��Ɔ4�����ޞ���ֶ}Ȳ�Q3SFSꬣf��
(�(�z��'��t85yڏ�0:p�2;��+�T�2�κ)sȉ+�j���?:����M�]�JԹ͞cP�X�ܮ��l��d�/��F�.��#�/7��Ol;t�xդ7�r;�� }E� �"�N�	�"/x��<8�޳:��.J�A�M�k�l�g�����i��ڷ#��&zy�EɮM5^��v��m���D({ǆE�,����	��XS}����طx]akCϐ|��!�Q��f�?���=�"�	�R%ʉi!� ��uPޮ�Pgt~N�,��B��[��7�?��[��G�O��,]�B>�ԀF���3�h��c;���<�􈈈̝�͛Cy���)œY]��4.�bL��MnEEs��.�̷Ks�{֊��<����.��|�x����S"׵�t�,���P��K
7�g,�� �X^�G}Ĉ0�h��������5�*�ł
GM�`�a���tϼ�'�G�e��8uV�1���3��Ƈ�����ɭ��\�]�p��Јbx��b�t�=�N����B��BEq}"7�-����8 P^�!;߭����S���<]
�g�4D���n2�X�V��3Q��Qc���Ub��� ��$N2��S�
�Tg�]L��qx��Tԥ���!3�T�D��M�iY!��}GvY�r)<N�N;��#�}��9EUnҰnJٸ�1}ê��9�V���VO�`nљ,#1�����(H,
l�%vUR��EE��3l���2�G��a��q[Xe�gj�}T6�V4�W�𸳿��;����RMg��0���^mYo2�7?6I�a��sU̮T�--kX�k~v��� }����Я�W��w�k��B�E|K��W�0��}�MfT*+����4G]���Д��fN�JK���ex3����e�HV�2%t���jNrhS�Q�W�:�Ε$��o߰��R4A��4#�򛨈z�~���5�k�Q�u=oo6J�Y�l"&�Y���_R��5Ay �p�<b� �TGͅ7{�x����n�R<X;0Y�sX�9������/��dH��i���V����R��b5[3n%�?��[b��(��fW�t�n�#�
��]��vM𵮿,�*��s��_��
'_���Ss����Vu��D�a�\o?�L�s$�5YH�j��p��D;c�|S��O�	n�}��Y݋O��\���H���l��wvzmk�"��P��!Y�HЋx�o��ǿ�����W���Z
��c����zI�d9!�IP),rՈaPGAw�,(��L�=�H�?�M	�K��P��B��XNiM4jVB��5>s��P�U2M4�-b�v�JL��lv'�G�4^�}��E[��+�(�(g4�P�e�g,t������Ӂ~bP���6!50�񷟝r�?
�^��{�`�� ���nn��n�9Z�&th�/�DcC��j�������[Ř��Σ����~�L?���h�n@��^�M68��^�$��Yπ������ʯ1����z��}�~G����)���(�ƙB��g�gݕ� =_��>�Q�
�Q���^���p�s�3u���c:�����*H�P7�n686ҧ�h�6H�Y� jZ�HH����e(뮃��h�!N�">�Br<����n��F��C�/��RcH�fYSI�qP�?w�3���%�<D��@w!�g4^GX���W�Ԃ�a�; %r5�)biY1!�?�Hi*�Q,�����*��T� �������s2ʜ�!���!��� 0�*d�.�� �k��N;��L\�*�ī�M0���}�u�9Vx�TD(�Ũc��uu<-N�D ���B�hW����1�S3$�hiV;�@�9���;<w��α�g7o}O�=I�i��_IYC	����a�AE%e{s)v�q�t`��0�Sr����M1��]�j��g�v���$�m\�@w��
��a�HD8�E�.&�Qq�Mx^)�z�8.��c�@�����`���g��z$�H�y�+`Ud*�Ě����ol�~���Z�cx]I�n㩔���H�� e���Qb�E,X(
�|�ٹUZ_�1��mn��]Cf�Z:�YdyQ���t����9H�u��?H�1bE�QZ�p
��	$RClկݤ"���#r�Y�҅I�B���(֠=�6�a$���E�'5h�&rbR1��1�8tG�IB�1Y�Ɍ��H䚆�#;U�&��0�H��9ӐR���):��L�e@n&>�"I�ɪ'3IX��ǚ��P�	d�Gk_��5$��%�R�:�H�_e	�a��fE<r�r��ې�|�㗙w`j���ۏ�kh�{>�]C�
��F�]f�Ɯ~�9p�a��i��g�P>�e�,D0ݨ�D�zaN����X�7�[�&VeF�dy��!A�zĻ�n���$�Ӿ��c����Ec
*�����Ҳ�a�ּ)0�?��K�q"I�e�a�7�Y�s �"�$������A
.(~�5�g]��\�sDO�$/�z�������1-�`.�pF�񠽄܉�C]>O��B yJ��-�x��qv;�_����r��TFFi�bu ���W�ߨk �"��O8�!�@��������]���35����_(wK}��n���:�:�l3�����Ϲw�&&�t\����zy�����@/�^x��z�B;��2jb�n����A"� ��.D���,�� aتE�<���+����~�V���D���["D������j���vd�ƒ�'����t������3�脤ogD���o�H�mH}�jHwF��!�j�U���Q/���ѩ��®n;��QuCh�a�W�bm<6x��?o�
�b�{R(SZ�/M�)P;�1{�TcԶc{W��ܚG��*�h���)M��޸�7�@�����8�O��3��@�r_jVcy��p��?�[U�^�'�]�O�-�V>�e`�
{��u��IjQ������6�f� H���8��״��yK�L����ȑW5�����H{M����	��+��� ѯՊo&l�Y���Z��7��ԝ�4C��m�&��:pd1c]��N3x�(��D�d& !�h��\H�}�"�V/	����
����`b� F6"è������?�S��wmʫt�t�<�J/lj�&���\�@!\�!�%C�^��B& �;�	�B4AG�QJS6����H�"�!�h�H��ؒ$���a=�-��
�`?��	59���
�c�wƙ��v��w��!S��4�Ԫ���G$#ى���Ҥa�,�K��UM"E!R� ~��g�F=�c�u�O#ٖel!3]��T�ju^�_&x���y�G��jW��F�,x����NŹ��k� ���/�ʪ�+�( GB�h>R�吨ב��:h)�=M�W����tJg$HtR	�՗씢qeD=��L@QP�N��L�*)�H֬m:v(Dㇰ^(�{Aoh>gK��Q񟝋�M��Bq��$�fUK�j`��j������v�<�(5�#���޷�6��rG������/<�$"DkJ����gSx�8C��8���>ھ�+�OG��>�x� G���m 'kzΰx?e�Й��v򰠓�2T��1���BdȿA����X��F�)�>�#�jNկ�쓺!om���B}^����(��| �s$;�41O�.`&��抦u�Lf�Τ�2�)C����P�}M ɰhM8�3�*ET��e�v(ƒ�=�4�x#�����[<�������h�b���,j�+�3�ѾDs��Ws�r�v���2vx�$.*q�4�A��M�WU� h0i�I3�^) �/.HUVv�D�n��T�7�V���B�&�Nc�M����P������6���4h�S�J�;r��)LAr^�.\�\��
�I+�K&�!���4�ڀ؝�/A��Օڧ������2�=� ��dfVx �Vv�!N��4�hP�m6 @�HF0cmב�Z� R^2��B��	�0Sh%	���^�lh�����:*�hR&�, ��؁1��qgJ�0� ��@��R�%ƃ���!� _�R�4]c�i*X�K��R�Pԋ`:ͧ��J*6�$T���%�,�S�\sfp!���QU'"X�<N��@,FA�yj�5��~� Q��,l�{şL\�CJ�x	���h%32�ĨB�$�V��ۚ)+Ox�眂�b}bۖ>��}q�@���V��S[>�#R*b��_��t��s3I3MXA{<	"�]��$.`���SбhOl�PJ���h_)v:����@�( ���j2��c0*��$C���mSWb<p��g�-����x`r#�
¶ p�X�A�eH�e���5zN��@YH[�dw���m=B;�+N��f�S	&�g�"�h4���Y�*Pb����$�������ڇ��=Kos�[�#��w���PI��D�뗱��3����`%X4��;�X�5@WC��b���Fm�X��GY{�WPW�}�0@͞���q�d^����b9�5'J&� y5x�"CGMf�i��M��`��m�����%-������w�����[���F33	�C �J�|���I$d"��,`>�� a;���>��,�!��a��M�6PS�K 1`�h�w]��&� Du����.j_"I"�64�fA��/T��Q	h@�!����vj-�J�ԍ��)0?�j\�� l��-�F�-�i�*aD�"y����f�m��ps	V\8*�D
��4I2�H�wr*�e(��_NF�w�p���B3ȓ�؊@PF,@C�<�(Bh{�t�0	�B�4��py����J�$="&0�B�����CPށ��D�^0J�U�#���$�@���A-����:� �"��.w��سM�eyC��\�}}4���I$$$%쀉+�a��u�'9�ʜ�z��B�m�.�h4�,hy�7��c֑a���sy9 ����Q�g�M\H�@%�e��%7��jb
k��Ю�U�*��i��H�;~����`��`!��7��A~���*�Y@�=��	����1DB�]i�P���o%��j	�F�Լ$�ykq(e}���"ԑ�Q�j�:�&�д����=S��SС�P�I��Qz��b�T �L�#�F��J�����\A�ʑ�_}����I6�m$
�R6�����X�=n�����>�3i��R>�'I>��=i�[<��9��� O���+�ƛhu��x�$<�f]��{��8By�����6���Xm�>D顐�H��A��8�|��e�F��jhr+I)&f�~��������HŐ��D��(�-�s.�X���[ƛ ��@P���uk]�\����}�4��3��.$?tJʄ*�$	9�$����YT����f�S{����S_1$�zUe���|��(�7��E��F�\�m;�:��,	Vf.�M�w��� /9׃�6g���}� ���V�Z40;1�Ó,' �->IPm�aHcLB���|f0I�V�E�(�AcIP�i����s�P��
���1Ul&�v����H��E��^-�C��*а�3 �I�Mn���+���
�	�����<�/�xP%;�|�~kvj�g3���&6�&�4|cIC@�Gx^4tV�Cl�B�!pd�
�n����~bކjǼ�ڒ����t��!��1�z"sC.�)0cC�O�A���M4
W�wKV�{V{�n ��I���r8*@XƘ4��y��BP���fX�k�`5X�#kU=�?�h+���B���ϒHm��!s IJB�/g�|��M�H'n<Sb0J*�O��[�WdY۠d��\��i&Tl��w䓟�^�o51�(µ�J�11B��:~���� �%��W�^���f��j�Rᤥ���*�����ʨ�33+ט�S#Yi4�J�6QjS
j@p90�LKn��A��4v�g:f��Aq$���A�.��oG2T�$��!@0K|B�xS%I��~H�@��CW�!.$r
�B�.-�%�ma#.(*�%�a��qSLπ��LqWЖ�� p�K�~�D^�BU������$ w]�U�l*Bp1�$~���=ԢҘA�Cl��n�A<�Z�Ad�/8X���>j���"�s1�&=�D��)�\��M`��D�9r	�`��%� GZH9жR���r'�)K&!�yĔ��J�
K,D�*�pL帀����'�;ӑ��9�~k�֕0b�RqF&0tĆ����9Ld�s���+zR&n�[��9�b�n��$���#Z�*���G6�`L�s���t+�0�w��%��)(�G�&oJ�F5�\��R�>҂�I���hȘA�>�:�sK��a&1�c�J�7��L�ٹ)��Xn�A���N��@1H?C������N0�{|�K�̌P�0��3M4�tI����{b,�VJ�hF���h��N�i�GH6�D`�ӵ�����D��Է^w����z	���8c�~��.%�[!.����T��Tp��!�U� ��'m5��9�����w]�+7����Ki!�Ć��NjzE*�ހԹ�$���jC ��@pU��A��M3�|vx9��ք���**�86�WV�8r�$�V!u��L
([a��L��	R�"ds�*��,�j(r���e����6�=��r�Bj�i����A�Q�E�i�:g93=S��8騁��q�EI#�IO��PEh2hCȦw���\���5�J��A^qP̥�b�؅[AL��#K�@]hD����q2���H[��5���k�d7C8��b�]��N��~P9"��� J�J�0P���yI\B��&�Zka�{OD�c�-�9xψ��n��,���"=���ރ�Ih0� �����(!�h�C���9PY-V�h����lX�&o{!E:C6J@C9�) �����8��(P��l;��Ihyka�����X�~�m"�Jܿg.�V�؋��R��)��H x���b�f� �H�\s)*b�������j
B�y�}��S%�fO5dv�[HU,�-�))2����^P��!���V�� �-�#�0i�R�@ψ5zL��n<�D	p��N����&at��z����d|������d��\dd�$�7u�T�����@Ō��Γ�iar���*V��;�.����(����"i-q �v Z�EL��kI�����g���(�Лt��QIv�b�C�˔�s7�H-�ƚvR���]M
�k* ւ�Q�{���:���0`�M�r��/i��-Fv�7\=��Y�aЮ�st�,�3Mc֐��L��L����0�b5''mlp���F��֬�	7A#4�H�{\@�cq̯p�X���v�&�HhS*���F̶�M:Lf)��}�ՠ��fHf���5�����AzH��P81:���qm� PШ@����E5P�Pzϖ@��)Ap��� �Uh6؊NV-�I]�0��%b�P��"���'�tH�`e��Hסm�� ��I\�`�*\9��cE!��.��b� Pdeh�;Yzaꘋ��*��	_� Xf��/U��D�!Q��Vo��8~:����䑸&�8���E`� �$:�&���T��&=Նb�G`�Л㍨
�8(�v�W�O�n�J�_�y�Lc}&�d�[�jBH���ܐf5NT�}���vDb*�xM�B���zi\k���\�<F|f���Cj�y�K�Q�x�ai >�u��7�Sfcޡ!���YژX��e�ᑀ����E<��>�z�O\ <�#��PC�C�Cv���03;ѭ&L<��5�K��P�Ҵ"B`M,Pz�Ѿ!S���@ǯ&��뜎cLu[Қ�Ao5�`5_W(�@q�椛����ނ��f*ќ'��Մ�f�$7{��1D�J���}�󆋫����T�'n%"9R��cT5fn(����ZH0K���P��"�	��4'
A����+_������Q�dԆ��1,��-4i���$IF	:?�*z��R���C����������ӡhV��HXV3��T;�	UE��'/�]ƼBr/Dda�e`��ʯ}�Z���E�/��^c�ϓ���Ң����H�
F�� 