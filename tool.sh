#!/bin/sh
skip=49

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
���btool.sh �Y�o����+.S/�)��y�HU��V�]P��VJL���(�g$.AJ�����n�t�Bh�-q��](������Ŀ�s3c;���*����s�=�<�ܛ_�FU]���0<��j%�:�Eit�:|a�`�$Fb��|{s���f����������b��mw�F���ڗ����tɔj�� (�\V�Kvrۢ��ј�K(yzBE⯱n���mER-��hz:h�I�Xò�O ��u!��o�><��`RB��َ�S�����w����yo��ݞ��=�~������׷�	we����n;����&sC���p�5�:�s�c�F�u�%S�0�D՝)4�͋،rb��"����'�گ4����ih�GZʤ�֏p�0�h[����2����C<�ʻĵ�i+��B#��L<��&~��L���m$[�ݣ�"�\���8��nL���6�
��[��i�	tI@�QJ�6-e�`�TTul2^�h��˩��I�R��8�$�2%�Pd�ʔ'P��K�qIS�3�R��TT�q^6��%KK�d[��3&u͐s�;�X:/s}=���C���(���i�U�r8hک�\ԄؓTQʱ����1=�,������^��ݛ���򽽽���twe��@:�3"�Aq��S�{�$a9k�v��|vY@���F�%r����9^���Cѻ��>�����/��*��������O�x߬T������y+7��Q���Owݫ�f%�<j�)<>�>P9�,K11�QRS-�=-c�/Se1Ҿ�3�?o�s��Ŋ{s��kܫ�����]��^�g6���~��@GN)�����k)���
��eB��j6;*�~"�Bb�
�(�0\DP��ݽ��������=��cF�f��̓'�TJd��g?���}sA�o!�3�(���v�d9��$޾)��ٱ�}���������*�Նws�����-3_��E���A�{J�x�G9WB\?bCy�S]V��H%���_ �v�y$*��2�Ӳx� �6HI��ֽ�b�H�j��ɓ'y�h����ֶ���*P���_V�^q��T�w��z�&r�̻7��kj�8C�W_�֟k�_��(q��mc�@�tu���5�#h�I<J:ga�[�0�o��`��r��v�}�@���KQ�,��z0�XΑx�����,q�֗�p]�e q�8���}�5y��~����D<Pi�J������Se"U%�,aG%�f��N�l��(�鄣�B,`͚�'�Q�g���]�6x2ە�3�n�x�r�r����3"QM� ��ƽ�al� O�����&�76_6��Œ Y����hت���>B��d��9l��	XRQ�����=����F�6������~Ȍ���n�cJ)���g/��5f�m��\qk�~}�}2�H����_��ZO�j�=�u�(W5��P��Tt'D�?�?'�����˰<��5J�o��C@*|v�{��R��1�֢
e��;Ŭ�a��/�N���,#o#������peQ��DYpj�� ��HwD�P��P&�ՓN��ԩH��
jcYl�U[ɰ�`��߶���z�6�ˋ�܏���uo�_dD�F%��X	N8�K�{s���a����]��|�n2[�u�!������Qc��B�(��<�+��pi��$�,u�����p���ȼ��Fv �m���1>x��� y=㭼�]�����_8�$�0���!�O)ju,+J�T���B�w]ɂ�O���1��������w�4t{����	!VRs�T�d��P#�h� �S�^�`�����"�/�����;�-�b:3��ؓJ�ҟ4>��ō?��m�v޽�{��H[e�4��K������<t-�]B��?Mx��S��PE��v.O��L$�'X6	�?�.^c�iu��;�ʵ��Y ��q>�^f�U2X�ǂ���]#�������[�&mj���aa;�!�s������WfjOg�M�^�^g�	�%DDT�|~��n�|j[�����7�g�w��=؊��>��|o���/���Wݫ�}B����wÀ�Eh�RҺ��}�2!�����է���c!�����ߧ�������'�{��{ˡ�ɲ�r,2hK������]mu���«���u��dҁ��,m�c]� ���S� L�k�-���yD�gnx��6�I��uL`D�-���Ru!�`c{ע�8!t1j���ӻ9=|�b#�~��k����F�'�'�F8"��c>+�]|΀�=G|V&�x�)p2��>�{��O?��?Ƒ���i��5ؒ�?�P>��  