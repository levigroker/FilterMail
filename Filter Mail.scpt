FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �
Filter Mail
A manually activated mail filing/filtering Script for the Mac OS X "Mail" application.
By Levi Brown <mailto: levigroker@gmail.com>
Version 3.0.3 December 19th, 2013

This script works on the current selection in Mail, and is intended to be used
with the Script Menu.  Select a message or range of messages and run the script
on them. Any messages in the selection meeting the specified criteria will be
moved into the specified mailbox.  Any messages in the selection for which no
filter is found will result in a prompt to create a new filter.  For more
information about the Script Menu please visit:
http://www.apple.com/applescript/scriptmenu/

To add filters run the script and follow the given instructions, or manually
modify the filters file defined by the 'pFilterFileName' and
'pFilterFileLocation' properties.

* This script has been tested on Mac OS X 10.2.x through 10.9.1 under US English
and may contain i18n issues which are not accounted for.

Please feel free to contact me with improvements and feedback.

Release History:
1.0   September 6th, 2002: Internal initial release.
2.0   October 22nd, 2002: Separated the filters to a file which
      now gets read in and parsed when it changes.
2.0.1 October 29nd, 2002: Added error checking for the case when
      the target mailbox does not exist.  Now dialogs will be displayed.
2.0.2 January 11th, 2004: Added support for either Macintosh style line
      endings or Unix style line endings to the filters file.
3.0 January 9th, 2008: Re-wrote file parsing mechanism, added support
for dynamic creation and persistence of filters, and support for mailbox
creation and filter editing.
3.0.1 October 1st, 2008: Added sanity check for filter parser to
avoid importing unparsable lines as empty filters.
3.0.2 April 13th, 2012: Fixed issue where null senderContains in filter caused script to abort.
3.0.3 December 19th, 2013: Mark messages as read as they get filtered.

Copyright (c) 2002-2014 Levi Brown.
This work is licensed under the Creative Commons Attribution-Noncommercial-No
Derivative Works 3.0 United States License. To view a copy of this license,
visit http://creativecommons.org/licenses/by-nc-nd/3.0/us/ or send a letter to
Creative Commons, 171 Second Street, Suite 300, San Francisco, California,
94105, USA.

1. DISCLAIMER OF WARRANTY.  ALL EXPRESS OR IMPLIED CONDITIONS, REPRESENTATIONS
AND WARRANTIES, INCLUDING ANY IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE OR NON-INFRINGEMENT ARE DISCLAIMED, EXCEPT TO THE EXTENT THAT
THESE DISCLAIMERS ARE HELD TO BE LEGALLY INVALID.

2. LIMITATION OF LIABILITY.  TO THE EXTENT NOT PROHIBITED BY LAW, IN NO EVENT
WILL THE AUTHOR OR THE AUTHOR'S LICENSORS BE LIABLE FOR ANY LOST REVENUE, PROFIT
OR DATA, OR FOR SPECIAL, INDIRECT, CONSEQUENTIAL, INCIDENTAL OR PUNITIVE
DAMAGES, HOWEVER CAUSED REGARDLESS OF THE THEORY OF LIABILITY, ARISING OUT OF OR
RELATED TO THE USE OF OR INABILITY TO USE SOFTWARE, EVEN IF THE AUTHOR HAS BEEN
ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.  In no event will the author's
liability to you, whether in contract, tort (including negligence), or
otherwise, exceed the amount paid by you for Software under this Agreement. The
foregoing limitations will apply even if the above stated warranty fails of its
essential purpose. Some states do not allow the exclusion of incidental or
consequential damages, so some of the terms above may not be applicable to you.
     � 	 	� 
 F i l t e r   M a i l 
 A   m a n u a l l y   a c t i v a t e d   m a i l   f i l i n g / f i l t e r i n g   S c r i p t   f o r   t h e   M a c   O S   X   " M a i l "   a p p l i c a t i o n . 
 B y   L e v i   B r o w n   < m a i l t o :   l e v i g r o k e r @ g m a i l . c o m > 
 V e r s i o n   3 . 0 . 3   D e c e m b e r   1 9 t h ,   2 0 1 3 
 
 T h i s   s c r i p t   w o r k s   o n   t h e   c u r r e n t   s e l e c t i o n   i n   M a i l ,   a n d   i s   i n t e n d e d   t o   b e   u s e d 
 w i t h   t h e   S c r i p t   M e n u .     S e l e c t   a   m e s s a g e   o r   r a n g e   o f   m e s s a g e s   a n d   r u n   t h e   s c r i p t 
 o n   t h e m .   A n y   m e s s a g e s   i n   t h e   s e l e c t i o n   m e e t i n g   t h e   s p e c i f i e d   c r i t e r i a   w i l l   b e 
 m o v e d   i n t o   t h e   s p e c i f i e d   m a i l b o x .     A n y   m e s s a g e s   i n   t h e   s e l e c t i o n   f o r   w h i c h   n o 
 f i l t e r   i s   f o u n d   w i l l   r e s u l t   i n   a   p r o m p t   t o   c r e a t e   a   n e w   f i l t e r .     F o r   m o r e 
 i n f o r m a t i o n   a b o u t   t h e   S c r i p t   M e n u   p l e a s e   v i s i t : 
 h t t p : / / w w w . a p p l e . c o m / a p p l e s c r i p t / s c r i p t m e n u / 
 
 T o   a d d   f i l t e r s   r u n   t h e   s c r i p t   a n d   f o l l o w   t h e   g i v e n   i n s t r u c t i o n s ,   o r   m a n u a l l y 
 m o d i f y   t h e   f i l t e r s   f i l e   d e f i n e d   b y   t h e   ' p F i l t e r F i l e N a m e '   a n d 
 ' p F i l t e r F i l e L o c a t i o n '   p r o p e r t i e s . 
 
 *   T h i s   s c r i p t   h a s   b e e n   t e s t e d   o n   M a c   O S   X   1 0 . 2 . x   t h r o u g h   1 0 . 9 . 1   u n d e r   U S   E n g l i s h 
 a n d   m a y   c o n t a i n   i 1 8 n   i s s u e s   w h i c h   a r e   n o t   a c c o u n t e d   f o r . 
 
 P l e a s e   f e e l   f r e e   t o   c o n t a c t   m e   w i t h   i m p r o v e m e n t s   a n d   f e e d b a c k . 
 
 R e l e a s e   H i s t o r y : 
 1 . 0       S e p t e m b e r   6 t h ,   2 0 0 2 :   I n t e r n a l   i n i t i a l   r e l e a s e . 
 2 . 0       O c t o b e r   2 2 n d ,   2 0 0 2 :   S e p a r a t e d   t h e   f i l t e r s   t o   a   f i l e   w h i c h 
             n o w   g e t s   r e a d   i n   a n d   p a r s e d   w h e n   i t   c h a n g e s . 
 2 . 0 . 1   O c t o b e r   2 9 n d ,   2 0 0 2 :   A d d e d   e r r o r   c h e c k i n g   f o r   t h e   c a s e   w h e n 
             t h e   t a r g e t   m a i l b o x   d o e s   n o t   e x i s t .     N o w   d i a l o g s   w i l l   b e   d i s p l a y e d . 
 2 . 0 . 2   J a n u a r y   1 1 t h ,   2 0 0 4 :   A d d e d   s u p p o r t   f o r   e i t h e r   M a c i n t o s h   s t y l e   l i n e 
             e n d i n g s   o r   U n i x   s t y l e   l i n e   e n d i n g s   t o   t h e   f i l t e r s   f i l e . 
 3 . 0   J a n u a r y   9 t h ,   2 0 0 8 :   R e - w r o t e   f i l e   p a r s i n g   m e c h a n i s m ,   a d d e d   s u p p o r t 
 f o r   d y n a m i c   c r e a t i o n   a n d   p e r s i s t e n c e   o f   f i l t e r s ,   a n d   s u p p o r t   f o r   m a i l b o x 
 c r e a t i o n   a n d   f i l t e r   e d i t i n g . 
 3 . 0 . 1   O c t o b e r   1 s t ,   2 0 0 8 :   A d d e d   s a n i t y   c h e c k   f o r   f i l t e r   p a r s e r   t o 
 a v o i d   i m p o r t i n g   u n p a r s a b l e   l i n e s   a s   e m p t y   f i l t e r s . 
 3 . 0 . 2   A p r i l   1 3 t h ,   2 0 1 2 :   F i x e d   i s s u e   w h e r e   n u l l   s e n d e r C o n t a i n s   i n   f i l t e r   c a u s e d   s c r i p t   t o   a b o r t . 
 3 . 0 . 3   D e c e m b e r   1 9 t h ,   2 0 1 3 :   M a r k   m e s s a g e s   a s   r e a d   a s   t h e y   g e t   f i l t e r e d . 
 
 C o p y r i g h t   ( c )   2 0 0 2 - 2 0 1 4   L e v i   B r o w n . 
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n c o m m e r c i a l - N o 
 D e r i v a t i v e   W o r k s   3 . 0   U n i t e d   S t a t e s   L i c e n s e .   T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e , 
 v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - n d / 3 . 0 / u s /   o r   s e n d   a   l e t t e r   t o 
 C r e a t i v e   C o m m o n s ,   1 7 1   S e c o n d   S t r e e t ,   S u i t e   3 0 0 ,   S a n   F r a n c i s c o ,   C a l i f o r n i a , 
 9 4 1 0 5 ,   U S A . 
 
 1 .   D I S C L A I M E R   O F   W A R R A N T Y .     A L L   E X P R E S S   O R   I M P L I E D   C O N D I T I O N S ,   R E P R E S E N T A T I O N S 
 A N D   W A R R A N T I E S ,   I N C L U D I N G   A N Y   I M P L I E D   W A R R A N T Y   O F   M E R C H A N T A B I L I T Y ,   F I T N E S S   F O R   A 
 P A R T I C U L A R   P U R P O S E   O R   N O N - I N F R I N G E M E N T   A R E   D I S C L A I M E D ,   E X C E P T   T O   T H E   E X T E N T   T H A T 
 T H E S E   D I S C L A I M E R S   A R E   H E L D   T O   B E   L E G A L L Y   I N V A L I D . 
 
 2 .   L I M I T A T I O N   O F   L I A B I L I T Y .     T O   T H E   E X T E N T   N O T   P R O H I B I T E D   B Y   L A W ,   I N   N O   E V E N T 
 W I L L   T H E   A U T H O R   O R   T H E   A U T H O R ' S   L I C E N S O R S   B E   L I A B L E   F O R   A N Y   L O S T   R E V E N U E ,   P R O F I T 
 O R   D A T A ,   O R   F O R   S P E C I A L ,   I N D I R E C T ,   C O N S E Q U E N T I A L ,   I N C I D E N T A L   O R   P U N I T I V E 
 D A M A G E S ,   H O W E V E R   C A U S E D   R E G A R D L E S S   O F   T H E   T H E O R Y   O F   L I A B I L I T Y ,   A R I S I N G   O U T   O F   O R 
 R E L A T E D   T O   T H E   U S E   O F   O R   I N A B I L I T Y   T O   U S E   S O F T W A R E ,   E V E N   I F   T H E   A U T H O R   H A S   B E E N 
 A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E S .     I n   n o   e v e n t   w i l l   t h e   a u t h o r ' s 
 l i a b i l i t y   t o   y o u ,   w h e t h e r   i n   c o n t r a c t ,   t o r t   ( i n c l u d i n g   n e g l i g e n c e ) ,   o r 
 o t h e r w i s e ,   e x c e e d   t h e   a m o u n t   p a i d   b y   y o u   f o r   S o f t w a r e   u n d e r   t h i s   A g r e e m e n t .   T h e 
 f o r e g o i n g   l i m i t a t i o n s   w i l l   a p p l y   e v e n   i f   t h e   a b o v e   s t a t e d   w a r r a n t y   f a i l s   o f   i t s 
 e s s e n t i a l   p u r p o s e .   S o m e   s t a t e s   d o   n o t   a l l o w   t h e   e x c l u s i o n   o f   i n c i d e n t a l   o r 
 c o n s e q u e n t i a l   d a m a g e s ,   s o   s o m e   o f   t h e   t e r m s   a b o v e   m a y   n o t   b e   a p p l i c a b l e   t o   y o u . 
   
  
 l     ��������  ��  ��        j     �� �� "0 pfilterfilename pFilterFileName  m        �   . F i l t e r   M a i l   F i l t e r s . t x t      j    �� �� *0 pfilterfilelocation pFilterFileLocation  m       �   ( L i b r a r y : P r e f e r e n c e s :      j    �� �� 40 pdefaultnewfiltermailbox pDefaultNewFilterMailbox  m       �   0 A r c h i v e / F r i e n d s /   G e n e r a l      j   	 q�� �� &0 pfilterfileheader pFilterFileHeader  b   	 p    b   	 n   !   b   	 j " # " b   	 h $ % $ b   	 d & ' & b   	 b ( ) ( b   	 ^ * + * b   	 \ , - , b   	 X . / . b   	 V 0 1 0 b   	 R 2 3 2 b   	 P 4 5 4 b   	 L 6 7 6 b   	 J 8 9 8 b   	 F : ; : b   	 D < = < b   	 @ > ? > b   	 > @ A @ b   	 : B C B b   	 8 D E D b   	 4 F G F b   	 2 H I H b   	 . J K J b   	 , L M L b   	 * N O N b   	 ( P Q P b   	 & R S R b   	 $ T U T b   	 " V W V b   	   X Y X b   	  Z [ Z b   	  \ ] \ b   	  ^ _ ^ b   	  ` a ` b   	  b c b b   	  d e d b   	  f g f b   	  h i h b   	  j k j b   	  l m l m   	 
 n n � o o  #   m o   
 ���� "0 pfilterfilename pFilterFileName k o    ��
�� 
ret  i l 	   p���� p m     q q � r r  #  ��  ��   g o    ��
�� 
ret  e l 	   s���� s m     t t � u u Z #   T h e   f i l t e r   l i s t   f o r   t h e   F i l t e r   M a i l   s c r i p t .��  ��   c o    ��
�� 
ret  a l 	   v���� v m     w w � x x v #   V e r s i o n   3 . 0 . 3   b y   L e v i   B r o w n   < m a i l t o : l e v i g r o k e r @ g m a i l . c o m >��  ��   _ o    ��
�� 
ret  ] l 	   y���� y m     z z � { {  #��  ��   [ o    ��
�� 
ret  Y l 	   |���� | m     } } � ~ ~ � #   T h i s   f i l e   s h o u l d   b e   l o c a t e d   i n   t h e   " < h o m e   d i r e c t o r y > / L i b r a r y / P r e f e r e n c e s "��  ��   W o     !��
�� 
ret  U l 	 " # ����  m   " # � � � � � B #   d i r e c t o r y   a n d   s h o u l d   b e   n a m e d   "��  ��   S o   $ %���� "0 pfilterfilename pFilterFileName Q m   & ' � � � � �  " . O o   ( )��
�� 
ret  M l 	 * + ����� � m   * + � � � � � � #   L i n e s   s t a r t i n g   w i t h   t h e   p o u n d   c h a r a c t e r   ' # '   a n d   e m p t y   l i n e s   a r e   i g n o r e d .��  ��   K o   , -��
�� 
ret  I l 	 . 1 ����� � m   . 1 � � � � �  #��  ��   G o   2 3��
�� 
ret  E l 	 4 7 ����� � m   4 7 � � � � � f #   T h e   f o r m a t   o f   a   f i l t e r   l i n e   s h o u l d   b e   a s   f o l l o w s :��  ��   C o   8 9��
�� 
ret  A l 	 : = ����� � m   : = � � � � � � #   s e n d e r C o n t a i n s :   " < s e n d e r > "   t a r g e t A c c o u n t :   " < a c c o u n t > "   t a r g e t M a i l b o x :   " < m a i l b o x > "��  ��   ? o   > ?��
�� 
ret  = l 	 @ C ����� � m   @ C � � � � �  #   W h e r e :��  ��   ; o   D E��
�� 
ret  9 l 	 F I ����� � m   F I � � � � � � #   < s e n d e r >   i s   a n y   t e x t   i n   t h e   s e n d e r   h e a d e r   t o   m a t c h   a g a i n s t   ( c a s e   i n s e n s i t i v e ) .��  ��   7 o   J K��
�� 
ret  5 l 	 L O ����� � m   L O � � � � � � #   < a c c o u n t >   i s   t h e   n a m e   o f   t h e   a c c o u n t   w h e r e   t h e   m a i l b o x   r e s i d e s .     " "   f o r   l o c a l   m a i l b o x e s .��  ��   3 o   P Q��
�� 
ret  1 l 	 R U ����� � m   R U � � � � � H #   < m a i l b o x >   t h e   " p a t h "   t o   a   m a i l b o x .��  ��   / o   V W��
�� 
ret  - l 	 X [ ����� � m   X [ � � � � �  #   F o r   e x a m p l e :��  ��   + o   \ ]��
�� 
ret  ) l 	 ^ a ����� � m   ^ a � � � � � � #   s e n d e r C o n t a i n s :   " n a s a . g o v "   t a r g e t A c c o u n t :   " "   t a r g e t M a i l b o x :   " A r c h i v e / L i s t s / N A S A "��  ��   ' o   b c��
�� 
ret  % l 	 d g ����� � m   d g � � � � � � #   w i l l   f i l e   a n y   m a i l   w h e r e   t h e   s e n d e r   h e a d e r   c o n t a i n s   " n a s a . g o v "   t o   m y   l o c a l   m a i l b o x��  ��   # o   h i��
�� 
ret  ! l 	 j m ����� � m   j m � � � � � � #   l o c a t e d   a t   " O n   M y   M a c / A r c h i v e / L i s t s / N A S A "   i n   t h e   M a i l   a p p l i c a t i o n .��  ��    o   n o��
�� 
ret    � � � j   r v�� ��� .0 psitewideheaderprefix pSiteWideHeaderPrefix � m   r u � � � � �  * * *   S i t e - w i d e �  � � � j   w {�� ��� 0 pheaderprefix pHeaderPrefix � m   w z � � � � �  * * * �  � � � j   | ��� ���  0 pcommentprefix pCommentPrefix � m   |  � � � � �  # �  � � � j   � ��� ��� D0  psitewidesendercontainsindicator  pSiteWideSenderContainsIndicator � m   � � � � � � �  @ �  � � � j   � ��� ��� 0 pfilterkeys pFilterKeys � K   � � � � �� � ���  0 sendercontains senderContains � K   � � � � �� � ��� 0 _key   � m   � � � � � � �  s e n d e r C o n t a i n s : � �� ����� 0 _length   � m   � ����� ��   � �� � ��� 0 targetaccount targetAccount � K   � � � � �� � ��� 0 _key   � m   � � � � � � �  t a r g e t A c c o u n t : � �� ����� 0 _length   � m   � ����� ��   � �� ����� 0 targetmailbox targetMailbox � K   � � � � �� � ��� 0 _key   � m   � � � � � � �  t a r g e t M a i l b o x : � �� ����� 0 _length   � m   � ����� ��  ��   �  � � � j   � ��� ��� "0 psitewidemapkey pSiteWideMapKey � m   � � � � � � �  * * * S i t e W i d e * * * �  � � � j   � ��� ��� 0 
pfiltermap 
pFilterMap � J   � �����   �  � � � j   � ��� ��� (0 pworkingfilterlist pWorkingFilterList � J   � �����   �  � � � j   � ��� ���  0 plastparsedate pLastParseDate � m   � � � � � � �   �  � � � l     ��������  ��  ��   �  � � � p   � � � � ������ "0 gpersistfilters gPersistFilters��   �  � � � p   � � � � ������ ,0 gfoundsitewideheader gFoundSiteWideHeader��   �  � � � l     ��������  ��  ��   �  � � � i   � � � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k     � � �  � � � n     � � � I    �������� 0 init  ��  ��   �  f      �  � � � Z    n � ����� � l   & ����� � G    & �  � =    o    ����  0 plastparsedate pLastParseDate m     �    n   $ I    $������ 0 checkmoddate checkModDate 	 o    ���� "0 pfilterfilename pFilterFileName	 

 o    ���� *0 pfilterfilelocation pFilterFileLocation �� o     ����  0 plastparsedate pLastParseDate��  ��    f    ��  ��   � k   ) j  r   ) : n  ) 8 I   * 8������  0 getfiltersfile getFiltersFile  o   * /���� "0 pfilterfilename pFilterFileName �� o   / 4���� *0 pfilterfilelocation pFilterFileLocation��  ��    f   ) * o      ���� 	0 _file    r   ; C n  ; A I   < A������ 0 readfile readFile � o   < =�~�~ 	0 _file  �  ��    f   ; < o      �}�} 0 _content    !  r   D L"#" n  D J$%$ I   E J�|&�{�| 0 parsecontent parseContent& '�z' o   E F�y�y 0 _content  �z  �{  %  f   D E# o      �x�x 0 _filters  ! ()( r   M Y*+* n  M S,-, I   N S�w.�v�w 0 
sortfiters 
sortFiters. /�u/ o   N O�t�t 0 _filters  �u  �v  -  f   M N+ o      �s�s 0 
pfiltermap 
pFilterMap) 0�r0 r   Z j121 n  Z d343 I   [ d�q5�p�q .0 makeworkingfilterlist makeWorkingFilterList5 6�o6 o   [ `�n�n 0 
pfiltermap 
pFilterMap�o  �p  4  f   Z [2 o      �m�m (0 pworkingfilterlist pWorkingFilterList�r  ��  ��   � 787 l  o o�l9:�l  9 	 try   : �;;  t r y8 <=< O   o �>?> k   s �@@ ABA r   s xCDC 1   s v�k
�k 
slctD o      �j�j 0 theselection theSelectionB E�iE X   y �F�hGF k   � �HH IJI r   � �KLK c   � �MNM l  � �O�g�fO n   � �PQP 1   � ��e
�e 
sndrQ o   � ��d�d 0 
themessage 
theMessage�g  �f  N m   � ��c
�c 
TEXTL o      �b�b 0 	thesender 	theSenderJ R�aR n  � �STS I   � ��`U�_�` 
0 filter  U VWV o   � ��^�^ 0 	thesender 	theSenderW X�]X o   � ��\�\ 0 
themessage 
theMessage�]  �_  T  f   � ��a  �h 0 
themessage 
theMessageG o   | }�[�[ 0 theselection theSelection�i  ? m   o pYY�                                                                                  emal  alis    F  Macintosh HD               �n�NH+  �+Mail.app                                                       �΄�s        ����  	                Applications    �n��      ΄��    �+  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  = Z[Z l   � ��Z\]�Z  \ � �
	on error _message number _number
		if _number is not -128 then
			display dialog "Filter Mail encountered an error: \"" & _message & "\" number: " & _number default button "Continue" buttons {"Continue"} with icon 0
		end if
	end try
	   ] �^^� 
 	 o n   e r r o r   _ m e s s a g e   n u m b e r   _ n u m b e r 
 	 	 i f   _ n u m b e r   i s   n o t   - 1 2 8   t h e n 
 	 	 	 d i s p l a y   d i a l o g   " F i l t e r   M a i l   e n c o u n t e r e d   a n   e r r o r :   \ " "   &   _ m e s s a g e   &   " \ "   n u m b e r :   "   &   _ n u m b e r   d e f a u l t   b u t t o n   " C o n t i n u e "   b u t t o n s   { " C o n t i n u e " }   w i t h   i c o n   0 
 	 	 e n d   i f 
 	 e n d   t r y 
 	[ _�Y_ Z   � �`a�X�W` o   � ��V�V "0 gpersistfilters gPersistFiltersa n  � �bcb I   � ��Ud�T�U  0 persistfilters persistFiltersd efe o   � ��S�S 0 
pfiltermap 
pFilterMapf ghg o   � ��R�R "0 pfilterfilename pFilterFileNameh i�Qi o   � ��P�P *0 pfilterfilelocation pFilterFileLocation�Q  �T  c  f   � ��X  �W  �Y   � jkj l     �O�N�M�O  �N  �M  k lml i   � �non I      �L�K�J�L 0 init  �K  �J  o r     pqp m     �I
�I boovfalsq o      �H�H "0 gpersistfilters gPersistFiltersm rsr l     �G�F�E�G  �F  �E  s tut i   � �vwv I      �Dx�C�D 0 checkmoddate checkModDatex yzy o      �B�B 	0 _name  z {|{ o      �A�A 0 _loc  | }�@} o      �?�? 	0 _date  �@  �C  w k     >~~ � O     ��� r    ��� b    ��� b    ��� l   	��>�=� c    	��� 1    �<
�< 
home� m    �;
�; 
TEXT�>  �=  � o   	 
�:�: 0 _loc  � o    �9�9 	0 _name  � o      �8�8 	0 _path  � m     ���                                                                                  MACS  alis    t  Macintosh HD               �n�NH+  �	
Finder.app                                                     ��_�        ����  	                CoreServices    �n��      �`D    �	��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� Q    ;���� k    (�� ��� r    ��� c    ��� o    �7�7 	0 _path  � m    �6
�6 
alis� o      �5�5 	0 _file  � ��� r    #��� n    !��� 1    !�4
�4 
asmo� l   ��3�2� I   �1��0
�1 .sysonfo4asfe        file� o    �/�/ 	0 _file  �0  �3  �2  � o      �.�. 0 _moddate _modDate� ��-� L   $ (�� ?   $ '��� o   $ %�,�, 0 _moddate _modDate� o   % &�+�+ 	0 _date  �-  � R      �*�)�
�* .ascrerr ****      � ****�)  � �(��'
�( 
errn� o      �&�& 0 _num  �'  � Z   0 ;���%�$� =  0 3��� o   0 1�#�# 0 _num  � m   1 2�"�"��� l  6 6�!���!  �  File not found   � ���  F i l e   n o t   f o u n d�%  �$  � �� � L   < >�� m   < =�
� boovfals�   u ��� l     ����  �  �  � ��� i   � ���� I      ����  0 getfiltersfile getFiltersFile� ��� o      �� 	0 _name  � ��� o      �� 0 _loc  �  �  � k     `�� ��� O     ��� r    ��� b    ��� b    ��� l   	���� c    	��� 1    �
� 
home� m    �
� 
TEXT�  �  � o   	 
�� 0 _loc  � o    �� 	0 _name  � o      �� 	0 _path  � m     ���                                                                                  MACS  alis    t  Macintosh HD               �n�NH+  �	
Finder.app                                                     ��_�        ����  	                CoreServices    �n��      �`D    �	��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� Q    ]���� r    ��� c    ��� o    �� 	0 _path  � m    �
� 
alis� o      �� 	0 _file  � R      ���
� .ascrerr ****      � ****�  � �
��	
�
 
errn� o      �� 0 _num  �	  � Z   ! ]����� =  ! $��� o   ! "�� 0 _num  � m   " #����� l  ' Y���� k   ' Y�� ��� r   ' 0��� I  ' .���
� .rdwropenshor       file� o   ' (�� 	0 _path  � ��� 
� 
perm� m   ) *��
�� boovtrue�   � o      ���� 0 _fileid _fileID� ��� I  1 <����
�� .rdwrwritnull���     ****� o   1 6���� &0 pfilterfileheader pFilterFileHeader� �����
�� 
refn� o   7 8���� 0 _fileid _fileID��  � ��� I  = B�����
�� .rdwrclosnull���     ****� o   = >���� 0 _fileid _fileID��  � ��� O   C S��� r   G R��� b   G P��� b   G N��� l  G L������ c   G L��� 1   G J��
�� 
home� m   J K��
�� 
TEXT��  ��  � o   L M���� 0 _loc  � o   N O���� 	0 _name  � o      ���� 	0 _path  � m   C D���                                                                                  MACS  alis    t  Macintosh HD               �n�NH+  �	
Finder.app                                                     ��_�        ����  	                CoreServices    �n��      �`D    �	��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� r   T Y��� c   T W��� o   T U���� 	0 _path  � m   U V��
�� 
alis� o      ���� 	0 _file  ��  �  File not found   � ���  F i l e   n o t   f o u n d�  �  � ���� L   ^ `   o   ^ _���� 	0 _file  ��  �  l     ��������  ��  ��    i   � � I      ������ 0 readfile readFile �� o      ���� 	0 _file  ��  ��   k     		 

 r      I    ����
�� .rdwropenshor       file o     ���� 	0 _file  ��   o      ���� 0 _fileid _fileID  r     I   ��
�� .rdwrread****        **** o    	���� 0 _fileid _fileID ����
�� 
deli J   
   o   
 ��
�� 
ret  �� m     �  
��  ��   o      ���� 0 _content    I   ����
�� .rdwrclosnull���     **** o    ���� 0 _fileid _fileID��   �� L       o    ���� 0 _content  ��   !"! l     ��������  ��  ��  " #$# i   � �%&% I      ��'���� 0 parsecontent parseContent' (��( o      ���� 0 _content  ��  ��  & k     R)) *+* r     ,-, m     ��
�� boovfals- o      ���� ,0 gfoundsitewideheader gFoundSiteWideHeader+ ./. r    010 J    ����  1 o      ���� 0 _filters  / 232 r   	 454 c   	 676 o   	 
���� 0 _content  7 m   
 ��
�� 
list5 o      ���� 0 _content  3 898 Y    C:��;<��: k    >== >?> r    $@A@ n    "BCB 4    "��D
�� 
cobjD o     !���� 0 indx  C o    ���� 0 _content  A o      ���� 	0 _line  ? EFE r   % -GHG n  % +IJI I   & +��K���� 0 	parseline 	parseLineK L��L o   & '���� 	0 _line  ��  ��  J  f   % &H o      ���� 0 _filter  F MNM Z  . <OP����O >  . 1QRQ o   . /���� 0 _filter  R m   / 0��
�� 
nullP s   4 8STS o   4 5���� 0 _filter  T n      UVU  ;   6 7V o   5 6���� 0 _filters  ��  ��  N W��W o   = >���� 0 _filters  ��  �� 0 indx  ; m    ���� < n    XYX m    ��
�� 
nmbrY n   Z[Z 2   ��
�� 
cobj[ o    ���� 0 _content  ��  9 \]\ r   D O^_^ I  D I������
�� .misccurdldt    ��� null��  ��  _ o      ����  0 plastparsedate pLastParseDate] `��` L   P Raa o   P Q���� 0 _filters  ��  $ bcb l     ��������  ��  ��  c ded i   � �fgf I      ��h���� 0 	parseline 	parseLineh i��i o      ���� 	0 _line  ��  ��  g k    �jj klk r     mnm m     ��
�� 
nulln o      ���� 0 _filter  l opo r    qrq c    	sts l   u����u n    vwv 2   ��
�� 
cworw o    ���� 	0 _line  ��  ��  t m    ��
�� 
TEXTr o      ���� 0 
_whiteline 
_whiteLinep xyx Z   �z{����z >   |}| o    ���� 0 
_whiteline 
_whiteLine} m    ~~ �  { k   ��� ��� r    ��� n   ��� I    �������� 0 	newfilter 	newFilter��  ��  �  f    � o      ���� 0 _filter  � ��� Z   ������� C    !��� o    ���� 	0 _line  � o     ����  0 pcommentprefix pCommentPrefix� k   $ =�� ��� r   $ )��� m   $ %��
�� boovtrue� n      ��� o   & (���� 0 
_iscomment 
_isComment� o   % &���� 0 _filter  � ��� r   * /��� o   * +���� 	0 _line  � n      ��� o   , .���� 0 _linecontent _lineContent� o   + ,���� 0 _filter  � ��� l  0 0������  � Q K assume that all comments after the sitewide header are "sitewide" comments   � ��� �   a s s u m e   t h a t   a l l   c o m m e n t s   a f t e r   t h e   s i t e w i d e   h e a d e r   a r e   " s i t e w i d e "   c o m m e n t s� ���� Z  0 =������� o   0 1���� ,0 gfoundsitewideheader gFoundSiteWideHeader� r   4 9��� m   4 5��
�� boovtrue� n      ��� o   6 8���� 0 _issitewide _isSitewide� o   5 6���� 0 _filter  ��  ��  ��  ��  � k   @��� ��� Z   @ r����� C   @ G��� o   @ A�~�~ 	0 _line  � o   A F�}�} .0 psitewideheaderprefix pSiteWideHeaderPrefix� k   J \�� ��� r   J O��� m   J K�|
�| boovtrue� n      ��� o   L N�{�{ 0 _issitewide _isSitewide� o   K L�z�z 0 _filter  � ��� r   P U��� m   P Q�y
�y boovtrue� n      ��� o   R T�x�x 0 	_isheader 	_isHeader� o   Q R�w�w 0 _filter  � ��� r   V Y��� m   V W�v
�v boovtrue� o      �u�u ,0 gfoundsitewideheader gFoundSiteWideHeader� ��t� L   Z \�� o   Z [�s�s 0 _filter  �t  �  � Z  _ r���r�q� C   _ f��� o   _ `�p�p 	0 _line  � o   ` e�o�o 0 pheaderprefix pHeaderPrefix� r   i n��� m   i j�n
�n boovtrue� n      ��� o   k m�m�m 0 	_isheader 	_isHeader� o   j k�l�l 0 _filter  �r  �q  � ��� l  s s�k�j�i�k  �j  �i  � ��� r   s |��� c   s z��� o   s x�h�h 0 pfilterkeys pFilterKeys� m   x y�g
�g 
list� o      �f�f 0 _keylist _keyList� ��e� Y   }���d���c� k   ���� ��� r   � ���� n   � ���� 4   � ��b�
�b 
cobj� o   � ��a�a 0 _keyindx _keyIndx� o   � ��`�` 0 _keylist _keyList� o      �_�_ 0 _keyitem _keyItem� ��� r   � ���� n   � ���� o   � ��^�^ 0 _key  � o   � ��]�] 0 _keyitem _keyItem� o      �\�\ 0 _key  � ��� r   � ���� n   � ���� o   � ��[�[ 0 _length  � o   � ��Z�Z 0 _keyitem _keyItem� o      �Y�Y 0 
_keylength 
_keyLength� ��� l  � ��X�W�V�X  �W  �V  � ��� r   � ���� I  � ��U�T�
�U .sysooffslong    ��� null�T  � �S��
�S 
psof� o   � ��R�R 0 _key  � �Q��P
�Q 
psin� o   � ��O�O 	0 _line  �P  � o      �N�N 0 indx  � ��M� Z   �����L�K� >  � ���� o   � ��J�J 0 indx  � m   � ��I�I  � k   ���� ��� r   � ���� [   � ���� o   � ��H�H 0 indx  � o   � ��G�G 0 
_keylength 
_keyLength� o      �F�F 0 indx  �    r   � � c   � � l  � ��E�D n   � � 7  � ��C	

�C 
cha 	 o   � ��B�B 0 indx  
 m   � ��A�A�� o   � ��@�@ 	0 _line  �E  �D   m   � ��?
�? 
TEXT o      �>�> 	0 _line    l  � ��=�<�;�=  �<  �;    r   � � I  � ��:�9
�: .sysooffslong    ��� null�9   �8
�8 
psof m   � � �  " �7�6
�7 
psin o   � ��5�5 	0 _line  �6   o      �4�4 0 indx    r   � � c   � � l  � ��3�2 n   � � 7  � ��1 !
�1 
cha   l  � �"�0�/" [   � �#$# o   � ��.�. 0 indx  $ m   � ��-�- �0  �/  ! m   � ��,�,�� o   � ��+�+ 	0 _line  �3  �2   m   � ��*
�* 
TEXT o      �)�) 	0 _line   %&% r   �'(' I  ��(�')
�( .sysooffslong    ��� null�'  ) �&*+
�& 
psof* m   � �,, �--  "+ �%.�$
�% 
psin. o   � ��#�# 	0 _line  �$  ( o      �"�" 0 indx  & /0/ Z  &12�!31 l 4� �4 ?  565 o  �� 0 indx  6 m  �� �   �  2 r  787 c  9:9 l ;��; n  <=< 7 �>?
� 
cha > m  �� ? l @��@ \  ABA o  �� 0 indx  B m  �� �  �  = o  �� 	0 _line  �  �  : m  �
� 
TEXT8 o      �� 
0 _value  �!  3 r  !&CDC m  !$EE �FF  D o      �� 
0 _value  0 GHG r  '8IJI c  '6KLK l '4M��M n  '4NON 7 (4�PQ
� 
cha P o  .0�� 0 indx  Q m  13����O o  '(�� 	0 _line  �  �  L m  45�

�
 
TEXTJ o      �	�	 	0 _line  H RSR l 99����  �  �  S TUT Z  9iVW��V = 9DXYX o  9:�� 0 _keyitem _keyItemY n  :CZ[Z o  ?C��  0 sendercontains senderContains[ o  :?�� 0 pfilterkeys pFilterKeysW k  Ge\\ ]^] r  GP_`_ J  GJaa b� b o  GH���� 
0 _value  �   ` n      cdc o  KO���� "0 _sendercontains _senderContainsd o  JK���� 0 _filter  ^ e��e Z Qefg����f H  QYhh E  QXiji o  QR���� 
0 _value  j o  RW���� D0  psitewidesendercontainsindicator  pSiteWideSenderContainsIndicatorg r  \aklk m  \]��
�� boovtruel n      mnm o  ^`���� 0 _issitewide _isSitewiden o  ]^���� 0 _filter  ��  ��  ��  �  �  U opo Z j�qr����q = justs o  jk���� 0 _keyitem _keyItemt n  ktuvu o  pt���� 0 targetaccount targetAccountv o  kp���� 0 pfilterkeys pFilterKeysr r  xwxw o  xy���� 
0 _value  x n      yzy o  z~����  0 _targetaccount _targetAccountz o  yz���� 0 _filter  ��  ��  p {��{ Z ��|}����| = ��~~ o  ������ 0 _keyitem _keyItem n  ����� o  ������ 0 targetmailbox targetMailbox� o  ������ 0 pfilterkeys pFilterKeys} r  ����� o  ������ 
0 _value  � n      ��� o  ������  0 _targetmailbox _targetMailbox� o  ������ 0 _filter  ��  ��  ��  �L  �K  �M  �d 0 _keyindx _keyIndx� m   � ����� � n   � ���� m   � ���
�� 
nmbr� n  � ���� 2  � ���
�� 
cobj� o   � ����� 0 _keylist _keyList�c  �e  � ���� r  ����� n ����� I  ��������� &0 sanitycheckfilter sanityCheckFilter� ���� o  ������ 0 _filter  ��  ��  �  f  ��� o      ���� 0 _filter  ��  ��  ��  y ���� L  ���� o  ������ 0 _filter  ��  e ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� &0 sanitycheckfilter sanityCheckFilter� ���� o      ���� 0 _filter  ��  ��  � Z     >������ G     4��� G     *��� G      ��� G     ��� G     ��� n     ��� o    ���� 0 
_iscomment 
_isComment� o     ���� 0 _filter  � n    ��� o    
���� 0 	_isheader 	_isHeader� o    ���� 0 _filter  � n    ��� o    ���� 0 _issitewide _isSitewide� o    ���� 0 _filter  � l   ������ >   ��� n    ��� o    ���� "0 _sendercontains _senderContains� o    ���� 0 _filter  � m    ��
�� 
null��  ��  � l  # (������ >  # (��� n   # &��� o   $ &����  0 _targetaccount _targetAccount� o   # $���� 0 _filter  � m   & '��
�� 
null��  ��  � l  - 2������ >  - 2��� n   - 0��� o   . 0����  0 _targetmailbox _targetMailbox� o   - .���� 0 _filter  � m   0 1��
�� 
null��  ��  � L   7 9�� o   7 8���� 0 _filter  ��  � L   < >�� m   < =��
�� 
null� ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 
0 filter  � ��� o      ���� 0 asender aSender� ���� o      ���� 0 
themessage 
theMessage��  ��  � k     U�� ��� r     ��� n    ��� I    ������� 0 
findfilter 
findFilter� ���� o    ���� 0 asender aSender��  ��  �  f     � o      ���� 0 _filter  � ���� Z   	 U������ >  	 ��� o   	 
���� 0 _filter  � m   
 ��
�� 
null� n   ��� I    ������� 0 processfilter processFilter� ��� o    ���� 0 
themessage 
theMessage� ���� o    ���� 0 _filter  ��  ��  �  f    ��  � k    U�� ��� l   ������  � < 6 Check to see if the user wants a new filter installed   � ��� l   C h e c k   t o   s e e   i f   t h e   u s e r   w a n t s   a   n e w   f i l t e r   i n s t a l l e d� ��� r    "��� n    ��� I     ������� 0 getnewfilter getNewFilter� ��� o    ���� 0 asender aSender� ���� o    ���� 0 
themessage 
theMessage��  ��  �  f    � o      ���� 0 _filter  � ���� Z   # U������� >  # &��� o   # $���� 0 _filter  � m   $ %��
�� 
null� k   ) Q�� ��� l  ) )������  �   User wants a new filter   � ��� 0   U s e r   w a n t s   a   n e w   f i l t e r� ��� l  ) )��������  ��  ��  � ��� l  ) )������  � 7 1 add Filter for Mail Account to in-memory filters   � ��� b   a d d   F i l t e r   f o r   M a i l   A c c o u n t   t o   i n - m e m o r y   f i l t e r s�    n  ) 4 I   * 4������ 0 insertfilter insertFilter  o   * +���� 0 _filter   �� o   + 0���� 0 
pfiltermap 
pFilterMap��  ��    f   ) * 	 r   5 E

 n  5 ? I   6 ?������ .0 makeworkingfilterlist makeWorkingFilterList �� o   6 ;���� 0 
pfiltermap 
pFilterMap��  ��    f   5 6 o      ���� (0 pworkingfilterlist pWorkingFilterList	  l  F F����   ) # set flag so filters get persisted     � F   s e t   f l a g   s o   f i l t e r s   g e t   p e r s i s t e d    r   F I m   F G��
�� boovtrue o      ���� "0 gpersistfilters gPersistFilters  l  J J��������  ��  ��    l  J J����   6 0 Process the current message with the new filter    � `   P r o c e s s   t h e   c u r r e n t   m e s s a g e   w i t h   t h e   n e w   f i l t e r  ��  n  J Q!"! I   K Q�#�~� 0 processfilter processFilter# $%$ o   K L�}�} 0 
themessage 
theMessage% &�|& o   L M�{�{ 0 _filter  �|  �~  "  f   J K��  ��  ��  ��  ��  � '(' l     �z�y�x�z  �y  �x  ( )*) i   � �+,+ I      �w-�v�w 0 
findfilter 
findFilter- .�u. o      �t�t 0 asender aSender�u  �v  , k     8// 010 Y     52�s34�r2 k    055 676 r    898 n    :;: 4    �q<
�q 
cobj< o    �p�p 0 indx  ; o    �o�o (0 pworkingfilterlist pWorkingFilterList9 o      �n�n 0 _filter  7 =�m= Z    0>?�l�k> n   '@A@ I    '�jB�i�j 0 isfilter isFilterB CDC o     �h�h 0 asender aSenderD E�gE n     #FGF o   ! #�f�f "0 _sendercontains _senderContainsG o     !�e�e 0 _filter  �g  �i  A  f    ? L   * ,HH o   * +�d�d 0 _filter  �l  �k  �m  �s 0 indx  3 m    �c�c 4 n    IJI m    �b
�b 
nmbrJ n   KLK 2  	 �a
�a 
cobjL o    	�`�` (0 pworkingfilterlist pWorkingFilterList�r  1 M�_M L   6 8NN m   6 7�^
�^ 
null�_  * OPO l     �]�\�[�]  �\  �[  P QRQ i   �STS I      �ZU�Y�Z 0 isfilter isFilterU VWV o      �X�X 0 asender aSenderW X�WX o      �V�V  0 sendercontains senderContains�W  �Y  T P     :Y�UZY k    9[[ \]\ Z    6^_�T�S^ >   `a` o    �R�R  0 sendercontains senderContainsa m    �Q
�Q 
null_ Y    2b�Pcd�Ob k    -ee fgf r     hih n    jkj 4    �Nl
�N 
cobjl o    �M�M 0 indx  k o    �L�L  0 sendercontains senderContainsi o      �K�K 0 targetsender targetSenderg m�Jm Z   ! -no�I�Hn E   ! $pqp o   ! "�G�G 0 asender aSenderq o   " #�F�F 0 targetsender targetSendero L   ' )rr m   ' (�E
�E boovtrue�I  �H  �J  �P 0 indx  c m    �D�D d n    sts m    �C
�C 
nmbrt n   uvu 2   �B
�B 
cobjv o    �A�A  0 sendercontains senderContains�O  �T  �S  ] w�@w L   7 9xx m   7 8�?
�? boovfals�@  �U  Z �>�=
�> conscase�=  R yzy l     �<�;�:�<  �;  �:  z {|{ i  }~} I      �9�8�9 0 processfilter processFilter ��� o      �7�7 0 amessage aMessage� ��6� o      �5�5 0 _filter  �6  �8  ~ k    c�� ��� r     ��� n     ��� o    �4�4  0 _targetaccount _targetAccount� o     �3�3 0 _filter  � o      �2�2 0 
theaccount 
theAccount� ��� r    ��� n    	��� o    	�1�1  0 _targetmailbox _targetMailbox� o    �0�0 0 _filter  � o      �/�/ 0 
themailbox 
theMailbox� ��.� Q   c���� O    6��� k    5�� ��� Z    /���-�� =   ��� o    �,�, 0 
theaccount 
theAccount� m    �� ���  � r    !��� l   ��+�*� 4    �)�
�) 
mbxp� o    �(�( 0 
themailbox 
theMailbox�+  �*  � n      ��� m     �'
�' 
mbxp� o    �&�& 0 amessage aMessage�-  � r   $ /��� l  $ +��%�$� n   $ +��� 4   ( +�#�
�# 
mbxp� o   ) *�"�" 0 
themailbox 
theMailbox� 4   $ (�!�
�! 
mact� o   & '� �  0 
theaccount 
theAccount�%  �$  � n      ��� m   , .�
� 
mbxp� o   + ,�� 0 amessage aMessage� ��� r   0 5��� m   0 1�
� boovtrue� n      ��� 1   2 4�
� 
isrd� o   1 2�� 0 amessage aMessage�  � m    ���                                                                                  emal  alis    F  Macintosh HD               �n�NH+  �+Mail.app                                                       �΄�s        ����  	                Applications    �n��      ΄��    �+  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  � R      ���
� .ascrerr ****      � ****� o      �� 0 _message  � ���
� 
errn� o      �� 0 _number  �  � Z   >c����� =  > A��� o   > ?�� 0 _number  � m   ? @����� k   D>�� ��� Z   D ������ =  D G��� o   D E�� 0 
theaccount 
theAccount� m   E F�� ���  � r   J i��� I  J g���
� .sysodlogaskr        TEXT� b   J O��� b   J M��� m   J K�� ��� @ T h e r e   a p p e a r s   t o   b e   n o   m a i l b o x   "� o   K L�� 0 
themailbox 
theMailbox� m   M N�� ��� : "   i n   w h i c h   t o   f i l t e r   m a i l   t o .� ���
� 
dflt� m   P Q�� ���  S k i p� ���
� 
btns� J   R ]�� ��� m   R U�� ���  C r e a t e   M a i l b o x� ��� m   U X�� ���  E d i t   F i l t e r� ��� m   X [�� ���  S k i p�  � �
��	
�
 
disp� m   ` a�� �	  � o      �� 0 _result  �  � r   l ���� I  l ����
� .sysodlogaskr        TEXT� b   l {��� b   l w��� b   l u��� b   l q��� m   l o�� ��� @ T h e r e   a p p e a r s   t o   b e   n o   m a i l b o x   "� o   o p�� 0 
themailbox 
theMailbox� m   q t�� ���  "   o f   a c c o u n t   "� o   u v�� 0 
theaccount 
theAccount� m   w z�� ��� : "   i n   w h i c h   t o   f i l t e r   m a i l   t o .� ���
� 
dflt� m   | �� ���  S k i p� ���
� 
btns� J   � ��� � � m   � � �  C r e a t e   M a i l b o x   m   � � �  E d i t   F i l t e r � m   � � �		  S k i p�  � � 
��
�  
disp
 m   � ����� ��  � o      ���� 0 _result  � �� Q   �> Z   ��� =  � � n   � � 1   � ���
�� 
bhit o   � ����� 0 _result   m   � � �  C r e a t e   M a i l b o x k   � �  n  � � I   � ������� 0 createmailbox createMailbox  o   � ����� 0 
theaccount 
theAccount  ��  o   � ����� 0 
themailbox 
theMailbox��  ��    f   � � !"! l  � ���#$��  # U O process the current message with the filter now that there is a mailbox for it   $ �%% �   p r o c e s s   t h e   c u r r e n t   m e s s a g e   w i t h   t h e   f i l t e r   n o w   t h a t   t h e r e   i s   a   m a i l b o x   f o r   i t" &��& n  � �'(' I   � ���)���� 0 processfilter processFilter) *+* o   � ����� 0 amessage aMessage+ ,��, o   � ����� 0 _filter  ��  ��  (  f   � ���   -.- =  � �/0/ n   � �121 1   � ���
�� 
bhit2 o   � ����� 0 _result  0 m   � �33 �44  E d i t   F i l t e r. 5��5 k   �66 787 r   � �9:9 n  � �;<; I   � ���=���� 0 
editfilter 
editFilter= >��> o   � ����� 0 _filter  ��  ��  <  f   � �: o      ���� 0 
_modfilter 
_modFilter8 ?��? Z   �@A����@ >  � �BCB o   � ����� 0 
_modfilter 
_modFilterC m   � ���
�� 
nullA k   �DD EFE n  � �GHG I   � ���I���� *0 removefilterfrommap removeFilterFromMapI JKJ o   � ����� 0 _filter  K L��L o   � ����� 0 
pfiltermap 
pFilterMap��  ��  H  f   � �F MNM n  � �OPO I   � ���Q���� 0 insertfilter insertFilterQ RSR o   � ����� 0 
_modfilter 
_modFilterS T��T o   � ����� 0 
pfiltermap 
pFilterMap��  ��  P  f   � �N UVU r   � �WXW n  � �YZY I   � ���[���� .0 makeworkingfilterlist makeWorkingFilterList[ \��\ o   � ����� 0 
pfiltermap 
pFilterMap��  ��  Z  f   � �X o      ���� (0 pworkingfilterlist pWorkingFilterListV ]^] l  � ���_`��  _ ) # set flag so filters get persisted    ` �aa F   s e t   f l a g   s o   f i l t e r s   g e t   p e r s i s t e d  ^ bcb r   �ded m   � ��
�� boovtruee o      ���� "0 gpersistfilters gPersistFiltersc fgf l ��hi��  h 6 0 process the current message with the new filter   i �jj `   p r o c e s s   t h e   c u r r e n t   m e s s a g e   w i t h   t h e   n e w   f i l t e rg k��k n lml I  ��n���� 0 processfilter processFiltern opo o  ���� 0 amessage aMessagep q��q o  ���� 0 
_modfilter 
_modFilter��  ��  m  f  ��  ��  ��  ��  ��  ��   R      ��rs
�� .ascrerr ****      � ****r o      ���� 0 _message  s ��t��
�� 
errnt o      ���� 0 _number  ��   I >��uv
�� .sysodlogaskr        TEXTu b  'wxw b  %yzy b  !{|{ m  }} �~~ F F i l t e r   M a i l   e n c o u n t e r e d   a n   e r r o r :   "| o   ���� 0 _message  z m  !$ ���  "   n u m b e r :  x o  %&���� 0 _number  v ����
�� 
dflt� m  (+�� ���  C a n c e l� ����
�� 
btns� J  ,4�� ��� m  ,/�� ���  C o n t i n u e� ���� m  /2�� ���  C a n c e l��  � �����
�� 
disp� m  78����  ��  ��  �  � I Ac����
�� .sysodlogaskr        TEXT� b  AL��� b  AJ��� b  AF��� m  AD�� ��� F F i l t e r   M a i l   e n c o u n t e r e d   a n   e r r o r :   "� o  DE���� 0 _message  � m  FI�� ���  "   n u m b e r :  � o  JK���� 0 _number  � ����
�� 
dflt� m  MP�� ���  C a n c e l� ����
�� 
btns� J  QY�� ��� m  QT�� ���  C o n t i n u e� ���� m  TW�� ���  C a n c e l��  � �����
�� 
disp� m  \]����  ��  �.  | ��� l     ��������  ��  ��  � ��� i  
��� I      ������� 0 createmailbox createMailbox� ��� o      ���� 0 
theaccount 
theAccount� ���� o      ���� 0 
themailbox 
theMailbox��  ��  � O     ,��� Z    +������ =   ��� o    ���� 0 
theaccount 
theAccount� m    �� ���  � I  
 �����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
mbxp� �����
�� 
prdt� K    �� �����
�� 
pnam� o    ���� 0 
themailbox 
theMailbox��  ��  ��  � I   +�����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
mbxp� ����
�� 
insh� n    "���  ;   ! "� 4    !���
�� 
mact� o     ���� 0 
theaccount 
theAccount� �����
�� 
prdt� K   # '�� �����
�� 
pnam� o   $ %���� 0 
themailbox 
theMailbox��  ��  � m     ���                                                                                  emal  alis    F  Macintosh HD               �n�NH+  �+Mail.app                                                       �΄�s        ����  	                Applications    �n��      ΄��    �+  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  � ��� l     ��������  ��  ��  � ��� i  ��� I      ������� 0 
sortfiters 
sortFiters� ���� o      ���� 0 _filters  ��  ��  � k     4�� ��� r     ��� n    ��� I    �������� 0 newmap newMap��  ��  �  f     � o      ���� 0 _map  � ��� r    ��� N    �� o      ���� 0 _filters  � o      ���� 0 _filtersref _filtersRef� ��� Y    1�������� k    ,�� ��� r    $��� n    "��� 4    "���
�� 
cobj� o     !���� 0 indx  � o    �� 0 _filtersref _filtersRef� o      �~�~ 0 _filter  � ��}� n  % ,��� I   & ,�|��{�| 0 insertfilter insertFilter� ��� o   & '�z�z 0 _filter  � ��y� o   ' (�x�x 0 _map  �y  �{  �  f   % &�}  �� 0 indx  � m    �w�w � n    ��� m    �v
�v 
nmbr� n   ��� 2   �u
�u 
cobj� o    �t�t 0 _filtersref _filtersRef��  � ��s� L   2 4�� o   2 3�r�r 0 _map  �s  � ��� l     �q�p�o�q  �p  �o  �    i   I      �n�m�n 0 insertfilter insertFilter  o      �l�l 0 _filter   �k o      �j�j 0 
_filtermap 
_filterMap�k  �m   k     � 	
	 r      n      o    �i�i 0 _issitewide _isSitewide o     �h�h 0 _filter   o      �g�g 0 _issitewide _isSitewide
  r     n    	 o    	�f�f  0 _targetaccount _targetAccount o    �e�e 0 _filter   o      �d�d 0 _account    r     n     o    �c�c  0 _targetmailbox _targetMailbox o    �b�b 0 _filter   o      �a�a 0 _mailbox    l   �`�_�^�`  �_  �^    Z    �]�\ =   !"! o    �[�[ 0 _account  " m    �Z
�Z 
null  r    #$# m    %% �&&  n u l l$ o      �Y�Y 0 _account  �]  �\   '(' r     ))*) I     '�X+�W�X 0 mapget mapGet+ ,-, o   ! "�V�V 0 _account  - .�U. o   " #�T�T 0 
_filtermap 
_filterMap�U  �W  * o      �S�S  0 workingaccount workingAccount( /0/ Z   * D12�R�Q1 =  * -343 o   * +�P�P  0 workingaccount workingAccount4 m   + ,�O
�O 
null2 k   0 @55 676 r   0 7898 I   0 5�N�M�L�N 0 newmap newMap�M  �L  9 o      �K�K  0 workingaccount workingAccount7 :�J: I   8 @�I;�H�I 0 mapput mapPut; <=< o   9 :�G�G 0 _account  = >?> o   : ;�F�F  0 workingaccount workingAccount? @�E@ o   ; <�D�D 0 
_filtermap 
_filterMap�E  �H  �J  �R  �Q  0 ABA l  E E�C�B�A�C  �B  �A  B C�@C Z   E �DE�?FD o   E F�>�> 0 _issitewide _isSitewideE Z  I `GH�=�<G H   I MII n   I LJKJ o   J L�;�; 0 	_isheader 	_isHeaderK o   I J�:�: 0 _filter  H I   P \�9L�8�9 0 	mapappend 	mapAppendL MNM o   Q V�7�7 "0 psitewidemapkey pSiteWideMapKeyN OPO o   V W�6�6 0 _filter  P Q�5Q o   W X�4�4  0 workingaccount workingAccount�5  �8  �=  �<  �?  F k   c �RR STS Z  c pUV�3�2U =  c fWXW o   c d�1�1 0 _mailbox  X m   d e�0
�0 
nullV r   i lYZY m   i j[[ �\\  n u l lZ o      �/�/ 0 _mailbox  �3  �2  T ]�.] Z  q �^_�-�,^ H   q u`` n   q taba o   r t�+�+ 0 	_isheader 	_isHeaderb o   q r�*�* 0 _filter  _ I   x ��)c�(�) 0 	mapappend 	mapAppendc ded o   y z�'�' 0 _mailbox  e fgf o   z {�&�& 0 _filter  g h�%h o   { |�$�$  0 workingaccount workingAccount�%  �(  �-  �,  �.  �@   iji l     �#�"�!�#  �"  �!  j klk i  mnm I      � o��  .0 makeworkingfilterlist makeWorkingFilterListo p�p o      �� 0 
_filtermap 
_filterMap�  �  n k     �qq rsr r     tut J     ��  u o      �� 
0 output  s vwv r    	xyx J    ��  y o      ��  0 sitewideoutput sitewideOutputw z{z Y   
 �|�}~�| k    � ��� r    #��� n    !��� 4    !��
� 
cobj� o     �� 0 indx  � n    ��� o    �� 	0 _keys  � o    �� 0 
_filtermap 
_filterMap� o      �� 0 _account  � ��� r   $ -��� I   $ +���� 0 mapget mapGet� ��� o   % &�� 0 _account  � ��� o   & '�� 0 
_filtermap 
_filterMap�  �  � o      ��  0 workingaccount workingAccount� ��� Y   . ���
���	� k   ? ��� ��� r   ? G��� n   ? E��� 4   B E��
� 
cobj� o   C D�� 	0 indx2  � n   ? B��� o   @ B�� 	0 _keys  � o   ? @��  0 workingaccount workingAccount� o      �� 0 _mailbox  � ��� r   H Q��� I   H O���� 0 mapget mapGet� ��� o   I J�� 0 _mailbox  � �� � o   J K����  0 workingaccount workingAccount�   �  � o      ���� 0 _filters  � ��� Z   R c������� >  R W��� n   R U��� m   S U��
�� 
pcls� o   R S���� 0 _filters  � m   U V��
�� 
list� r   Z _��� J   Z ]�� ���� o   Z [���� 0 _filters  ��  � o      ���� 0 _filters  ��  ��  � ���� Y   d ��������� k   s ��� ��� r   s y��� n   s w��� 4   t w���
�� 
cobj� o   u v���� 	0 indx3  � o   s t���� 0 _filters  � o      ���� 0 _filter  � ���� Z   z �������� H   z ~�� n   z }��� o   { }���� 0 
_iscomment 
_isComment� o   z {���� 0 _filter  � Z   � ������� n   � ���� o   � ����� 0 _issitewide _isSitewide� o   � ����� 0 _filter  � r   � ���� b   � ���� o   � �����  0 sitewideoutput sitewideOutput� J   � ��� ���� o   � ����� 0 _filter  ��  � o      ����  0 sitewideoutput sitewideOutput��  � r   � ���� b   � ���� o   � ����� 
0 output  � J   � ��� ���� o   � ����� 0 _filter  ��  � o      ���� 
0 output  ��  ��  ��  �� 	0 indx3  � m   g h���� � n   h n��� m   k m��
�� 
nmbr� n  h k��� 2  i k��
�� 
cobj� o   h i���� 0 _filters  ��  ��  �
 	0 indx2  � m   1 2���� � n   2 :��� m   7 9��
�� 
nmbr� n  2 7��� 2  5 7��
�� 
cobj� n   2 5��� o   3 5���� 	0 _keys  � o   2 3����  0 workingaccount workingAccount�	  �  � 0 indx  } m    ���� ~ n    ��� m    ��
�� 
nmbr� n   ��� 2   ��
�� 
cobj� n    ��� o    ���� 	0 _keys  � o    ���� 0 
_filtermap 
_filterMap�  { ���� L   � ��� b   � ���� o   � ����� 
0 output  � o   � �����  0 sitewideoutput sitewideOutput��  l ��� l     ��������  ��  ��  � ��� i  ��� I      ������� *0 removefilterfrommap removeFilterFromMap� ��� o      ���� 0 _deadfilter _deadFilter� ���� o      ���� 0 
_filtermap 
_filterMap��  ��  � k     ��� ��� Y     ��������� k    ��� ��� r    ��� n    � � 4    ��
�� 
cobj o    ���� 0 indx    n     o    ���� 	0 _keys   o    ���� 0 
_filtermap 
_filterMap� o      ���� 0 _account  �  r    # I    !������ 0 mapget mapGet 	
	 o    ���� 0 _account  
 �� o    ���� 0 
_filtermap 
_filterMap��  ��   o      ����  0 workingaccount workingAccount �� Y   $ ����� k   5 �  r   5 = n   5 ; 4   8 ;��
�� 
cobj o   9 :���� 	0 indx2   n   5 8 o   6 8���� 	0 _keys   o   5 6����  0 workingaccount workingAccount o      ���� 0 _mailbox    r   > G I   > E������ 0 mapget mapGet   o   ? @���� 0 _mailbox    !��! o   @ A����  0 workingaccount workingAccount��  ��   o      ���� 0 _filters   "#" Z   H Y$%����$ >  H M&'& n   H K()( m   I K��
�� 
pcls) o   H I���� 0 _filters  ' m   K L��
�� 
list% r   P U*+* J   P S,, -��- o   P Q���� 0 _filters  ��  + o      ���� 0 _filters  ��  ��  # .��. Y   Z �/��01��/ k   i �22 343 r   i o565 n   i m787 4   j m��9
�� 
cobj9 o   k l���� 	0 indx3  8 o   i j���� 0 _filters  6 o      ���� 0 _filter  4 :��: Z   p �;<����; =  p s=>= o   p q���� 0 _filter  > o   q r���� 0 _deadfilter _deadFilter< k   v �?? @A@ r   v BCB n  v }DED I   w }��F����  0 removelistitem removeListItemF GHG o   w x���� 	0 indx3  H I��I o   x y���� 0 _filters  ��  ��  E  f   v wC o      ���� 0 _filters  A JKJ Z   � �LM��NL =  � �OPO o   � ����� 0 _filters  P J   � �����  M n  � �QRQ I   � ���S���� 0 	mapremove 	mapRemoveS TUT o   � ����� 0 _mailbox  U V��V o   � �����  0 workingaccount workingAccount��  ��  R  f   � ���  N n  � �WXW I   � ���Y���� 0 mapput mapPutY Z[Z o   � ����� 0 _mailbox  [ \]\ o   � ����� 0 _filters  ] ^��^ o   � �����  0 workingaccount workingAccount��  ��  X  f   � �K _��_ L   � �`` m   � ���
�� boovtrue��  ��  ��  ��  �� 	0 indx3  0 m   ] ^���� 1 n   ^ daba m   a c�
� 
nmbrb n  ^ acdc 2  _ a�~
�~ 
cobjd o   ^ _�}�} 0 _filters  ��  ��  �� 	0 indx2   m   ' (�|�|  n   ( 0efe m   - /�{
�{ 
nmbrf n  ( -ghg 2  + -�z
�z 
cobjh n   ( +iji o   ) +�y�y 	0 _keys  j o   ( )�x�x  0 workingaccount workingAccount��  ��  �� 0 indx  � m    �w�w � n    klk m   	 �v
�v 
nmbrl n   	mnm 2   	�u
�u 
cobjn n    opo o    �t�t 	0 _keys  p o    �s�s 0 
_filtermap 
_filterMap��  � q�rq L   � �rr m   � ��q
�q boovfals�r  � sts l     �p�o�n�p  �o  �n  t uvu i  wxw I      �my�l�m  0 persistfilters persistFiltersy z{z o      �k�k 0 
_filtermap 
_filterMap{ |}| o      �j�j 	0 _name  } ~�i~ o      �h�h 0 _loc  �i  �l  x k     d ��� O     ��� r    ��� b    ��� b    ��� l   	��g�f� c    	��� 1    �e
�e 
home� m    �d
�d 
TEXT�g  �f  � o   	 
�c�c 0 _loc  � o    �b�b 	0 _name  � o      �a�a 	0 _path  � m     ���                                                                                  MACS  alis    t  Macintosh HD               �n�NH+  �	
Finder.app                                                     ��_�        ����  	                CoreServices    �n��      �`D    �	��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� Q    ?���� r    ��� c    ��� o    �`�` 	0 _path  � m    �_
�_ 
alis� o      �^�^ 	0 _file  � R      �]��
�] .ascrerr ****      � ****� o      �\�\ 0 _message  � �[��Z
�[ 
errn� o      �Y�Y 0 _number  �Z  � Z   ! ?���X�W� >  ! $��� o   ! "�V�V 0 _number  � m   " #�U�U��� l  ' ;���� I  ' ;�T��
�T .sysodlogaskr        TEXT� b   ' .��� b   ' ,��� b   ' *��� m   ' (�� ��� � F i l t e r   M a i l   e n c o u n t e r e d   a n   e r r o r   w i l e   t r y i n g   t o   s a v e   f i l t e r s   t o   f i l e :   "� o   ( )�S�S 0 _message  � m   * +�� ���  "   n u m b e r :  � o   , -�R�R 0 _number  � �Q��
�Q 
dflt� m   / 0�� ���  C a n c e l� �P��
�P 
btns� J   1 5�� ��� m   1 2�� ���  C o n t i n u e� ��O� m   2 3�� ���  C a n c e l�O  � �N��M
�N 
disp� m   6 7�L�L  �M  �  File not found   � ���  F i l e   n o t   f o u n d�X  �W  � ��� r   @ H��� n  @ F��� I   A F�K��J�K &0 filtermaptostring filterMapToString� ��I� o   A B�H�H 0 
_filtermap 
_filterMap�I  �J  �  f   @ A� o      �G�G 
0 output  � ��� r   I T��� I  I R�F��
�F .rdwropenshor       file� o   I J�E�E 	0 _path  � �D��C
�D 
perm� m   M N�B
�B boovtrue�C  � o      �A�A 0 _fileid _fileID� ��� I  U ^�@��
�@ .rdwrwritnull���     ****� o   U V�?�? 
0 output  � �>��=
�> 
refn� o   Y Z�<�< 0 _fileid _fileID�=  � ��;� I  _ d�:��9
�: .rdwrclosnull���     ****� o   _ `�8�8 0 _fileid _fileID�9  �;  v ��� l     �7�6�5�7  �6  �5  � ��� i  "��� I      �4��3�4 &0 filtermaptostring filterMapToString� ��2� o      �1�1 0 
_filtermap 
_filterMap�2  �3  � k    i�� ��� r     ��� m     �� ���  � o      �0�0 
0 output  � ��� r    ��� m    �� ���  � o      �/�/  0 sitewideoutput sitewideOutput� ��� r    ��� m    	�.
�. boovfals� o      �-�- $0 issitewideheader isSitewideHeader� ��� Y   `��,���+� k   [�� ��� r    %��� n    #��� 4     #�*�
�* 
cobj� o   ! "�)�) 0 indx  � n     ��� o     �(�( 	0 _keys  � o    �'�' 0 
_filtermap 
_filterMap� o      �&�& 0 _account  � ��� r   & /��� I   & -�%��$�% 0 mapget mapGet�    o   ' (�#�# 0 _account   �" o   ( )�!�! 0 
_filtermap 
_filterMap�"  �$  � o      � �   0 workingaccount workingAccount� � Y   0[�� k   AV 	 r   A I

 n   A G 4   D G�
� 
cobj o   E F�� 	0 indx2   n   A D o   B D�� 	0 _keys   o   A B��  0 workingaccount workingAccount o      �� 0 _mailbox  	  r   J S I   J Q��� 0 mapget mapGet  o   K L�� 0 _mailbox   � o   L M��  0 workingaccount workingAccount�  �   o      �� 0 _filters    Z   T e�� >  T Y n   T W  m   U W�
� 
pcls  o   T U�� 0 _filters   m   W X�
� 
list r   \ a!"! J   \ _## $�$ o   \ ]�� 0 _filters  �  " o      �
�
 0 _filters  �  �   %�	% Z   fV&'�(& =  f m)*) o   f g�� 0 _mailbox  * o   g l�� "0 psitewidemapkey pSiteWideMapKey' k   p �++ ,-, Z   p �./��. H   p r00 o   p q�� $0 issitewideheader isSitewideHeader/ k   u �11 232 r   u �454 b   u ~676 b   u |898 o   u v��  0 sitewideoutput sitewideOutput9 o   v {�� .0 psitewideheaderprefix pSiteWideHeaderPrefix7 o   | }� 
�  
ret 5 o      ����  0 sitewideoutput sitewideOutput3 :��: r   � �;<; m   � ���
�� boovtrue< o      ���� $0 issitewideheader isSitewideHeader��  �  �  - =��= Y   � �>��?@��> k   � �AA BCB r   � �DED n   � �FGF 4   � ���H
�� 
cobjH o   � ����� 	0 indx3  G o   � ����� 0 _filters  E o      ���� 0 _filter  C I��I Z   � �JK��LJ n   � �MNM o   � ����� 0 
_iscomment 
_isCommentN o   � ����� 0 _filter  K r   � �OPO b   � �QRQ b   � �STS o   � �����  0 sitewideoutput sitewideOutputT n   � �UVU o   � ����� 0 _linecontent _lineContentV o   � ����� 0 _filter  R o   � ���
�� 
ret P o      ����  0 sitewideoutput sitewideOutput��  L r   � �WXW b   � �YZY o   � �����  0 sitewideoutput sitewideOutputZ l  � �[����[ b   � �\]\ b   � �^_^ b   � �`a` b   � �bcb b   � �ded b   � �fgf b   � �hih m   � �jj �kk " s e n d e r C o n t a i n s :   "i n   � �lml o   � ����� "0 _sendercontains _senderContainsm o   � ����� 0 _filter  g m   � �nn �oo $ "   t a r g e t A c c o u n t :   "e n   � �pqp o   � �����  0 _targetaccount _targetAccountq o   � ����� 0 _filter  c m   � �rr �ss $ "   t a r g e t M a i l b o x :   "a n   � �tut o   � �����  0 _targetmailbox _targetMailboxu o   � ����� 0 _filter  _ m   � �vv �ww  "] o   � ���
�� 
ret ��  ��  X o      ����  0 sitewideoutput sitewideOutput��  �� 	0 indx3  ? m   � ����� @ n   � �xyx m   � ���
�� 
nmbry n  � �z{z 2  � ���
�� 
cobj{ o   � ����� 0 _filters  ��  ��  �  ( k   �V|| }~} Z  � ������ >  � ���� o   � ����� 0 _mailbox  � m   � ��� ���  n u l l� r   � ���� b   � ���� o   � ����� 
0 output  � l  � ������� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 pheaderprefix pHeaderPrefix� m   � ��� ��� "   t a r g e t A c c o u n t :   "� o   � ����� 0 _account  � m   � ��� ��� $ "   t a r g e t M a i l b o x :   "� o   � ����� 0 _mailbox  � m   � ��� ���  "� o   � ���
�� 
ret ��  ��  � o      ���� 
0 output  ��  ��  ~ ��� Y   �P�������� k  K�� ��� r  ��� n  ��� 4  ���
�� 
cobj� o  ���� 	0 indx3  � o  ���� 0 _filters  � o      ���� 0 _filter  � ���� Z  K������ n  ��� o  ���� 0 
_iscomment 
_isComment� o  ���� 0 _filter  � r  %��� b  #��� b  !��� o  ���� 
0 output  � n   ��� o   ���� 0 _linecontent _lineContent� o  ���� 0 _filter  � o  !"��
�� 
ret � o      ���� 
0 output  ��  � r  (K��� b  (I��� o  ()���� 
0 output  � l )H������ b  )H��� b  )F��� b  )B��� b  )<��� b  )8��� b  )4��� b  )0��� m  ),�� ��� " s e n d e r C o n t a i n s :   "� n  ,/��� o  -/���� "0 _sendercontains _senderContains� o  ,-���� 0 _filter  � m  03�� ��� $ "   t a r g e t A c c o u n t :   "� n  47��� o  57����  0 _targetaccount _targetAccount� o  45���� 0 _filter  � m  8;�� ��� $ "   t a r g e t M a i l b o x :   "� n  <A��� o  =A����  0 _targetmailbox _targetMailbox� o  <=���� 0 _filter  � m  BE�� ���  "� o  FG��
�� 
ret ��  ��  � o      ���� 
0 output  ��  �� 	0 indx3  � m  ���� � n  	��� m  ��
�� 
nmbr� n ��� 2 ��
�� 
cobj� o  ���� 0 _filters  ��  � ���� r  QV��� b  QT��� o  QR���� 
0 output  � o  RS��
�� 
ret � o      ���� 
0 output  ��  �	  � 	0 indx2   m   3 4����  n   4 <��� m   9 ;��
�� 
nmbr� n  4 9��� 2  7 9��
�� 
cobj� n   4 7��� o   5 7���� 	0 _keys  � o   4 5����  0 workingaccount workingAccount�  �  �, 0 indx  � m    ���� � n    ��� m    ��
�� 
nmbr� n   ��� 2   ��
�� 
cobj� n    ��� o    ���� 	0 _keys  � o    ���� 0 
_filtermap 
_filterMap�+  � ��� l aa��������  ��  ��  � ��� r  af��� b  ad��� o  ab���� 
0 output  � o  bc����  0 sitewideoutput sitewideOutput� o      ���� 
0 output  � ���� L  gi�� o  gh���� 
0 output  ��  � ��� l     ��������  ��  ��  � ��� i  #&��� I      ������� 0 getnewfilter getNewFilter� ��� o      ���� 0 asender aSender� 	 ��	  o      ���� 0 
themessage 
theMessage��  ��  � k     �		 			 r     			 m     ��
�� 
null	 o      ���� 0 
_newfilter 
_newFilter	 			 l   �				
	 T    �		 k   	 �		 			 l  	 	��		��  	 U O Ask user for new filter target mailbox (and if a new filter should be created)   	 �		 �   A s k   u s e r   f o r   n e w   f i l t e r   t a r g e t   m a i l b o x   ( a n d   i f   a   n e w   f i l t e r   s h o u l d   b e   c r e a t e d )	 			 r   	 2			 I  	 0��		
�� .sysodlogaskr        TEXT	 b   	 			 b   	 			 b   	 			 b   	 			 m   	 
	 	  �	!	! : N o   f i l t e r   e x i s t s   f o r   s e n d e r   '	 o   
 ���� 0 asender aSender	 m    	"	" �	#	# @ ' ,   w o u l d   y o u   l i k e   t o   c r e a t e   o n e ?	 o    ��
�� 
ret 	 m    	$	$ �	%	% J P l e a s e   e n t e r   t h e   d e s t i n a t i o n   m a i l b o x :	 ��	&	'
�� 
dtxt	& o    ���� 40 pdefaultnewfiltermailbox pDefaultNewFilterMailbox	' ��	(	)
�� 
btns	( J    	*	* 	+	,	+ m    	-	- �	.	.  C a n c e l	, 	/	0	/ m    	1	1 �	2	2  S k i p	0 	3��	3 m    	4	4 �	5	5  O K��  	) ��	6	7
�� 
dflt	6 m     	8	8 �	9	9  O K	7 ��	:	;
�� 
appr	: m   ! "	<	< �	=	= $ C r e a t e   N e w   F i l t e r ?	; ��	>	?
�� 
disp	> m   # $��
�� stic   	? ��	@��
�� 
givu	@ m   ' *���� <��  	 o      ���� 0 _result  	 	A��	A l  3 �	B	C	D	B Z   3 �	E	F	G	H	E =  3 :	I	J	I n   3 8	K	L	K 1   4 8��
�� 
gavu	L o   3 4���� 0 _result  	J m   8 9��
�� boovtrue	F k   = >	M	M 	N	O	N l  = =�	P	Q�  	P , & if the user didn't respond, then bail   	Q �	R	R L   i f   t h e   u s e r   d i d n ' t   r e s p o n d ,   t h e n   b a i l	O 	S�~	S  S   = >�~  	G 	T	U	T =  A J	V	W	V n   A F	X	Y	X 1   B F�}
�} 
bhit	Y o   A B�|�| 0 _result  	W m   F I	Z	Z �	[	[  S k i p	U 	\�{	\ k   M N	]	] 	^	_	^ l  M M�z	`	a�z  	` 7 1 if the user wants to skip this sender, then bail   	a �	b	b b   i f   t h e   u s e r   w a n t s   t o   s k i p   t h i s   s e n d e r ,   t h e n   b a i l	_ 	c�y	c  S   M N�y  �{  	H k   Q �	d	d 	e	f	e l  Q Q�x	g	h�x  	g J D if the user wants to continue, let's verify the target mailbox name   	h �	i	i �   i f   t h e   u s e r   w a n t s   t o   c o n t i n u e ,   l e t ' s   v e r i f y   t h e   t a r g e t   m a i l b o x   n a m e	f 	j	k	j r   Q X	l	m	l n   Q V	n	o	n 1   R V�w
�w 
ttxt	o o   Q R�v�v 0 _result  	m o      �u�u  0 _targetmailbox _targetMailbox	k 	p	q	p r   Y d	r	s	r c   Y b	t	u	t l  Y ^	v�t�s	v n   Y ^	w	x	w 2  Z ^�r
�r 
cwor	x o   Y Z�q�q  0 _targetmailbox _targetMailbox�t  �s  	u m   ^ a�p
�p 
TEXT	s o      �o�o 	0 _test  	q 	y�n	y l  e �	z	{	|	z Z   e �	}	~�m		} =  e j	�	�	� o   e f�l�l 	0 _test  	� m   f i	�	� �	�	�  	~ k   m �	�	� 	�	�	� l  m m�k	�	��k  	� _ Y empty mailbox name can not be used...  display an alert and let the repeat start us over   	� �	�	� �   e m p t y   m a i l b o x   n a m e   c a n   n o t   b e   u s e d . . .     d i s p l a y   a n   a l e r t   a n d   l e t   t h e   r e p e a t   s t a r t   u s   o v e r	� 	��j	� I  m ��i	�	�
�i .sysodlogaskr        TEXT	� m   m p	�	� �	�	� R T h e   d e s t i n a t i o n   m a i l b o x   c a n   n o t   b e   b l a n k .	� �h	�	�
�h 
btns	� J   q v	�	� 	��g	� m   q t	�	� �	�	�  O K�g  	� �f	�	�
�f 
dflt	� m   w z	�	� �	�	�  O K	� �e	�	�
�e 
appr	� m   { ~	�	� �	�	� $ E m p t y   M a i l b o x   N a m e	� �d	�	�
�d 
disp	� m    ��c
�c stic    	� �b	��a
�b 
givu	� m   � ��`�` 
�a  �j  �m  	 k   � �	�	� 	�	�	� l  � ��_	�	��_  	� � � the mailbox name is okay, so confirm with the user that the new filter info is correct (and allow them to change the mailbox or sender info   	� �	�	�   t h e   m a i l b o x   n a m e   i s   o k a y ,   s o   c o n f i r m   w i t h   t h e   u s e r   t h a t   t h e   n e w   f i l t e r   i n f o   i s   c o r r e c t   ( a n d   a l l o w   t h e m   t o   c h a n g e   t h e   m a i l b o x   o r   s e n d e r   i n f o	� 	�	�	� r   � �	�	�	� n  � �	�	�	� I   � ��^	��]�^ >0 extractemailaddressfromsender extractEmailAddressFromSender	� 	��\	� o   � ��[�[ 0 asender aSender�\  �]  	�  f   � �	� o      �Z�Z 0 _targetsender _targetSender	� 	�	�	� l  � ��Y�X�W�Y  �X  �W  	� 	�	�	� r   � �	�	�	� n  � �	�	�	� I   � ��V�U�T�V 0 	newfilter 	newFilter�U  �T  	�  f   � �	� o      �S�S 0 _filter  	� 	�	�	� O   � �	�	�	� l  � �	�	�	�	� r   � �	�	�	� m   � �	�	� �	�	�  G r o k e r s	� n      	�	�	� o   � ��R�R  0 _targetaccount _targetAccount	� o   � ��Q�Q 0 _filter  	� . (name of account of mailbox of theMessage   	� �	�	� P n a m e   o f   a c c o u n t   o f   m a i l b o x   o f   t h e M e s s a g e	� m   � �	�	��                                                                                  emal  alis    F  Macintosh HD               �n�NH+  �+Mail.app                                                       �΄�s        ����  	                Applications    �n��      ΄��    �+  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  	� 	�	�	� r   � �	�	�	� J   � �	�	� 	��P	� o   � ��O�O 0 _targetsender _targetSender�P  	� n      	�	�	� o   � ��N�N "0 _sendercontains _senderContains	� o   � ��M�M 0 _filter  	� 	�	�	� r   � �	�	�	� o   � ��L�L  0 _targetmailbox _targetMailbox	� n      	�	�	� o   � ��K�K  0 _targetmailbox _targetMailbox	� o   � ��J�J 0 _filter  	� 	�	�	� r   � �	�	�	� n  � �	�	�	� I   � ��I	��H�I 0 
editfilter 
editFilter	� 	��G	� o   � ��F�F 0 _filter  �G  �H  	�  f   � �	� o      �E�E 0 
_newfilter 
_newFilter	� 	��D	�  S   � ��D  	{ - ' Mailbox name empty else statement ends   	| �	�	� N   M a i l b o x   n a m e   e m p t y   e l s e   s t a t e m e n t   e n d s�n  	C ' ! Button pressed if statement ends   	D �	�	� B   B u t t o n   p r e s s e d   i f   s t a t e m e n t   e n d s��  		   Main repeat ends	   	
 �	�	� $   M a i n   r e p e a t   e n d s 		 	��C	� L   � �	�	� o   � ��B�B 0 
_newfilter 
_newFilter�C  � 	�	�	� l     �A�@�?�A  �@  �?  	� 	�	�	� i  '*	�	�	� I      �>	��=�> >0 extractemailaddressfromsender extractEmailAddressFromSender	� 	��<	� o      �;�; 0 _sender  �<  �=  	� k     J	�	� 	�	�	� r     	�	�	� [     	�	�	� l    		��:�9	� I    	�8�7	�
�8 .sysooffslong    ��� null�7  	� �6	�	�
�6 
psof	� m    	�	� �	�	�  <	� �5	��4
�5 
psin	� o    �3�3 0 _sender  �4  �:  �9  	� m   	 
�2�2 	� o      �1�1 
0 _start  	� 	�	�	� r    	�	�	� \    	�	�	� l   	��0�/	� I   �.�-	�
�. .sysooffslong    ��� null�-  	� �,	�
 
�, 
psof	� m    

 �

  >
  �+
�*
�+ 
psin
 o    �)�) 0 _sender  �*  �0  �/  	� m    �(�( 	� o      �'�' 0 _end  	� 


 Z    G

�&�%
 F    '

	
 ?    




 o    �$�$ 
0 _start  
 m    �#�# 
	 ?   " %


 o   " #�"�" 0 _end  
 m   # $�!�! 
 Z   * C

� 

 B   * -


 o   * +�� 
0 _start  
 o   + ,�� 0 _end  
 L   0 >

 c   0 =


 l  0 ;
��
 n   0 ;


 7  1 ;�


� 
cha 
 o   5 7�� 
0 _start  
 o   8 :�� 0 _end  
 o   0 1�� 0 _sender  �  �  
 m   ; <�
� 
TEXT�   
 L   A C

 m   A B

 �

  �&  �%  
 
�
 L   H J

 o   H I�� 0 _sender  �  	� 
 
!
  l     ����  �  �  
! 
"
#
" i  +.
$
%
$ I      �
&�� 0 
editfilter 
editFilter
& 
'�
' o      �� 0 _filter  �  �  
% k    6
(
( 
)
*
) Q    3
+
,
-
+ k   �
.
. 
/
0
/ r    
1
2
1 n    
3
4
3 o    ��  0 _targetmailbox _targetMailbox
4 o    �� 0 _filter  
2 o      ��  0 _targetmailbox _targetMailbox
0 
5
6
5 Z  	 
7
8�
�	
7 =  	 
9
:
9 o   	 
��  0 _targetmailbox _targetMailbox
: m   
 �
� 
null
8 r    
;
<
; m    
=
= �
>
>  
< o      ��  0 _targetmailbox _targetMailbox�
  �	  
6 
?
@
? r    
A
B
A n    
C
D
C 4    �
E
� 
cobj
E m    �� 
D n    
F
G
F o    �� "0 _sendercontains _senderContains
G o    �� 0 _filter  
B o      �� 0 _targetsender _targetSender
@ 
H
I
H l     � �����   ��  ��  
I 
J��
J l   �
K
L
M
K T    �
N
N l  %�
O
P
Q
O k   %�
R
R 
S
T
S l  % %��
U
V��  
U + % repeat until the info is all correct   
V �
W
W J   r e p e a t   u n t i l   t h e   i n f o   i s   a l l   c o r r e c t
T 
X
Y
X Z   % <
Z
[��
\
Z =  % *
]
^
] n   % (
_
`
_ o   & (����  0 _targetaccount _targetAccount
` o   % &���� 0 _filter  
^ m   ( )
a
a �
b
b  
[ r   - 0
c
d
c m   - .
e
e �
f
f  .
d o      ���� 0 
accountmsg 
accountMsg��  
\ r   3 <
g
h
g b   3 :
i
j
i b   3 8
k
l
k m   3 4
m
m �
n
n    o f   a c c o u n t   '
l n   4 7
o
p
o o   5 7����  0 _targetaccount _targetAccount
p o   4 5���� 0 _filter  
j m   8 9
q
q �
r
r  ' .
h o      ���� 0 
accountmsg 
accountMsg
Y 
s
t
s r   = r
u
v
u I  = p��
w
x
�� .sysodlogaskr        TEXT
w b   = L
y
z
y b   = J
{
|
{ b   = H
}
~
} b   = F

�
 b   = D
�
�
� b   = B
�
�
� b   = @
�
�
� m   = >
�
� �
�
� r T h i s   f i l t e r   w i l l   m o v e   a n y   m e s s a g e   w h o s e   s e n d e r   c o n t a i n s   '
� o   > ?���� 0 _targetsender _targetSender
� m   @ A
�
� �
�
� $ '   t o   t h e   m a i l b o x   '
� o   B C����  0 _targetmailbox _targetMailbox
� m   D E
�
� �
�
�  '
~ o   F G���� 0 
accountmsg 
accountMsg
| o   H I��
�� 
ret 
z m   J K
�
� �
�
�   I s   t h i s   c o r r e c t ?
x ��
�
�
�� 
btns
� J   M X
�
� 
�
�
� m   M P
�
� �
�
�  M o d i f y   M a i l b o x
� 
�
�
� m   P S
�
� �
�
�  M o d i f y   S e n d e r
� 
���
� m   S V
�
� �
�
�  O K��  
� ��
�
�
�� 
dflt
� m   [ ^
�
� �
�
�  O K
� ��
�
�
�� 
appr
� m   a d
�
� �
�
�  E d i t   F i l t e r
� ��
���
�� 
disp
� m   g j��
�� stic   ��  
v o      ���� 0 _result  
t 
���
� Z   s�
�
�
�
�
� =  s |
�
�
� n   s x
�
�
� 1   t x��
�� 
bhit
� o   s t���� 0 _result  
� m   x {
�
� �
�
�  M o d i f y   S e n d e r
� k   "
�
� 
�
�
� l   ��
�
���  
�   Modify Sender?   
� �
�
�    M o d i f y   S e n d e r ?
� 
���
� T   "
�
� k   �
�
� 
�
�
� r   � �
�
�
� I  � ���
�
�
�� .sysodlogaskr        TEXT
� m   � �
�
� �
�
� X P l e a s e   e n t e r   t h e   d e s i r e d   s e n d e r   i n f o r m a t i o n :
� ��
�
�
�� 
dtxt
� o   � ����� 0 _targetsender _targetSender
� ��
�
�
�� 
btns
� J   � �
�
� 
�
�
� m   � �
�
� �
�
�  C a n c e l
� 
�
�
� m   � �
�
� �
�
�  B a c k
� 
���
� m   � �
�
� �
�
�  O K��  
� ��
�
�
�� 
dflt
� m   � �
�
� �
�
�  O K
� ��
�
�
�� 
appr
� m   � �
�
� �
�
�  M o d i f y   S e n d e r
� ��
�
�
�� 
disp
� m   � ���
�� stic   
� ��
���
�� 
givu
� m   � ����� <��  
� o      ���� 0 _result  
� 
���
� Z   �
�
���
�
� F   � �
�
�
� =  � �
�
�
� n   � �
�
�
� 1   � ���
�� 
gavu
� o   � ����� 0 _result  
� m   � ���
�� boovfals
� >  � �
�
�
� n   � �
�
�
� 1   � ���
�� 
bhit
� o   � ����� 0 _result  
� m   � �
�
� �
�
�  B a c k
� k   �
�
� 
�
�
� r   � �
�
�
� n   � �
�
�
� 1   � ���
�� 
ttxt
� o   � ����� 0 _result  
� o      ���� 0 _targetsender _targetSender
� 
�
�
� r   � �
�
�
� c   � �
�
�
� l  � �
�����
� n   � �
�
�
� 2  � ���
�� 
cwor
� o   � ����� 0 _targetsender _targetSender��  ��  
� m   � ���
�� 
TEXT
� o      ���� 	0 _test  
� 
���
� Z   �
�
��� 
� =  � � o   � ����� 	0 _test   m   � � �  
� k   �  l  � ���	��   Y S empty sender can not be used...  display an alert and let the repeat start us over   	 �

 �   e m p t y   s e n d e r   c a n   n o t   b e   u s e d . . .     d i s p l a y   a n   a l e r t   a n d   l e t   t h e   r e p e a t   s t a r t   u s   o v e r �� I  ���
�� .sysodlogaskr        TEXT m   � � � P T h e   s e n d e r   i n f o r m a t i o n   c a n   n o t   b e   b l a n k . ��
�� 
btns J   � � �� m   � � �  O K��   ��
�� 
dflt m   � � �  O K ��
�� 
appr m    �  E m p t y   S e n d e r ��
�� 
disp m  	��
�� stic     �� ��
�� 
givu  m  ���� 
��  ��  ��     S  ��  ��  
�  S  ��  ��  
� !"! = %.#$# n  %*%&% 1  &*��
�� 
bhit& o  %&���� 0 _result  $ m  *-'' �((  M o d i f y   M a i l b o x" )��) k  1�** +,+ l 11��-.��  -   Modify Mailbox?   . �//     M o d i f y   M a i l b o x ?, 0��0 T  1�11 k  6�22 343 r  6i565 I 6g��78
�� .sysodlogaskr        TEXT7 m  6999 �:: Z P l e a s e   e n t e r   t h e   d e s i r e d   d e s t i n a t i o n   m a i l b o x :8 ��;<
�� 
dtxt; o  <=����  0 _targetmailbox _targetMailbox< ��=>
�� 
btns= J  >I?? @A@ m  >ABB �CC  C a n c e lA DED m  ADFF �GG  B a c kE H��H m  DGII �JJ  O K��  > ��KL
�� 
dfltK m  LOMM �NN  O KL ��OP
�� 
apprO m  RUQQ �RR  M o d i f y   M a i l b o xP ��ST
�� 
dispS m  X[��
�� stic   T ��U��
�� 
givuU m  ^a���� <��  6 o      ���� 0 _result  4 V��V Z  j�WX��YW F  j�Z[Z = jq\]\ n  jo^_^ 1  ko��
�� 
gavu_ o  jk���� 0 _result  ] m  op��
�� boovfals[ > t}`a` n  tybcb 1  uy��
�� 
bhitc o  tu���� 0 _result  a m  y|dd �ee  B a c kX k  ��ff ghg r  ��iji n  ��klk 1  ����
�� 
ttxtl o  ������ 0 _result  j o      ����  0 _targetmailbox _targetMailboxh mnm r  ��opo c  ��qrq l ��s����s n  ��tut 2 ����
�� 
cworu o  ������  0 _targetmailbox _targetMailbox��  ��  r m  ����
�� 
TEXTp o      ���� 	0 _test  n v��v Z  ��wx��yw = ��z{z o  ������ 	0 _test  { m  ��|| �}}  x k  ��~~ � l ��������  � _ Y empty mailbox name can not be used...  display an alert and let the repeat start us over   � ��� �   e m p t y   m a i l b o x   n a m e   c a n   n o t   b e   u s e d . . .     d i s p l a y   a n   a l e r t   a n d   l e t   t h e   r e p e a t   s t a r t   u s   o v e r� ���� I ������
�� .sysodlogaskr        TEXT� m  ���� ��� R T h e   d e s t i n a t i o n   m a i l b o x   c a n   n o t   b e   b l a n k .� ����
�� 
btns� J  ���� ���� m  ���� ���  O K��  � ����
�� 
dflt� m  ���� ���  O K� ����
�� 
appr� m  ���� ��� $ E m p t y   M a i l b o x   N a m e� ����
�� 
disp� m  ����
�� stic    � �����
�� 
givu� m  ������ 
��  ��  ��  y  S  ����  ��  Y  S  ����  ��  ��  
� k  ���� ��� l ��������  �   All info is correct   � ��� (   A l l   i n f o   i s   c o r r e c t� ��� r  ����� J  ���� ���� o  ������ 0 _targetsender _targetSender��  � n      ��� o  ������ "0 _sendercontains _senderContains� o  ������ 0 _filter  � ��� r  ����� o  ������  0 _targetmailbox _targetMailbox� n      ��� o  ����  0 _targetmailbox _targetMailbox� o  ���~�~ 0 _filter  � ��� r  ����� H  ���� E  ����� o  ���}�} 0 _targetsender _targetSender� o  ���|�| D0  psitewidesendercontainsindicator  pSiteWideSenderContainsIndicator� n      ��� o  ���{�{ 0 _issitewide _isSitewide� o  ���z�z 0 _filter  � ��y�  S  ���y  ��  
P   Confirmation dialog   
Q ��� (   C o n f i r m a t i o n   d i a l o g
L &   Confirmation dialog repeat ends   
M ��� @   C o n f i r m a t i o n   d i a l o g   r e p e a t   e n d s��  
, R      �x��
�x .ascrerr ****      � ****� o      �w�w 0 _message  � �v��u
�v 
errn� o      �t�t 0 _number  �u  
- Z  3���s�� = ��� o  �r�r 0 _number  � m  �q�q��� L  
�� m  
�p
�p 
null�s  � I 3�o��
�o .sysodlogaskr        TEXT� b  ��� b  ��� b  ��� m  �� ��� F F i l t e r   M a i l   e n c o u n t e r e d   a n   e r r o r :   "� o  �n�n 0 _message  � m  �� ���  "   n u m b e r :  � o  �m�m 0 _number  � �l��
�l 
dflt� m   �� ���  C a n c e l� �k��
�k 
btns� J  !)�� ��� m  !$�� ���  C o n t i n u e� ��j� m  $'�� ���  C a n c e l�j  � �i��h
�i 
disp� m  ,-�g�g  �h  
* ��f� L  46�� o  45�e�e 0 _filter  �f  
# ��� l     �d�c�b�d  �c  �b  � ��� i  /2��� I      �a�`�_�a 0 	newfilter 	newFilter�`  �_  � L     �� K     �� �^���^ "0 _sendercontains _senderContains� m    �]
�] 
null� �\���\  0 _targetaccount _targetAccount� m    �[
�[ 
null� �Z���Z  0 _targetmailbox _targetMailbox� m    �Y
�Y 
null� �X���X 0 _issitewide _isSitewide� m    �W
�W boovfals� �V���V 0 
_iscomment 
_isComment� m   	 
�U
�U boovfals� �T���T 0 	_isheader 	_isHeader� m    �S
�S boovfals� �R��Q�R 0 _linecontent _lineContent� m    �� ���  �Q  � ��� l     �P�O�N�P  �O  �N  � ��� i  36��� I      �M�L�K�M 0 newmap newMap�L  �K  � L     	�� K     �� �J� �J 	0 _keys  � J    �I�I    �H�G�H 0 _values   J    �F�F  �G  �  l     �E�D�C�E  �D  �C    i  7: I      �B�A�B 0 mapput mapPut 	
	 o      �@�@ 0 _key  
  o      �?�? 
0 _value   �> o      �=�= 0 _map  �>  �A   k     *  r      I     	�<�;�< 0 indexof indexOf  o    �:�: 0 _key   �9 n     o    �8�8 	0 _keys   o    �7�7 0 _map  �9  �;   o      �6�6 0 _idx   �5 Z    *�4 =    o    �3�3 0 _idx   m    �2�2�� k      !  r    "#" o    �1�1 0 _key  # n      $%$  ;    % n    &'& o    �0�0 	0 _keys  ' o    �/�/ 0 _map  ! (�.( r    )*) o    �-�- 
0 _value  * n      +,+  ;    , n    -.- o    �,�, 0 _values  . o    �+�+ 0 _map  �.  �4   r   " */0/ o   " #�*�* 
0 _value  0 n      121 4   & )�)3
�) 
cobj3 o   ' (�(�( 0 _idx  2 n   # &454 o   $ &�'�' 0 _values  5 o   # $�&�& 0 _map  �5   676 l     �%�$�#�%  �$  �#  7 898 i  ;>:;: I      �"<�!�" 0 mapget mapGet< =>= o      � �  0 _key  > ?�? o      �� 0 _map  �  �!  ; k     @@ ABA r     CDC n    	EFE I    	�G�� 0 indexof indexOfG HIH o    �� 0 _key  I J�J n    KLK o    �� 	0 _keys  L o    �� 0 _map  �  �  F  f     D o      �� 0 _idx  B M�M Z    NO�PN =   QRQ o    �� 0 _idx  R m    ����O L    SS m    �
� 
null�  P L    TT n    UVU 4    �W
� 
cobjW o    �� 0 _idx  V n    XYX o    �� 0 _values  Y o    �� 0 _map  �  9 Z[Z l     ����  �  �  [ \]\ i  ?B^_^ I      �
`�	�
 0 	mapappend 	mapAppend` aba o      �� 0 _key  b cdc o      �� 
0 _value  d e�e o      �� 0 _map  �  �	  _ k     ]ff ghg r     iji n    	klk I    	�m�� 0 indexof indexOfm non o    �� 0 _key  o p�p n    qrq o    � �  	0 _keys  r o    ���� 0 _map  �  �  l  f     j o      ���� 0 _idx  h s��s Z    ]tu��vt =   wxw o    ���� 0 _idx  x m    ������u k    yy z{z r    |}| o    ���� 0 _key  } n      ~~  ;     n    ��� o    ���� 	0 _keys  � o    ���� 0 _map  { ���� r    ��� o    ���� 
0 _value  � n      ���  ;    � n    ��� o    ���� 0 _values  � o    ���� 0 _map  ��  ��  v k   " ]�� ��� r   " +��� N   " )�� l  " (������ n   " (��� 4   % (���
�� 
cobj� o   & '���� 0 _idx  � n   " %��� o   # %���� 0 _values  � o   " #���� 0 _map  ��  ��  � o      ���� 0 _val  � ���� Z   , ]������ =  , 3��� n   , 1��� m   / 1��
�� 
pcls� n   , /��� 1   - /��
�� 
pcnt� o   , -���� 0 _val  � m   1 2��
�� 
list� k   6 E�� ��� r   6 :��� o   6 7���� 
0 _value  � n      ���  ;   8 9� o   7 8���� 0 _val  � ���� r   ; E��� n   ; >��� 1   < >��
�� 
pcnt� o   ; <���� 0 _val  � n      ��� 4   A D���
�� 
cobj� o   B C���� 0 _idx  � n   > A��� o   ? A���� 0 _values  � o   > ?���� 0 _map  ��  ��  � k   H ]�� ��� r   H M��� J   H K�� ���� o   H I���� 0 _val  ��  � o      ���� 0 _val  � ��� r   N R��� o   N O���� 
0 _value  � n      ���  ;   P Q� o   O P���� 0 _val  � ���� r   S ]��� n   S V��� 1   T V��
�� 
pcnt� o   S T���� 0 _val  � n      ��� 4   Y \���
�� 
cobj� o   Z [���� 0 _idx  � n   V Y��� o   W Y���� 0 _values  � o   V W���� 0 _map  ��  ��  ��  ] ��� l     ��������  ��  ��  � ��� i  CF��� I      ������� 0 	mapremove 	mapRemove� ��� o      ���� 0 _key  � ���� o      ���� 0 _map  ��  ��  � k     5�� ��� r     ��� n    	��� I    	������� 0 indexof indexOf� ��� o    ���� 0 _key  � ���� n    ��� o    ���� 	0 _keys  � o    ���� 0 _map  ��  ��  �  f     � o      ���� 0 _idx  � ���� Z    5������ =   ��� o    ���� 0 _idx  � m    ������� L    �� m    ��
�� boovfals��  � k    5�� ��� r    $��� n    ��� I     �������  0 removelistitem removeListItem� ��� o    ���� 0 _idx  � ���� n    ��� o    ���� 	0 _keys  � o    ���� 0 _map  ��  ��  �  f    � n      ��� o   ! #���� 	0 _keys  � o     !���� 0 _map  � ��� r   % 2��� n  % .��� I   & .�������  0 removelistitem removeListItem� ��� o   & '���� 0 _idx  � ���� n   ' *��� o   ( *���� 0 _values  � o   ' (���� 0 _map  ��  ��  �  f   % &� n         o   / 1���� 0 _values   o   . /���� 0 _map  � �� L   3 5 m   3 4��
�� boovtrue��  ��  �  l     ��������  ��  ��    i  GJ	 I      ��
���� 0 indexof indexOf
  o      ���� 0 _element   �� o      ���� 	0 _list  ��  ��  	 k     :  Z     7���� F      >     o     ���� 	0 _list   J    ����   E    
 o    ���� 	0 _list   o    	���� 0 _element   Y    3���� Z   .���� =   % n    # !  4     #��"
�� 
cobj" o   ! "���� 0 _idx  ! o     ���� 	0 _list   o   # $���� 0 _element   L   ( *## o   ( )���� 0 _idx  ��  ��  �� 0 _idx   m    ����  I   ��$��
�� .corecnte****       ****$ n   %&% 2   ��
�� 
cobj& o    ���� 	0 _list  ��  ��  ��  ��   '��' L   8 :(( m   8 9��������   )*) l     ��������  ��  ��  * +,+ i  KN-.- I      ��/����  0 removelistitem removeListItem/ 010 o      ���� 0 indx  1 2��2 o      ���� 	0 _list  ��  ��  . k     �33 454 Z    67����6 >    898 n     :;: m    ��
�� 
pcls; o     ���� 	0 _list  9 m    ��
�� 
list7 L    
<< o    	�� 	0 _list  ��  ��  5 =>= r    ?@? n    ABA 1    �~
�~ 
lengB o    �}�} 	0 _list  @ o      �|�| 0 len  > CDC Z   !EF�{�zE =   GHG o    �y�y 0 len  H m    �x�x  F L    II o    �w�w 	0 _list  �{  �z  D JKJ Z  " 1LM�v�uL =  " %NON o   " #�t�t 0 indx  O m   # $�s�s M L   ( -PP n   ( ,QRQ 1   ) +�r
�r 
restR o   ( )�q�q 	0 _list  �v  �u  K STS Z  2 EUV�p�oU =  2 5WXW o   2 3�n�n 0 indx  X o   3 4�m�m 0 len  V L   8 AYY l  8 @Z�l�kZ n   8 @[\[ 1   = ?�j
�j 
rvse\ l  8 =]�i�h] n   8 =^_^ 1   ; =�g
�g 
rest_ l  8 ;`�f�e` n   8 ;aba 1   9 ;�d
�d 
rvseb o   8 9�c�c 	0 _list  �f  �e  �i  �h  �l  �k  �p  �o  T cdc Z  F Ref�b�ae ?   F Ighg o   F G�`�` 0 indx  h o   G H�_�_ 0 len  f L   L Nii o   L M�^�^ 	0 _list  �b  �a  d jkj Z  S _lm�]�\l B   S Vnon o   S T�[�[ 0 indx  o m   T U�Z�Z m L   Y [pp o   Y Z�Y�Y 	0 _list  �]  �\  k qrq r   ` osts n   ` muvu 7  a m�Xwx
�X 
cobjw m   e g�W�W x l  h ly�V�Uy \   h lz{z o   i j�T�T 0 indx  { m   j k�S�S �V  �U  v o   ` a�R�R 	0 _list  t o      �Q�Q 	0 parta  r |}| r   p ~~~ n   p |��� 7  q |�P��
�P 
cobj� l  u y��O�N� [   u y��� o   v w�M�M 0 indx  � m   w x�L�L �O  �N  �  ;   z {� o   p q�K�K 	0 _list   o      �J�J 	0 partb  } ��I� L    ��� b    ���� o    ��H�H 	0 parta  � o   � ��G�G 	0 partb  �I  , ��F� l     �E�D�C�E  �D  �C  �F       -�B�   � � � � �� ��� ��������������������������������B  � +�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������A "0 pfilterfilename pFilterFileName�@ *0 pfilterfilelocation pFilterFileLocation�? 40 pdefaultnewfiltermailbox pDefaultNewFilterMailbox�> &0 pfilterfileheader pFilterFileHeader�= .0 psitewideheaderprefix pSiteWideHeaderPrefix�< 0 pheaderprefix pHeaderPrefix�;  0 pcommentprefix pCommentPrefix�: D0  psitewidesendercontainsindicator  pSiteWideSenderContainsIndicator�9 0 pfilterkeys pFilterKeys�8 "0 psitewidemapkey pSiteWideMapKey�7 0 
pfiltermap 
pFilterMap�6 (0 pworkingfilterlist pWorkingFilterList�5  0 plastparsedate pLastParseDate
�4 .aevtoappnull  �   � ****�3 0 init  �2 0 checkmoddate checkModDate�1  0 getfiltersfile getFiltersFile�0 0 readfile readFile�/ 0 parsecontent parseContent�. 0 	parseline 	parseLine�- &0 sanitycheckfilter sanityCheckFilter�, 
0 filter  �+ 0 
findfilter 
findFilter�* 0 isfilter isFilter�) 0 processfilter processFilter�( 0 createmailbox createMailbox�' 0 
sortfiters 
sortFiters�& 0 insertfilter insertFilter�% .0 makeworkingfilterlist makeWorkingFilterList�$ *0 removefilterfrommap removeFilterFromMap�#  0 persistfilters persistFilters�" &0 filtermaptostring filterMapToString�! 0 getnewfilter getNewFilter�  >0 extractemailaddressfromsender extractEmailAddressFromSender� 0 
editfilter 
editFilter� 0 	newfilter 	newFilter� 0 newmap newMap� 0 mapput mapPut� 0 mapget mapGet� 0 	mapappend 	mapAppend� 0 	mapremove 	mapRemove� 0 indexof indexOf�  0 removelistitem removeListItem� ���t #   F i l t e r   M a i l   F i l t e r s . t x t  #    #   T h e   f i l t e r   l i s t   f o r   t h e   F i l t e r   M a i l   s c r i p t .  #   V e r s i o n   3 . 0 . 3   b y   L e v i   B r o w n   < m a i l t o : l e v i g r o k e r @ g m a i l . c o m >  #  #   T h i s   f i l e   s h o u l d   b e   l o c a t e d   i n   t h e   " < h o m e   d i r e c t o r y > / L i b r a r y / P r e f e r e n c e s "  #   d i r e c t o r y   a n d   s h o u l d   b e   n a m e d   " F i l t e r   M a i l   F i l t e r s . t x t " .  #   L i n e s   s t a r t i n g   w i t h   t h e   p o u n d   c h a r a c t e r   ' # '   a n d   e m p t y   l i n e s   a r e   i g n o r e d .  #  #   T h e   f o r m a t   o f   a   f i l t e r   l i n e   s h o u l d   b e   a s   f o l l o w s :  #   s e n d e r C o n t a i n s :   " < s e n d e r > "   t a r g e t A c c o u n t :   " < a c c o u n t > "   t a r g e t M a i l b o x :   " < m a i l b o x > "  #   W h e r e :  #   < s e n d e r >   i s   a n y   t e x t   i n   t h e   s e n d e r   h e a d e r   t o   m a t c h   a g a i n s t   ( c a s e   i n s e n s i t i v e ) .  #   < a c c o u n t >   i s   t h e   n a m e   o f   t h e   a c c o u n t   w h e r e   t h e   m a i l b o x   r e s i d e s .     " "   f o r   l o c a l   m a i l b o x e s .  #   < m a i l b o x >   t h e   " p a t h "   t o   a   m a i l b o x .  #   F o r   e x a m p l e :  #   s e n d e r C o n t a i n s :   " n a s a . g o v "   t a r g e t A c c o u n t :   " "   t a r g e t M a i l b o x :   " A r c h i v e / L i s t s / N A S A "  #   w i l l   f i l e   a n y   m a i l   w h e r e   t h e   s e n d e r   h e a d e r   c o n t a i n s   " n a s a . g o v "   t o   m y   l o c a l   m a i l b o x  #   l o c a t e d   a t   " O n   M y   M a c / A r c h i v e / L i s t s / N A S A "   i n   t h e   M a i l   a p p l i c a t i o n . � ����  0 sendercontains senderContains� � ��� 0 _key  � ���� 0 _length  � �  � ���� 0 targetaccount targetAccount� � ��� 0 _key  � ���� 0 _length  � �  � ���� 0 targetmailbox targetMailbox� �
 ���
 0 _key  � �	���	 0 _length  � �  �  � ���  �  � ���  �  � � ��� ����
� .aevtoappnull  �   � ****�  �   � ���� 0 
themessage 
theMessage� ����������������������Y������������������������ 0 init  �� 0 checkmoddate checkModDate
�� 
bool��  0 getfiltersfile getFiltersFile�� 	0 _file  �� 0 readfile readFile�� 0 _content  �� 0 parsecontent parseContent�� 0 _filters  �� 0 
sortfiters 
sortFiters�� .0 makeworkingfilterlist makeWorkingFilterList
�� 
slct�� 0 theselection theSelection
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
sndr
�� 
TEXT�� 0 	thesender 	theSender�� 
0 filter  �� "0 gpersistfilters gPersistFilters��  0 persistfilters persistFilters�� �)j+  Ob  � 
 )b   b  b  m+ �& F)b   b  l+ E�O)�k+ E�O)�k+ E�O)�k+ 
Ec  
O)b  
k+ Ec  Y hO� 6*�,E�O -�[�a l kh  �a ,a &E` O)_ �l+ [OY��UO_  )b  
b   b  m+ Y h� ��o���������� 0 init  ��  ��  �  � ���� "0 gpersistfilters gPersistFilters�� fE�� ��w���������� 0 checkmoddate checkModDate�� ����� �  �������� 	0 _name  �� 0 _loc  �� 	0 _date  ��  � ���������������� 	0 _name  �� 0 _loc  �� 	0 _date  �� 	0 _path  �� 	0 _file  �� 0 _moddate _modDate�� 0 _num  � 	����������������
�� 
home
�� 
TEXT
�� 
alis
�� .sysonfo4asfe        file
�� 
asmo��  � ������
�� 
errn�� 0 _num  ��  ������ ?� *�,�&�%�%E�UO ��&E�O�j �,E�O��W X  ��  hY hOf� �������������  0 getfiltersfile getFiltersFile�� ����� �  ������ 	0 _name  �� 0 _loc  ��  � �������������� 	0 _name  �� 0 _loc  �� 	0 _path  �� 	0 _file  �� 0 _num  �� 0 _fileid _fileID� ����������������������
�� 
home
�� 
TEXT
�� 
alis��  � ������
�� 
errn�� 0 _num  ��  ����
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� a� *�,�&�%�%E�UO 
��&E�W CX  ��  7��el E�Ob  �l 
O�j O� *�,�&�%�%E�UO��&E�Y hO�� ������������ 0 readfile readFile�� ����� �  ���� 	0 _file  ��  � �������� 	0 _file  �� 0 _fileid _fileID�� 0 _content  � ����������
�� .rdwropenshor       file
�� 
deli
�� 
ret 
�� .rdwrread****        ****
�� .rdwrclosnull���     ****�� �j  E�O����lvl E�O�j O�� ��&���������� 0 parsecontent parseContent�� ����� �  ���� 0 _content  ��  � ������������ 0 _content  �� 0 _filters  �� 0 indx  �� 	0 _line  �� 0 _filter  � ���������������� ,0 gfoundsitewideheader gFoundSiteWideHeader
�� 
list
�� 
cobj
�� 
nmbr�� 0 	parseline 	parseLine
�� 
null
�� .misccurdldt    ��� null�� SfE�OjvE�O��&E�O 3k��-�,Ekh ��/E�O)�k+ E�O�� 	��6GY hO�[OY��O*j Ec  O�� ��g���������� 0 	parseline 	parseLine�� ����� �  ���� 	0 _line  ��  � 
���������������������� 	0 _line  �� 0 _filter  �� 0 
_whiteline 
_whiteLine�� 0 _keylist _keyList�� 0 _keyindx _keyIndx�� 0 _keyitem _keyItem�� 0 _key  �� 0 
_keylength 
_keyLength�� 0 indx  �� 
0 _value  � ��~�}~�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m,E�l�k�j�i�h�g�f
� 
null
�~ 
cwor
�} 
TEXT�| 0 	newfilter 	newFilter�{ 0 
_iscomment 
_isComment�z 0 _linecontent _lineContent�y ,0 gfoundsitewideheader gFoundSiteWideHeader�x 0 _issitewide _isSitewide�w 0 	_isheader 	_isHeader
�v 
list
�u 
cobj
�t 
nmbr�s 0 _key  �r 0 _length  
�q 
psof
�p 
psin�o 
�n .sysooffslong    ��� null
�m 
cha �l  0 sendercontains senderContains�k "0 _sendercontains _senderContains�j 0 targetaccount targetAccount�i  0 _targetaccount _targetAccount�h 0 targetmailbox targetMailbox�g  0 _targetmailbox _targetMailbox�f &0 sanitycheckfilter sanityCheckFilter����E�O��-�&E�O���)j+ E�O�b   e��,FO���,FO� 
e��,FY hYh�b   e��,FOe��,FOeE�O�Y �b   
e��,FY hOb  �&E�O(k��-�,Ekh ��/E�O��,E�O��,E�O*�a �a  E�O�j ���E�O�[a \[Z�\Zi2�&E�O*�a a �a  E�O�[a \[Z�k\Zi2�&E�O*�a a �a  E�O�k �[a \[Zk\Z�k2�&E�Y a E�O�[a \[Z�\Zi2�&E�O�b  a ,  #�kv�a ,FO�b   
e��,FY hY hO�b  a ,  ��a ,FY hO�b  a ,  ��a ,FY hY h[OY��O)�k+ E�Y hO�� �e��d�c���b�e &0 sanitycheckfilter sanityCheckFilter�d �a��a �  �`�` 0 _filter  �c  � �_�_ 0 _filter  � �^�]�\�[�Z�Y�X�W�^ 0 
_iscomment 
_isComment�] 0 	_isheader 	_isHeader
�\ 
bool�[ 0 _issitewide _isSitewide�Z "0 _sendercontains _senderContains
�Y 
null�X  0 _targetaccount _targetAccount�W  0 _targetmailbox _targetMailbox�b ?��,E
 ��,E�&
 ��,E�&
 	��,��&
 	��,��&
 	��,��& �Y �� �V��U�T���S�V 
0 filter  �U �R��R �  �Q�P�Q 0 asender aSender�P 0 
themessage 
theMessage�T  � �O�N�M�O 0 asender aSender�N 0 
themessage 
theMessage�M 0 _filter  � �L�K�J�I�H�G�F�L 0 
findfilter 
findFilter
�K 
null�J 0 processfilter processFilter�I 0 getnewfilter getNewFilter�H 0 insertfilter insertFilter�G .0 makeworkingfilterlist makeWorkingFilterList�F "0 gpersistfilters gPersistFilters�S V)�k+  E�O�� )��l+ Y >)��l+ E�O�� -)�b  
l+ O)b  
k+ Ec  OeE�O)��l+ Y h� �E,�D�C���B�E 0 
findfilter 
findFilter�D �A��A �  �@�@ 0 asender aSender�C  � �?�>�=�? 0 asender aSender�> 0 indx  �= 0 _filter  � �<�;�:�9�8
�< 
cobj
�; 
nmbr�: "0 _sendercontains _senderContains�9 0 isfilter isFilter
�8 
null�B 9 4kb  �-�,Ekh b  �/E�O)���,l+  �Y h[OY��O�� �7T�6�5���4�7 0 isfilter isFilter�6 �3��3 �  �2�1�2 0 asender aSender�1  0 sendercontains senderContains�5  � �0�/�.�-�0 0 asender aSender�/  0 sendercontains senderContains�. 0 indx  �- 0 targetsender targetSender� Z�,�+�*
�, 
null
�+ 
cobj
�* 
nmbr�4 ;g� 7�� , &k��-�,Ekh ��/E�O�� eY h[OY��Y hOfV� �)~�(�'���&�) 0 processfilter processFilter�( �%��% �  �$�#�$ 0 amessage aMessage�# 0 _filter  �'  � �"�!� ������" 0 amessage aMessage�! 0 _filter  �  0 
theaccount 
theAccount� 0 
themailbox 
theMailbox� 0 _message  � 0 _number  � 0 _result  � 0 
_modfilter 
_modFilter� 2�����������������������������3��
�	���}���������  0 _targetaccount _targetAccount�  0 _targetmailbox _targetMailbox
� 
mbxp
� 
mact
� 
isrd� 0 _message  � ���
� 
errn� 0 _number  �  ���
� 
dflt
� 
btns
� 
disp� 
� .sysodlogaskr        TEXT
� 
bhit� 0 createmailbox createMailbox� 0 processfilter processFilter� 0 
editfilter 
editFilter
�
 
null�	 *0 removefilterfrommap removeFilterFromMap� 0 insertfilter insertFilter� .0 makeworkingfilterlist makeWorkingFilterList� "0 gpersistfilters gPersistFilters�&d��,E�O��,E�O ,� $��  *�/��,FY *�/�/��,FOe��,FUW,X  ��  ���  $�%�%���a a a mva la  E�Y -a �%a %�%a %�a �a a a mva la  E�O ~�a ,a   )��l+ O)��l+  Y ]�a ,a !  P)�k+ "E�O�a # ;)�b  
l+ $O)�b  
l+ %O)b  
k+ &Ec  OeE` 'O)��l+  Y hY hW )X  a (�%a )%�%�a *�a +a ,lva ja  Y $a -�%a .%�%�a /�a 0a 1lva ja  � ���� ����� 0 createmailbox createMailbox� ����� �  ������ 0 
theaccount 
theAccount�� 0 
themailbox 
theMailbox�   � ������ 0 
theaccount 
theAccount�� 0 
themailbox 
theMailbox� ��������������������
�� 
kocl
�� 
mbxp
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null
�� 
insh
�� 
mact�� �� -� )��  *����l� Y *���*�/6��l� U� ������������� 0 
sortfiters 
sortFiters�� ����� �  ���� 0 _filters  ��  � ������������ 0 _filters  �� 0 _map  �� 0 _filtersref _filtersRef�� 0 indx  �� 0 _filter  � ������������ 0 newmap newMap�� 0 _filters  
�� 
cobj
�� 
nmbr�� 0 insertfilter insertFilter�� 5)j+  E�O)�,E�O !k��-�,Ekh ��/E�O)��l+ [OY��O�� ������������ 0 insertfilter insertFilter�� ����� �  ������ 0 _filter  �� 0 
_filtermap 
_filterMap��  � �������������� 0 _filter  �� 0 
_filtermap 
_filterMap�� 0 _issitewide _isSitewide�� 0 _account  �� 0 _mailbox  ��  0 workingaccount workingAccount� ��������%����������[�� 0 _issitewide _isSitewide��  0 _targetaccount _targetAccount��  0 _targetmailbox _targetMailbox
�� 
null�� 0 mapget mapGet�� 0 newmap newMap�� 0 mapput mapPut�� 0 	_isheader 	_isHeader�� 0 	mapappend 	mapAppend�� ���,E�O��,E�O��,E�O��  �E�Y hO*��l+ E�O��  *j+ E�O*���m+ Y hO� ��, *b  	��m+ 	Y hY #��  �E�Y hO��, *���m+ 	Y h� ��n���������� .0 makeworkingfilterlist makeWorkingFilterList�� ����� �  ���� 0 
_filtermap 
_filterMap��  � ������������������������ 0 
_filtermap 
_filterMap�� 
0 output  ��  0 sitewideoutput sitewideOutput�� 0 indx  �� 0 _account  ��  0 workingaccount workingAccount�� 	0 indx2  �� 0 _mailbox  �� 0 _filters  �� 	0 indx3  �� 0 _filter  � ������������������ 	0 _keys  
�� 
cobj
�� 
nmbr�� 0 mapget mapGet
�� 
pcls
�� 
list�� 0 
_iscomment 
_isComment�� 0 _issitewide _isSitewide�� �jvE�OjvE�O �k��,�-�,Ekh ��,�/E�O*��l+ E�O xk��,�-�,Ekh ��,�/E�O*��l+ E�O��,� 
�kvE�Y hO =k��-�,Ekh 	��/E�O��, ��,E ��kv%E�Y 	��kv%E�Y h[OY��[OY��[OY�nO��%� ������������� *0 removefilterfrommap removeFilterFromMap�� ����� �  ������ 0 _deadfilter _deadFilter�� 0 
_filtermap 
_filterMap��  � 
���������������������� 0 _deadfilter _deadFilter�� 0 
_filtermap 
_filterMap�� 0 indx  �� 0 _account  ��  0 workingaccount workingAccount�� 	0 indx2  �� 0 _mailbox  �� 0 _filters  �� 	0 indx3  �� 0 _filter  � 	�������������������� 	0 _keys  
�� 
cobj
�� 
nmbr�� 0 mapget mapGet
�� 
pcls
�� 
list��  0 removelistitem removeListItem�� 0 	mapremove 	mapRemove�� 0 mapput mapPut�� � �k��,�-�,Ekh ��,�/E�O*��l+ E�O �k��,�-�,Ekh ��,�/E�O*��l+ E�O��,� 
�kvE�Y hO Jk��-�,Ekh ��/E�O��  +)��l+ E�O�jv  )��l+ Y 
)���m+ OeY h[OY��[OY��[OY�aOf� ��x����������  0 persistfilters persistFilters�� ����� �  �������� 0 
_filtermap 
_filterMap�� 	0 _name  �� 0 _loc  ��  � 	�������������������� 0 
_filtermap 
_filterMap�� 	0 _name  �� 0 _loc  �� 	0 _path  �� 	0 _file  �� 0 _message  �� 0 _number  �� 
0 output  �� 0 _fileid _fileID� �����������������������~�}�|�{�z�y�x�w
�� 
home
�� 
TEXT
�� 
alis�� 0 _message  � �v�u�t
�v 
errn�u 0 _number  �t  ����
�� 
dflt
�� 
btns
� 
disp�~ 
�} .sysodlogaskr        TEXT�| &0 filtermaptostring filterMapToString
�{ 
perm
�z .rdwropenshor       file
�y 
refn
�x .rdwrwritnull���     ****
�w .rdwrclosnull���     ****�� e� *�,�&�%�%E�UO 
��&E�W %X  �� �%�%�%�����lv�j� Y hO)�k+ E�O�a el E�O�a �l O�j � �s��r�q���p�s &0 filtermaptostring filterMapToString�r �o��o �  �n�n 0 
_filtermap 
_filterMap�q  � �m�l�k�j�i�h�g�f�e�d�c�b�m 0 
_filtermap 
_filterMap�l 
0 output  �k  0 sitewideoutput sitewideOutput�j $0 issitewideheader isSitewideHeader�i 0 indx  �h 0 _account  �g  0 workingaccount workingAccount�f 	0 indx2  �e 0 _mailbox  �d 0 _filters  �c 	0 indx3  �b 0 _filter  � ���a�`�_�^�]�\�[�Z�Yj�Xn�Wr�Vv���������a 	0 _keys  
�` 
cobj
�_ 
nmbr�^ 0 mapget mapGet
�] 
pcls
�\ 
list
�[ 
ret �Z 0 
_iscomment 
_isComment�Y 0 _linecontent _lineContent�X "0 _sendercontains _senderContains�W  0 _targetaccount _targetAccount�V  0 _targetmailbox _targetMailbox�pj�E�O�E�OfE�OSk��,�-�,Ekh ��,�/E�O*��l+ E�O*k��,�-�,Ekh ��,�/E�O*��l+ E�O��,� 
�kvE�Y hO�b  	  i� �b  %�%E�OeE�Y hO Jk��-�,Ekh 
��/E�O��,E ���,%�%E�Y ���,%�%��,%�%�a ,%a %�%%E�[OY��Y ��a   �b  a %�%a %�%a %�%%E�Y hO Pk��-�,Ekh 
��/E�O��,E ���,%�%E�Y %�a ��,%a %��,%a %�a ,%a %�%%E�[OY��O��%E�[OY��[OY��O��%E�O�� �U��T�S���R�U 0 getnewfilter getNewFilter�T �Q��Q �  �P�O�P 0 asender aSender�O 0 
themessage 
theMessage�S  � �N�M�L�K�J�I�H�G�N 0 asender aSender�M 0 
themessage 
theMessage�L 0 
_newfilter 
_newFilter�K 0 _result  �J  0 _targetmailbox _targetMailbox�I 	0 _test  �H 0 _targetsender _targetSender�G 0 _filter  � )�F	 	"�E	$�D�C	-	1	4�B	8�A	<�@�?�>�=�<�;�:�9	Z�8�7�6	�	�	�	�	��5�4�3�2	�	��1�0�/�.
�F 
null
�E 
ret 
�D 
dtxt
�C 
btns
�B 
dflt
�A 
appr
�@ 
disp
�? stic   
�> 
givu�= <�< 
�; .sysodlogaskr        TEXT
�: 
gavu
�9 
bhit
�8 
ttxt
�7 
cwor
�6 
TEXT
�5 stic    �4 
�3 >0 extractemailaddressfromsender extractEmailAddressFromSender�2 0 	newfilter 	newFilter�1  0 _targetaccount _targetAccount�0 "0 _sendercontains _senderContains�/  0 _targetmailbox _targetMailbox�. 0 
editfilter 
editFilter�R ��E�O �hZ�%�%�%�%�b  ����mv������a a a  E�O�a ,e  Y ��a ,a   Y ��a ,E�O�a -a &E�O�a   &a �a kv�a �a �a a a  a   Y @)�k+ !E�O)j+ "E�Oa # a $�a %,FUO�kv�a &,FO��a ',FO)�k+ (E�O[OY�6O�� �-	��,�+���*�- >0 extractemailaddressfromsender extractEmailAddressFromSender�, �)��) �  �(�( 0 _sender  �+  � �'�&�%�' 0 _sender  �& 
0 _start  �% 0 _end  � 
�$	��#�"�!
� ��

�$ 
psof
�# 
psin�" 
�! .sysooffslong    ��� null
�  
bool
� 
cha 
� 
TEXT�* K*���� kE�O*���� kE�O�k	 �k�& �� �[�\[Z�\Z�2�&Y �Y hO�� �
%������ 0 
editfilter 
editFilter� ��� �  �� 0 _filter  �  � ��������� 0 _filter  �  0 _targetmailbox _targetMailbox� 0 _targetsender _targetSender� 0 
accountmsg 
accountMsg� 0 _result  � 	0 _test  � 0 _message  � 0 _number  � K��
=���
a
e
m
q
�
�
��

��	
�
�
��
��
������
�
��
�
�
�
�
�� ������
�������������'9BFIMQd|�������������������  0 _targetmailbox _targetMailbox
� 
null� "0 _sendercontains _senderContains
� 
cobj�  0 _targetaccount _targetAccount
�
 
ret 
�	 
btns
� 
dflt
� 
appr
� 
disp
� stic   � 
� .sysodlogaskr        TEXT
� 
bhit
� 
dtxt
�  
givu�� <�� 
�� 
gavu
�� 
bool
�� 
ttxt
�� 
cwor
�� 
TEXT
�� stic    �� 
�� 0 _issitewide _isSitewide�� 0 _message  � ������
�� 
errn�� 0 _number  ��  ������ �7���,E�O��  �E�Y hO��,�k/E�O�hZ��,�  �E�Y ��,%�%E�O�%�%�%�%�%�%�%�a a a mva a a a a a a  E�O�a ,a   � �hZa a ��a a  a !mva a "a a #a a a $a %a & E�O�a ',f 	 �a ,a (a )& L�a *,E�O�a +-a ,&E�O�a -  ,a .�a /kva a 0a a 1a a 2a $a 3a 3 Y Y [OY�cY Ҥa ,a 4  � �hZa 5a ��a 6a 7a 8mva a 9a a :a a a $a %a & E�O�a ',f 	 �a ,a ;a )& L�a *,E�O�a +-a ,&E�O�a <  ,a =�a >kva a ?a a @a a 2a $a 3a 3 Y Y [OY�cY  �kv��,FO���,FO�b  �a A,FO[OY�,W 8X B C�a D  �Y &a E�%a F%�%a a G�a Ha Ilva ja J O�� ������������� 0 	newfilter 	newFilter��  ��  �  � 
��������������������� "0 _sendercontains _senderContains
�� 
null��  0 _targetaccount _targetAccount��  0 _targetmailbox _targetMailbox�� 0 _issitewide _isSitewide�� 0 
_iscomment 
_isComment�� 0 	_isheader 	_isHeader�� 0 _linecontent _lineContent�� �� �������f�f�f���� �������� ���� 0 newmap newMap��  ��  �    �������� 	0 _keys  �� 0 _values  �� �� 
�jv�jv�� ���������� 0 mapput mapPut�� ����   �������� 0 _key  �� 
0 _value  �� 0 _map  ��   ���������� 0 _key  �� 
0 _value  �� 0 _map  �� 0 _idx   ���������� 	0 _keys  �� 0 indexof indexOf�� 0 _values  
�� 
cobj�� +*���,l+ E�O�i  ���,6FO���,6FY 
���,�/F� ��;�������� 0 mapget mapGet�� ����   ������ 0 _key  �� 0 _map  ��   �������� 0 _key  �� 0 _map  �� 0 _idx   ������������ 	0 _keys  �� 0 indexof indexOf
�� 
null�� 0 _values  
�� 
cobj��  )���,l+ E�O�i  �Y 
��,�/E� ��_�������� 0 	mapappend 	mapAppend�� ��	�� 	  �������� 0 _key  �� 
0 _value  �� 0 _map  ��   ������������ 0 _key  �� 
0 _value  �� 0 _map  �� 0 _idx  �� 0 _val   ���������������� 	0 _keys  �� 0 indexof indexOf�� 0 _values  
�� 
cobj
�� 
pcnt
�� 
pcls
�� 
list�� ^)���,l+ E�O�i  ���,6FO���,6FY =��,�/E�O��,�,�  ��6FO��,��,�/FY �kvE�O��6FO��,��,�/F� �������
���� 0 	mapremove 	mapRemove�� ����   ������ 0 _key  �� 0 _map  ��  
 �������� 0 _key  �� 0 _map  �� 0 _idx   ���������� 	0 _keys  �� 0 indexof indexOf��  0 removelistitem removeListItem�� 0 _values  �� 6)���,l+ E�O�i  fY  )���,l+ ��,FO)���,l+ ��,FOe� ��	�������� 0 indexof indexOf�� ����   ������ 0 _element  �� 	0 _list  ��   �������� 0 _element  �� 	0 _list  �� 0 _idx   ������
�� 
bool
�� 
cobj
�� .corecnte****       ****�� ;�jv	 ���& ) #k��-j kh ��/�  �Y h[OY��Y hOi� ��.��������  0 removelistitem removeListItem�� ����   ������ 0 indx  �� 	0 _list  ��   ������������ 0 indx  �� 	0 _list  �� 0 len  �� 	0 parta  �� 	0 partb   ������~�}�|
�� 
pcls
�� 
list
� 
leng
�~ 
rest
�} 
rvse
�| 
cobj�� ���,� �Y hO��,E�O�j  �Y hO�k  
��,EY hO��  ��,�,�,EY hO�� �Y hO�k �Y hO�[�\[Zk\Z�k2E�O�[�\[Z�k\62E�O��% ascr  ��ޭ