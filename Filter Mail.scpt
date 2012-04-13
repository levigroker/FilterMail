FasdUAS 1.101.10   ��   ��    k             l      ��  ��   1+Filter MailA manually activated mail filing/filtering Script for the Mac OS X "Mail" application.By Levi Brown <mailto:levi@grokers.net>Version 3.0.2 April 13th, 2012This script works on the current selection in Mail, and is intended to be usedwith the Script Menu.  Select a message or range of messages and run the scripton them. Any messages in the selection meeting the specified criteria will bemoved into the specified mailbox.  Any messages in the selection for which nofilter is found will result in a prompt to create a new filter.  For moreinformation about the Script Menu please visit:http://www.apple.com/applescript/scriptmenu/To add filters run the script and follow the given instructions, or manuallymodify the filters file defined by the 'pFilterFileName' and'pFilterFileLocation' properties.* This script has been tested on Mac OS X 10.2.x through 10.5.5 under US Englishand may contain i18n issues which are not accounted for.Please feel free to contact me with improvements and feedback.Release History:1.0   September 6th, 2002: Internal initial release.2.0   October 22nd, 2002: Separated the filters to a file which      now gets read in and parsed when it changes.2.0.1 October 29nd, 2002: Added error checking for the case when      the target mailbox does not exist.  Now dialogs will be displayed.2.0.2 January 11th, 2004: Added support for either Macintosh style line      endings or Unix style line endings to the filters file.3.0 January 9th, 2008: Re-wrote file parsing mechanism, added supportfor dynamic creation and persistence of filters, and support for mailboxcreation and filter editing.3.0.1 October 1st, 2008: Added sanity check for filter parser toavoid importing unparsable lines as empty filters.3.0.2 April 13th, 2012: Fixed issue where null senderContains in filter caused script to abort.Copyright (c) 2012 Levi Brown.This work is licensed under the Creative Commons Attribution-Noncommercial-NoDerivative Works 3.0 United States License. To view a copy of this license,visit http://creativecommons.org/licenses/by-nc-nd/3.0/us/ or send a letter toCreative Commons, 171 Second Street, Suite 300, San Francisco, California,94105, USA.1. DISCLAIMER OF WARRANTY.  ALL EXPRESS OR IMPLIED CONDITIONS, REPRESENTATIONSAND WARRANTIES, INCLUDING ANY IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR APARTICULAR PURPOSE OR NON-INFRINGEMENT ARE DISCLAIMED, EXCEPT TO THE EXTENT THATTHESE DISCLAIMERS ARE HELD TO BE LEGALLY INVALID.2. LIMITATION OF LIABILITY.  TO THE EXTENT NOT PROHIBITED BY LAW, IN NO EVENTWILL THE AUTHOR OR THE AUTHOR'S LICENSORS BE LIABLE FOR ANY LOST REVENUE, PROFITOR DATA, OR FOR SPECIAL, INDIRECT, CONSEQUENTIAL, INCIDENTAL OR PUNITIVEDAMAGES, HOWEVER CAUSED REGARDLESS OF THE THEORY OF LIABILITY, ARISING OUT OF ORRELATED TO THE USE OF OR INABILITY TO USE SOFTWARE, EVEN IF THE AUTHOR HAS BEENADVISED OF THE POSSIBILITY OF SUCH DAMAGES.  In no event will the author'sliability to you, whether in contract, tort (including negligence), orotherwise, exceed the amount paid by you for Software under this Agreement. Theforegoing limitations will apply even if the above stated warranty fails of itsessential purpose. Some states do not allow the exclusion of incidental orconsequential damages, so some of the terms above may not be applicable to you.     � 	 	V  F i l t e r   M a i l  A   m a n u a l l y   a c t i v a t e d   m a i l   f i l i n g / f i l t e r i n g   S c r i p t   f o r   t h e   M a c   O S   X   " M a i l "   a p p l i c a t i o n .  B y   L e v i   B r o w n   < m a i l t o : l e v i @ g r o k e r s . n e t >  V e r s i o n   3 . 0 . 2   A p r i l   1 3 t h ,   2 0 1 2   T h i s   s c r i p t   w o r k s   o n   t h e   c u r r e n t   s e l e c t i o n   i n   M a i l ,   a n d   i s   i n t e n d e d   t o   b e   u s e d  w i t h   t h e   S c r i p t   M e n u .     S e l e c t   a   m e s s a g e   o r   r a n g e   o f   m e s s a g e s   a n d   r u n   t h e   s c r i p t  o n   t h e m .   A n y   m e s s a g e s   i n   t h e   s e l e c t i o n   m e e t i n g   t h e   s p e c i f i e d   c r i t e r i a   w i l l   b e  m o v e d   i n t o   t h e   s p e c i f i e d   m a i l b o x .     A n y   m e s s a g e s   i n   t h e   s e l e c t i o n   f o r   w h i c h   n o  f i l t e r   i s   f o u n d   w i l l   r e s u l t   i n   a   p r o m p t   t o   c r e a t e   a   n e w   f i l t e r .     F o r   m o r e  i n f o r m a t i o n   a b o u t   t h e   S c r i p t   M e n u   p l e a s e   v i s i t :  h t t p : / / w w w . a p p l e . c o m / a p p l e s c r i p t / s c r i p t m e n u /   T o   a d d   f i l t e r s   r u n   t h e   s c r i p t   a n d   f o l l o w   t h e   g i v e n   i n s t r u c t i o n s ,   o r   m a n u a l l y  m o d i f y   t h e   f i l t e r s   f i l e   d e f i n e d   b y   t h e   ' p F i l t e r F i l e N a m e '   a n d  ' p F i l t e r F i l e L o c a t i o n '   p r o p e r t i e s .   *   T h i s   s c r i p t   h a s   b e e n   t e s t e d   o n   M a c   O S   X   1 0 . 2 . x   t h r o u g h   1 0 . 5 . 5   u n d e r   U S   E n g l i s h  a n d   m a y   c o n t a i n   i 1 8 n   i s s u e s   w h i c h   a r e   n o t   a c c o u n t e d   f o r .   P l e a s e   f e e l   f r e e   t o   c o n t a c t   m e   w i t h   i m p r o v e m e n t s   a n d   f e e d b a c k .   R e l e a s e   H i s t o r y :  1 . 0       S e p t e m b e r   6 t h ,   2 0 0 2 :   I n t e r n a l   i n i t i a l   r e l e a s e .  2 . 0       O c t o b e r   2 2 n d ,   2 0 0 2 :   S e p a r a t e d   t h e   f i l t e r s   t o   a   f i l e   w h i c h              n o w   g e t s   r e a d   i n   a n d   p a r s e d   w h e n   i t   c h a n g e s .  2 . 0 . 1   O c t o b e r   2 9 n d ,   2 0 0 2 :   A d d e d   e r r o r   c h e c k i n g   f o r   t h e   c a s e   w h e n              t h e   t a r g e t   m a i l b o x   d o e s   n o t   e x i s t .     N o w   d i a l o g s   w i l l   b e   d i s p l a y e d .  2 . 0 . 2   J a n u a r y   1 1 t h ,   2 0 0 4 :   A d d e d   s u p p o r t   f o r   e i t h e r   M a c i n t o s h   s t y l e   l i n e              e n d i n g s   o r   U n i x   s t y l e   l i n e   e n d i n g s   t o   t h e   f i l t e r s   f i l e .  3 . 0   J a n u a r y   9 t h ,   2 0 0 8 :   R e - w r o t e   f i l e   p a r s i n g   m e c h a n i s m ,   a d d e d   s u p p o r t  f o r   d y n a m i c   c r e a t i o n   a n d   p e r s i s t e n c e   o f   f i l t e r s ,   a n d   s u p p o r t   f o r   m a i l b o x  c r e a t i o n   a n d   f i l t e r   e d i t i n g .  3 . 0 . 1   O c t o b e r   1 s t ,   2 0 0 8 :   A d d e d   s a n i t y   c h e c k   f o r   f i l t e r   p a r s e r   t o  a v o i d   i m p o r t i n g   u n p a r s a b l e   l i n e s   a s   e m p t y   f i l t e r s .  3 . 0 . 2   A p r i l   1 3 t h ,   2 0 1 2 :   F i x e d   i s s u e   w h e r e   n u l l   s e n d e r C o n t a i n s   i n   f i l t e r   c a u s e d   s c r i p t   t o   a b o r t .   C o p y r i g h t   ( c )   2 0 1 2   L e v i   B r o w n .  T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n c o m m e r c i a l - N o  D e r i v a t i v e   W o r k s   3 . 0   U n i t e d   S t a t e s   L i c e n s e .   T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,  v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - n d / 3 . 0 / u s /   o r   s e n d   a   l e t t e r   t o  C r e a t i v e   C o m m o n s ,   1 7 1   S e c o n d   S t r e e t ,   S u i t e   3 0 0 ,   S a n   F r a n c i s c o ,   C a l i f o r n i a ,  9 4 1 0 5 ,   U S A .   1 .   D I S C L A I M E R   O F   W A R R A N T Y .     A L L   E X P R E S S   O R   I M P L I E D   C O N D I T I O N S ,   R E P R E S E N T A T I O N S  A N D   W A R R A N T I E S ,   I N C L U D I N G   A N Y   I M P L I E D   W A R R A N T Y   O F   M E R C H A N T A B I L I T Y ,   F I T N E S S   F O R   A  P A R T I C U L A R   P U R P O S E   O R   N O N - I N F R I N G E M E N T   A R E   D I S C L A I M E D ,   E X C E P T   T O   T H E   E X T E N T   T H A T  T H E S E   D I S C L A I M E R S   A R E   H E L D   T O   B E   L E G A L L Y   I N V A L I D .   2 .   L I M I T A T I O N   O F   L I A B I L I T Y .     T O   T H E   E X T E N T   N O T   P R O H I B I T E D   B Y   L A W ,   I N   N O   E V E N T  W I L L   T H E   A U T H O R   O R   T H E   A U T H O R ' S   L I C E N S O R S   B E   L I A B L E   F O R   A N Y   L O S T   R E V E N U E ,   P R O F I T  O R   D A T A ,   O R   F O R   S P E C I A L ,   I N D I R E C T ,   C O N S E Q U E N T I A L ,   I N C I D E N T A L   O R   P U N I T I V E  D A M A G E S ,   H O W E V E R   C A U S E D   R E G A R D L E S S   O F   T H E   T H E O R Y   O F   L I A B I L I T Y ,   A R I S I N G   O U T   O F   O R  R E L A T E D   T O   T H E   U S E   O F   O R   I N A B I L I T Y   T O   U S E   S O F T W A R E ,   E V E N   I F   T H E   A U T H O R   H A S   B E E N  A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E S .     I n   n o   e v e n t   w i l l   t h e   a u t h o r ' s  l i a b i l i t y   t o   y o u ,   w h e t h e r   i n   c o n t r a c t ,   t o r t   ( i n c l u d i n g   n e g l i g e n c e ) ,   o r  o t h e r w i s e ,   e x c e e d   t h e   a m o u n t   p a i d   b y   y o u   f o r   S o f t w a r e   u n d e r   t h i s   A g r e e m e n t .   T h e  f o r e g o i n g   l i m i t a t i o n s   w i l l   a p p l y   e v e n   i f   t h e   a b o v e   s t a t e d   w a r r a n t y   f a i l s   o f   i t s  e s s e n t i a l   p u r p o s e .   S o m e   s t a t e s   d o   n o t   a l l o w   t h e   e x c l u s i o n   o f   i n c i d e n t a l   o r  c o n s e q u e n t i a l   d a m a g e s ,   s o   s o m e   o f   t h e   t e r m s   a b o v e   m a y   n o t   b e   a p p l i c a b l e   t o   y o u .    
  
 l     ��������  ��  ��        j     �� �� "0 pfilterfilename pFilterFileName  m        �   . F i l t e r   M a i l   F i l t e r s . t x t      j    �� �� *0 pfilterfilelocation pFilterFileLocation  m       �   ( L i b r a r y : P r e f e r e n c e s :      j    �� �� 40 pdefaultnewfiltermailbox pDefaultNewFilterMailbox  m       �   0 A r c h i v e / F r i e n d s /   G e n e r a l      j   	 q�� �� &0 pfilterfileheader pFilterFileHeader  b   	 p    b   	 n   !   b   	 j " # " b   	 h $ % $ b   	 d & ' & b   	 b ( ) ( b   	 ^ * + * b   	 \ , - , b   	 X . / . b   	 V 0 1 0 b   	 R 2 3 2 b   	 P 4 5 4 b   	 L 6 7 6 b   	 J 8 9 8 b   	 F : ; : b   	 D < = < b   	 @ > ? > b   	 > @ A @ b   	 : B C B b   	 8 D E D b   	 4 F G F b   	 2 H I H b   	 . J K J b   	 , L M L b   	 * N O N b   	 ( P Q P b   	 & R S R b   	 $ T U T b   	 " V W V b   	   X Y X b   	  Z [ Z b   	  \ ] \ b   	  ^ _ ^ b   	  ` a ` b   	  b c b b   	  d e d b   	  f g f b   	  h i h b   	  j k j b   	  l m l m   	 
 n n � o o  #   m o   
 ���� "0 pfilterfilename pFilterFileName k o    ��
�� 
ret  i l 	   p���� p m     q q � r r  #  ��  ��   g o    ��
�� 
ret  e l 	   s���� s m     t t � u u Z #   T h e   f i l t e r   l i s t   f o r   t h e   F i l t e r   M a i l   s c r i p t .��  ��   c o    ��
�� 
ret  a l 	   v���� v m     w w � x x j #   V e r s i o n   3 . 0   b y   L e v i   B r o w n   < m a i l t o : l e v i @ g r o k e r s . n e t >��  ��   _ o    ��
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
theMessageG o   | }�[�[ 0 theselection theSelection�i  ? m   o pYY�                                                                                  emal  alis    F  Macintosh HD               �n�NH+     fMail.app                                                        *�-q"        ����  	                Applications    �n��      �-ł       f  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  = Z[Z l   � ��Z\]�Z  \ � �	on error _message number _number		if _number is not -128 then			display dialog "Filter Mail encountered an error: \"" & _message & "\" number: " & _number default button "Continue" buttons {"Continue"} with icon 0		end if	end try	   ] �^^�  	 o n   e r r o r   _ m e s s a g e   n u m b e r   _ n u m b e r  	 	 i f   _ n u m b e r   i s   n o t   - 1 2 8   t h e n  	 	 	 d i s p l a y   d i a l o g   " F i l t e r   M a i l   e n c o u n t e r e d   a n   e r r o r :   \ " "   &   _ m e s s a g e   &   " \ "   n u m b e r :   "   &   _ n u m b e r   d e f a u l t   b u t t o n   " C o n t i n u e "   b u t t o n s   { " C o n t i n u e " }   w i t h   i c o n   0  	 	 e n d   i f  	 e n d   t r y  	[ _�Y_ Z   � �`a�X�W` o   � ��V�V "0 gpersistfilters gPersistFiltersa n  � �bcb I   � ��Ud�T�U  0 persistfilters persistFiltersd efe o   � ��S�S 0 
pfiltermap 
pFilterMapf ghg o   � ��R�R "0 pfilterfilename pFilterFileNameh i�Qi o   � ��P�P *0 pfilterfilelocation pFilterFileLocation�Q  �T  c  f   � ��X  �W  �Y   � jkj l     �O�N�M�O  �N  �M  k lml i   � �non I      �L�K�J�L 0 init  �K  �J  o r     pqp m     �I
�I boovfalsq o      �H�H "0 gpersistfilters gPersistFiltersm rsr l     �G�F�E�G  �F  �E  s tut i   � �vwv I      �Dx�C�D 0 checkmoddate checkModDatex yzy o      �B�B 	0 _name  z {|{ o      �A�A 0 _loc  | }�@} o      �?�? 	0 _date  �@  �C  w k     >~~ � O     ��� r    ��� b    ��� b    ��� l   	��>�=� c    	��� 1    �<
�< 
home� m    �;
�; 
TEXT�>  �=  � o   	 
�:�: 0 _loc  � o    �9�9 	0 _name  � o      �8�8 	0 _path  � m     ���                                                                                  MACS  alis    t  Macintosh HD               �n�NH+     G
Finder.app                                                       �z�(XW        ����  	                CoreServices    �n��      �(��       G   :   9  6Macintosh HD:System: Library: CoreServices: Finder.app   
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
�� 0 _loc  � o    �� 	0 _name  � o      �� 	0 _path  � m     ���                                                                                  MACS  alis    t  Macintosh HD               �n�NH+     G
Finder.app                                                       �z�(XW        ����  	                CoreServices    �n��      �(��       G   :   9  6Macintosh HD:System: Library: CoreServices: Finder.app   
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
TEXT��  ��  � o   L M���� 0 _loc  � o   N O���� 	0 _name  � o      ���� 	0 _path  � m   C D���                                                                                  MACS  alis    t  Macintosh HD               �n�NH+     G
Finder.app                                                       �z�(XW        ����  	                CoreServices    �n��      �(��       G   :   9  6Macintosh HD:System: Library: CoreServices: Finder.app   
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
ret  �� m     �  ��  ��   o      ���� 0 _content    I   ����
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
�> conscase�=  R yzy l     �<�;�:�<  �;  �:  z {|{ i  }~} I      �9�8�9 0 processfilter processFilter ��� o      �7�7 0 amessage aMessage� ��6� o      �5�5 0 _filter  �6  �8  ~ k    [�� ��� r     ��� n     ��� o    �4�4  0 _targetaccount _targetAccount� o     �3�3 0 _filter  � o      �2�2 0 
theaccount 
theAccount� ��� r    ��� n    	��� o    	�1�1  0 _targetmailbox _targetMailbox� o    �0�0 0 _filter  � o      �/�/ 0 
themailbox 
theMailbox� ��.� Q   [���� O    0��� Z    /���-�� =   ��� o    �,�, 0 
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
mbxp� o   + ,�� 0 amessage aMessage� m    ���                                                                                  emal  alis    F  Macintosh HD               �n�NH+     fMail.app                                                        *�-q"        ����  	                Applications    �n��      �-ł       f  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  � R      ���
� .ascrerr ****      � ****� o      �� 0 _message  � ���
� 
errn� o      �� 0 _number  �  � Z   8[����� =  8 ;��� o   8 9�� 0 _number  � m   9 :����� k   >6�� ��� Z   > ������ =  > A��� o   > ?�� 0 
theaccount 
theAccount� m   ? @�� ���  � r   D a��� I  D _���
� .sysodlogaskr        TEXT� b   D I��� b   D G��� m   D E�� ��� @ T h e r e   a p p e a r s   t o   b e   n o   m a i l b o x   "� o   E F�� 0 
themailbox 
theMailbox� m   G H�� ��� : "   i n   w h i c h   t o   f i l t e r   m a i l   t o .� ���
� 
dflt� m   J K�� ���  S k i p� ���
� 
btns� J   L U�� ��� m   L M�� ���  C r e a t e   M a i l b o x� ��� m   M P�� ���  E d i t   F i l t e r� ��� m   P S�� ���  S k i p�  � ���
� 
disp� m   X Y�� �  � o      �� 0 _result  �  � r   d ���� I  d ��
��
�
 .sysodlogaskr        TEXT� b   d s��� b   d o��� b   d m��� b   d i��� m   d g�� ��� @ T h e r e   a p p e a r s   t o   b e   n o   m a i l b o x   "� o   g h�	�	 0 
themailbox 
theMailbox� m   i l�� ���  "   o f   a c c o u n t   "� o   m n�� 0 
theaccount 
theAccount� m   o r�� ��� : "   i n   w h i c h   t o   f i l t e r   m a i l   t o .� ���
� 
dflt� m   t w�� ���  S k i p� ���
� 
btns� J   x ��� ��� m   x {�� ���  C r e a t e   M a i l b o x� ��� m   { ~�� ���  E d i t   F i l t e r� ��� m   ~ �   �  S k i p�  � ��
� 
disp m   � ��� �  � o      �� 0 _result  � �  Q   �6 Z   �	�� =  � �

 n   � � 1   � ���
�� 
bhit o   � ����� 0 _result   m   � � �  C r e a t e   M a i l b o x k   � �  n  � � I   � ������� 0 createmailbox createMailbox  o   � ����� 0 
theaccount 
theAccount �� o   � ����� 0 
themailbox 
theMailbox��  ��    f   � �  l  � �����   U O process the current message with the filter now that there is a mailbox for it    � �   p r o c e s s   t h e   c u r r e n t   m e s s a g e   w i t h   t h e   f i l t e r   n o w   t h a t   t h e r e   i s   a   m a i l b o x   f o r   i t �� n  � �  I   � ���!���� 0 processfilter processFilter! "#" o   � ����� 0 amessage aMessage# $��$ o   � ����� 0 _filter  ��  ��     f   � ���  	 %&% =  � �'(' n   � �)*) 1   � ���
�� 
bhit* o   � ����� 0 _result  ( m   � �++ �,,  E d i t   F i l t e r& -��- k   �.. /0/ r   � �121 n  � �343 I   � ���5���� 0 
editfilter 
editFilter5 6��6 o   � ����� 0 _filter  ��  ��  4  f   � �2 o      ���� 0 
_modfilter 
_modFilter0 7��7 Z   �89����8 >  � �:;: o   � ����� 0 
_modfilter 
_modFilter; m   � ���
�� 
null9 k   �<< =>= n  � �?@? I   � ���A���� *0 removefilterfrommap removeFilterFromMapA BCB o   � ����� 0 _filter  C D��D o   � ����� 0 
pfiltermap 
pFilterMap��  ��  @  f   � �> EFE n  � �GHG I   � ���I���� 0 insertfilter insertFilterI JKJ o   � ����� 0 
_modfilter 
_modFilterK L��L o   � ����� 0 
pfiltermap 
pFilterMap��  ��  H  f   � �F MNM r   � �OPO n  � �QRQ I   � ���S���� .0 makeworkingfilterlist makeWorkingFilterListS T��T o   � ����� 0 
pfiltermap 
pFilterMap��  ��  R  f   � �P o      ���� (0 pworkingfilterlist pWorkingFilterListN UVU l  � ���WX��  W ) # set flag so filters get persisted    X �YY F   s e t   f l a g   s o   f i l t e r s   g e t   p e r s i s t e d  V Z[Z r   � �\]\ m   � ���
�� boovtrue] o      ���� "0 gpersistfilters gPersistFilters[ ^_^ l  � ���`a��  ` 6 0 process the current message with the new filter   a �bb `   p r o c e s s   t h e   c u r r e n t   m e s s a g e   w i t h   t h e   n e w   f i l t e r_ c��c n  �ded I   ���f���� 0 processfilter processFilterf ghg o   � ����� 0 amessage aMessageh i��i o   � ���� 0 
_modfilter 
_modFilter��  ��  e  f   � ���  ��  ��  ��  ��  ��   R      ��jk
�� .ascrerr ****      � ****j o      ���� 0 _message  k ��l��
�� 
errnl o      ���� 0 _number  ��   I 6��mn
�� .sysodlogaskr        TEXTm b  opo b  qrq b  sts m  uu �vv F F i l t e r   M a i l   e n c o u n t e r e d   a n   e r r o r :   "t o  ���� 0 _message  r m  ww �xx  "   n u m b e r :  p o  ���� 0 _number  n ��yz
�� 
dflty m   #{{ �||  C a n c e lz ��}~
�� 
btns} J  $, ��� m  $'�� ���  C o n t i n u e� ���� m  '*�� ���  C a n c e l��  ~ �����
�� 
disp� m  /0����  ��  �   �  � I 9[����
�� .sysodlogaskr        TEXT� b  9D��� b  9B��� b  9>��� m  9<�� ��� F F i l t e r   M a i l   e n c o u n t e r e d   a n   e r r o r :   "� o  <=���� 0 _message  � m  >A�� ���  "   n u m b e r :  � o  BC���� 0 _number  � ����
�� 
dflt� m  EH�� ���  C a n c e l� ����
�� 
btns� J  IQ�� ��� m  IL�� ���  C o n t i n u e� ���� m  LO�� ���  C a n c e l��  � �����
�� 
disp� m  TU����  ��  �.  | ��� l     ��������  ��  ��  � ��� i  
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
theMailbox��  ��  � m     ���                                                                                  emal  alis    F  Macintosh HD               �n�NH+     fMail.app                                                        *�-q"        ����  	                Applications    �n��      �-ł       f  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  � ��� l     ��������  ��  ��  � ��� i  ��� I      ������� 0 
sortfiters 
sortFiters� ���� o      ���� 0 _filters  ��  ��  � k     4�� ��� r     ��� n    ��� I    �������� 0 newmap newMap��  ��  �  f     � o      ���� 0 _map  � ��� r    ��� N    �� o      ���� 0 _filters  � o      ���� 0 _filtersref _filtersRef� ��� Y    1�������� k    ,�� ��� r    $��� n    "��� 4    "���
�� 
cobj� o     !���� 0 indx  � o    ���� 0 _filtersref _filtersRef� o      ���� 0 _filter  � ���� n  % ,��� I   & ,������ 0 insertfilter insertFilter� ��� o   & '�~�~ 0 _filter  � ��}� o   ' (�|�| 0 _map  �}  �  �  f   % &��  �� 0 indx  � m    �{�{ � n    ��� m    �z
�z 
nmbr� n   ��� 2   �y
�y 
cobj� o    �x�x 0 _filtersref _filtersRef��  � ��w� L   2 4�� o   2 3�v�v 0 _map  �w  � ��� l     �u�t�s�u  �t  �s  � ��� i  ��� I      �r��q�r 0 insertfilter insertFilter� ��� o      �p�p 0 _filter  � ��o� o      �n�n 0 
_filtermap 
_filterMap�o  �q  � k     �    r      n      o    �m�m 0 _issitewide _isSitewide o     �l�l 0 _filter   o      �k�k 0 _issitewide _isSitewide  r    	
	 n    	 o    	�j�j  0 _targetaccount _targetAccount o    �i�i 0 _filter  
 o      �h�h 0 _account    r     n     o    �g�g  0 _targetmailbox _targetMailbox o    �f�f 0 _filter   o      �e�e 0 _mailbox    l   �d�c�b�d  �c  �b    Z   �a�` =    o    �_�_ 0 _account   m    �^
�^ 
null r     m     �  n u l l o      �]�] 0 _account  �a  �`     r     )!"! I     '�\#�[�\ 0 mapget mapGet# $%$ o   ! "�Z�Z 0 _account  % &�Y& o   " #�X�X 0 
_filtermap 
_filterMap�Y  �[  " o      �W�W  0 workingaccount workingAccount  '(' Z   * D)*�V�U) =  * -+,+ o   * +�T�T  0 workingaccount workingAccount, m   + ,�S
�S 
null* k   0 @-- ./. r   0 7010 I   0 5�R�Q�P�R 0 newmap newMap�Q  �P  1 o      �O�O  0 workingaccount workingAccount/ 2�N2 I   8 @�M3�L�M 0 mapput mapPut3 454 o   9 :�K�K 0 _account  5 676 o   : ;�J�J  0 workingaccount workingAccount7 8�I8 o   ; <�H�H 0 
_filtermap 
_filterMap�I  �L  �N  �V  �U  ( 9:9 l  E E�G�F�E�G  �F  �E  : ;�D; Z   E �<=�C>< o   E F�B�B 0 _issitewide _isSitewide= Z  I `?@�A�@? H   I MAA n   I LBCB o   J L�?�? 0 	_isheader 	_isHeaderC o   I J�>�> 0 _filter  @ I   P \�=D�<�= 0 	mapappend 	mapAppendD EFE o   Q V�;�; "0 psitewidemapkey pSiteWideMapKeyF GHG o   V W�:�: 0 _filter  H I�9I o   W X�8�8  0 workingaccount workingAccount�9  �<  �A  �@  �C  > k   c �JJ KLK Z  c pMN�7�6M =  c fOPO o   c d�5�5 0 _mailbox  P m   d e�4
�4 
nullN r   i lQRQ m   i jSS �TT  n u l lR o      �3�3 0 _mailbox  �7  �6  L U�2U Z  q �VW�1�0V H   q uXX n   q tYZY o   r t�/�/ 0 	_isheader 	_isHeaderZ o   q r�.�. 0 _filter  W I   x ��-[�,�- 0 	mapappend 	mapAppend[ \]\ o   y z�+�+ 0 _mailbox  ] ^_^ o   z {�*�* 0 _filter  _ `�)` o   { |�(�(  0 workingaccount workingAccount�)  �,  �1  �0  �2  �D  � aba l     �'�&�%�'  �&  �%  b cdc i  efe I      �$g�#�$ .0 makeworkingfilterlist makeWorkingFilterListg h�"h o      �!�! 0 
_filtermap 
_filterMap�"  �#  f k     �ii jkj r     lml J     � �   m o      �� 
0 output  k non r    	pqp J    ��  q o      ��  0 sitewideoutput sitewideOutputo rsr Y   
 �t�uv�t k    �ww xyx r    #z{z n    !|}| 4    !�~
� 
cobj~ o     �� 0 indx  } n    � o    �� 	0 _keys  � o    �� 0 
_filtermap 
_filterMap{ o      �� 0 _account  y ��� r   $ -��� I   $ +���� 0 mapget mapGet� ��� o   % &�� 0 _account  � ��� o   & '�� 0 
_filtermap 
_filterMap�  �  � o      ��  0 workingaccount workingAccount� ��� Y   . ������� k   ? ��� ��� r   ? G��� n   ? E��� 4   B E��
� 
cobj� o   C D�� 	0 indx2  � n   ? B��� o   @ B�
�
 	0 _keys  � o   ? @�	�	  0 workingaccount workingAccount� o      �� 0 _mailbox  � ��� r   H Q��� I   H O���� 0 mapget mapGet� ��� o   I J�� 0 _mailbox  � ��� o   J K��  0 workingaccount workingAccount�  �  � o      �� 0 _filters  � ��� Z   R c���� � >  R W��� n   R U��� m   S U��
�� 
pcls� o   R S���� 0 _filters  � m   U V��
�� 
list� r   Z _��� J   Z ]�� ���� o   Z [���� 0 _filters  ��  � o      ���� 0 _filters  �  �   � ���� Y   d ��������� k   s ��� ��� r   s y��� n   s w��� 4   t w���
�� 
cobj� o   u v���� 	0 indx3  � o   s t���� 0 _filters  � o      ���� 0 _filter  � ���� Z   z �������� H   z ~�� n   z }��� o   { }���� 0 
_iscomment 
_isComment� o   z {���� 0 _filter  � Z   � ������� n   � ���� o   � ����� 0 _issitewide _isSitewide� o   � ����� 0 _filter  � r   � ���� b   � ���� o   � �����  0 sitewideoutput sitewideOutput� J   � ��� ���� o   � ����� 0 _filter  ��  � o      ����  0 sitewideoutput sitewideOutput��  � r   � ���� b   � ���� o   � ����� 
0 output  � J   � ��� ���� o   � ����� 0 _filter  ��  � o      ���� 
0 output  ��  ��  ��  �� 	0 indx3  � m   g h���� � n   h n��� m   k m��
�� 
nmbr� n  h k��� 2  i k��
�� 
cobj� o   h i���� 0 _filters  ��  ��  � 	0 indx2  � m   1 2���� � n   2 :��� m   7 9��
�� 
nmbr� n  2 7��� 2  5 7��
�� 
cobj� n   2 5��� o   3 5���� 	0 _keys  � o   2 3����  0 workingaccount workingAccount�  �  � 0 indx  u m    ���� v n    ��� m    ��
�� 
nmbr� n   ��� 2   ��
�� 
cobj� n    ��� o    ���� 	0 _keys  � o    ���� 0 
_filtermap 
_filterMap�  s ���� L   � ��� b   � ���� o   � ����� 
0 output  � o   � �����  0 sitewideoutput sitewideOutput��  d ��� l     ��������  ��  ��  � ��� i  ��� I      ������� *0 removefilterfrommap removeFilterFromMap� ��� o      ���� 0 _deadfilter _deadFilter� ���� o      ���� 0 
_filtermap 
_filterMap��  ��  � k     ��� ��� Y     ��������� k    ��� ��� r    ��� n    ��� 4    ���
�� 
cobj� o    ���� 0 indx  � n    ��� o    ���� 	0 _keys  � o    ���� 0 
_filtermap 
_filterMap� o      ���� 0 _account  � ��� r    #��� I    !�� ���� 0 mapget mapGet   o    ���� 0 _account   �� o    ���� 0 
_filtermap 
_filterMap��  ��  � o      ����  0 workingaccount workingAccount� �� Y   $ ����� k   5 � 	
	 r   5 = n   5 ; 4   8 ;��
�� 
cobj o   9 :���� 	0 indx2   n   5 8 o   6 8���� 	0 _keys   o   5 6����  0 workingaccount workingAccount o      ���� 0 _mailbox  
  r   > G I   > E������ 0 mapget mapGet  o   ? @���� 0 _mailbox   �� o   @ A����  0 workingaccount workingAccount��  ��   o      ���� 0 _filters    Z   H Y���� >  H M n   H K !  m   I K��
�� 
pcls! o   H I���� 0 _filters   m   K L��
�� 
list r   P U"#" J   P S$$ %��% o   P Q���� 0 _filters  ��  # o      ���� 0 _filters  ��  ��   &��& Y   Z �'��()��' k   i �** +,+ r   i o-.- n   i m/0/ 4   j m��1
�� 
cobj1 o   k l���� 	0 indx3  0 o   i j���� 0 _filters  . o      ���� 0 _filter  , 2��2 Z   p �34����3 =  p s565 o   p q���� 0 _filter  6 o   q r���� 0 _deadfilter _deadFilter4 k   v �77 898 r   v :;: n  v }<=< I   w }��>����  0 removelistitem removeListItem> ?@? o   w x���� 	0 indx3  @ A��A o   x y���� 0 _filters  ��  ��  =  f   v w; o      ���� 0 _filters  9 BCB Z   � �DE��FD =  � �GHG o   � ����� 0 _filters  H J   � �����  E n  � �IJI I   � ���K���� 0 	mapremove 	mapRemoveK LML o   � ����� 0 _mailbox  M N��N o   � �����  0 workingaccount workingAccount��  ��  J  f   � ���  F n  � �OPO I   � ���Q���� 0 mapput mapPutQ RSR o   � ����� 0 _mailbox  S TUT o   � ����� 0 _filters  U V��V o   � �����  0 workingaccount workingAccount��  ��  P  f   � �C W��W L   � �XX m   � ���
�� boovtrue��  ��  ��  ��  �� 	0 indx3  ( m   ] ^���� ) n   ^ dYZY m   a c��
�� 
nmbrZ n  ^ a[\[ 2  _ a��
�� 
cobj\ o   ^ _���� 0 _filters  ��  ��  �� 	0 indx2   m   ' (����  n   ( 0]^] m   - /�
� 
nmbr^ n  ( -_`_ 2  + -�~
�~ 
cobj` n   ( +aba o   ) +�}�} 	0 _keys  b o   ( )�|�|  0 workingaccount workingAccount��  ��  �� 0 indx  � m    �{�{ � n    cdc m   	 �z
�z 
nmbrd n   	efe 2   	�y
�y 
cobjf n    ghg o    �x�x 	0 _keys  h o    �w�w 0 
_filtermap 
_filterMap��  � i�vi L   � �jj m   � ��u
�u boovfals�v  � klk l     �t�s�r�t  �s  �r  l mnm i  opo I      �qq�p�q  0 persistfilters persistFiltersq rsr o      �o�o 0 
_filtermap 
_filterMaps tut o      �n�n 	0 _name  u v�mv o      �l�l 0 _loc  �m  �p  p k     dww xyx O     z{z r    |}| b    ~~ b    ��� l   	��k�j� c    	��� 1    �i
�i 
home� m    �h
�h 
TEXT�k  �j  � o   	 
�g�g 0 _loc   o    �f�f 	0 _name  } o      �e�e 	0 _path  { m     ���                                                                                  MACS  alis    t  Macintosh HD               �n�NH+     G
Finder.app                                                       �z�(XW        ����  	                CoreServices    �n��      �(��       G   :   9  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  y ��� Q    ?���� r    ��� c    ��� o    �d�d 	0 _path  � m    �c
�c 
alis� o      �b�b 	0 _file  � R      �a��
�a .ascrerr ****      � ****� o      �`�` 0 _message  � �_��^
�_ 
errn� o      �]�] 0 _number  �^  � Z   ! ?���\�[� >  ! $��� o   ! "�Z�Z 0 _number  � m   " #�Y�Y��� l  ' ;���� I  ' ;�X��
�X .sysodlogaskr        TEXT� b   ' .��� b   ' ,��� b   ' *��� m   ' (�� ��� � F i l t e r   M a i l   e n c o u n t e r e d   a n   e r r o r   w i l e   t r y i n g   t o   s a v e   f i l t e r s   t o   f i l e :   "� o   ( )�W�W 0 _message  � m   * +�� ���  "   n u m b e r :  � o   , -�V�V 0 _number  � �U��
�U 
dflt� m   / 0�� ���  C a n c e l� �T��
�T 
btns� J   1 5�� ��� m   1 2�� ���  C o n t i n u e� ��S� m   2 3�� ���  C a n c e l�S  � �R��Q
�R 
disp� m   6 7�P�P  �Q  �  File not found   � ���  F i l e   n o t   f o u n d�\  �[  � ��� r   @ H��� n  @ F��� I   A F�O��N�O &0 filtermaptostring filterMapToString� ��M� o   A B�L�L 0 
_filtermap 
_filterMap�M  �N  �  f   @ A� o      �K�K 
0 output  � ��� r   I T��� I  I R�J��
�J .rdwropenshor       file� o   I J�I�I 	0 _path  � �H��G
�H 
perm� m   M N�F
�F boovtrue�G  � o      �E�E 0 _fileid _fileID� ��� I  U ^�D��
�D .rdwrwritnull���     ****� o   U V�C�C 
0 output  � �B��A
�B 
refn� o   Y Z�@�@ 0 _fileid _fileID�A  � ��?� I  _ d�>��=
�> .rdwrclosnull���     ****� o   _ `�<�< 0 _fileid _fileID�=  �?  n ��� l     �;�:�9�;  �:  �9  � ��� i  "��� I      �8��7�8 &0 filtermaptostring filterMapToString� ��6� o      �5�5 0 
_filtermap 
_filterMap�6  �7  � k    i�� ��� r     ��� m     �� ���  � o      �4�4 
0 output  � ��� r    ��� m    �� ���  � o      �3�3  0 sitewideoutput sitewideOutput� ��� r    ��� m    	�2
�2 boovfals� o      �1�1 $0 issitewideheader isSitewideHeader� ��� Y   `��0���/� k   [�� ��� r    %��� n    #��� 4     #�.�
�. 
cobj� o   ! "�-�- 0 indx  � n     ��� o     �,�, 	0 _keys  � o    �+�+ 0 
_filtermap 
_filterMap� o      �*�* 0 _account  � ��� r   & /��� I   & -�)��(�) 0 mapget mapGet� ��� o   ' (�'�' 0 _account  � ��&� o   ( )�%�% 0 
_filtermap 
_filterMap�&  �(  � o      �$�$  0 workingaccount workingAccount� ��#� Y   0[��"���!� k   AV��    r   A I n   A G 4   D G� 
�  
cobj o   E F�� 	0 indx2   n   A D o   B D�� 	0 _keys   o   A B��  0 workingaccount workingAccount o      �� 0 _mailbox   	
	 r   J S I   J Q��� 0 mapget mapGet  o   K L�� 0 _mailbox   � o   L M��  0 workingaccount workingAccount�  �   o      �� 0 _filters  
  Z   T e�� >  T Y n   T W m   U W�
� 
pcls o   T U�� 0 _filters   m   W X�
� 
list r   \ a J   \ _ � o   \ ]�� 0 _filters  �   o      �� 0 _filters  �  �   � Z   fV�  =  f m!"! o   f g�� 0 _mailbox  " o   g l�
�
 "0 psitewidemapkey pSiteWideMapKey k   p �## $%$ Z   p �&'�	�& H   p r(( o   p q�� $0 issitewideheader isSitewideHeader' k   u �)) *+* r   u �,-, b   u ~./. b   u |010 o   u v��  0 sitewideoutput sitewideOutput1 o   v {�� .0 psitewideheaderprefix pSiteWideHeaderPrefix/ o   | }�
� 
ret - o      ��  0 sitewideoutput sitewideOutput+ 2�2 r   � �343 m   � ��
� boovtrue4 o      � �  $0 issitewideheader isSitewideHeader�  �	  �  % 5��5 Y   � �6��78��6 k   � �99 :;: r   � �<=< n   � �>?> 4   � ���@
�� 
cobj@ o   � ����� 	0 indx3  ? o   � ����� 0 _filters  = o      ���� 0 _filter  ; A��A Z   � �BC��DB n   � �EFE o   � ����� 0 
_iscomment 
_isCommentF o   � ����� 0 _filter  C r   � �GHG b   � �IJI b   � �KLK o   � �����  0 sitewideoutput sitewideOutputL n   � �MNM o   � ����� 0 _linecontent _lineContentN o   � ����� 0 _filter  J o   � ���
�� 
ret H o      ����  0 sitewideoutput sitewideOutput��  D r   � �OPO b   � �QRQ o   � �����  0 sitewideoutput sitewideOutputR l  � �S����S b   � �TUT b   � �VWV b   � �XYX b   � �Z[Z b   � �\]\ b   � �^_^ b   � �`a` m   � �bb �cc " s e n d e r C o n t a i n s :   "a n   � �ded o   � ����� "0 _sendercontains _senderContainse o   � ����� 0 _filter  _ m   � �ff �gg $ "   t a r g e t A c c o u n t :   "] n   � �hih o   � �����  0 _targetaccount _targetAccounti o   � ����� 0 _filter  [ m   � �jj �kk $ "   t a r g e t M a i l b o x :   "Y n   � �lml o   � �����  0 _targetmailbox _targetMailboxm o   � ����� 0 _filter  W m   � �nn �oo  "U o   � ���
�� 
ret ��  ��  P o      ����  0 sitewideoutput sitewideOutput��  �� 	0 indx3  7 m   � ����� 8 n   � �pqp m   � ���
�� 
nmbrq n  � �rsr 2  � ���
�� 
cobjs o   � ����� 0 _filters  ��  ��  �    k   �Vtt uvu Z  � �wx����w >  � �yzy o   � ����� 0 _mailbox  z m   � �{{ �||  n u l lx r   � �}~} b   � �� o   � ����� 
0 output  � l  � ������� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 pheaderprefix pHeaderPrefix� m   � ��� ��� "   t a r g e t A c c o u n t :   "� o   � ����� 0 _account  � m   � ��� ��� $ "   t a r g e t M a i l b o x :   "� o   � ����� 0 _mailbox  � m   � ��� ���  "� o   � ���
�� 
ret ��  ��  ~ o      ���� 
0 output  ��  ��  v ��� Y   �P�������� k  K�� ��� r  ��� n  ��� 4  ���
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
0 output  ��  �  �" 	0 indx2  � m   3 4���� � n   4 <��� m   9 ;��
�� 
nmbr� n  4 9��� 2  7 9��
�� 
cobj� n   4 7��� o   5 7���� 	0 _keys  � o   4 5����  0 workingaccount workingAccount�!  �#  �0 0 indx  � m    ���� � n    ��� m    ��
�� 
nmbr� n   ��� 2   ��
�� 
cobj� n    ��� o    ���� 	0 _keys  � o    ���� 0 
_filtermap 
_filterMap�/  � ��� l aa��������  ��  ��  � ��� r  af��� b  ad��� o  ab���� 
0 output  � o  bc����  0 sitewideoutput sitewideOutput� o      ���� 
0 output  � ���� L  gi�� o  gh���� 
0 output  ��  � ��� l     ��������  ��  ��  � ��� i  #&��� I      ������� 0 getnewfilter getNewFilter� ��� o      ���� 0 asender aSender� ���� o      ���� 0 
themessage 
theMessage��  ��  � k     ��� ��� r     ��� m     ��
�� 
null� o      ���� 0 
_newfilter 
_newFilter� ��� l   �	 			  T    �		 k   	 �		 			 l  	 	��		��  	 U O Ask user for new filter target mailbox (and if a new filter should be created)   	 �				 �   A s k   u s e r   f o r   n e w   f i l t e r   t a r g e t   m a i l b o x   ( a n d   i f   a   n e w   f i l t e r   s h o u l d   b e   c r e a t e d )	 	
		
 r   	 2			 I  	 0��		
�� .sysodlogaskr        TEXT	 b   	 			 b   	 			 b   	 			 b   	 			 m   	 
		 �		 : N o   f i l t e r   e x i s t s   f o r   s e n d e r   '	 o   
 ���� 0 asender aSender	 m    		 �		 @ ' ,   w o u l d   y o u   l i k e   t o   c r e a t e   o n e ?	 o    ��
�� 
ret 	 m    		 �		 J P l e a s e   e n t e r   t h e   d e s t i n a t i o n   m a i l b o x :	 ��		
�� 
dtxt	 o    ���� 40 pdefaultnewfiltermailbox pDefaultNewFilterMailbox	 ��	 	!
�� 
btns	  J    	"	" 	#	$	# m    	%	% �	&	&  C a n c e l	$ 	'	(	' m    	)	) �	*	*  S k i p	( 	+��	+ m    	,	, �	-	-  O K��  	! ��	.	/
�� 
dflt	. m     	0	0 �	1	1  O K	/ ��	2	3
�� 
appr	2 m   ! "	4	4 �	5	5 $ C r e a t e   N e w   F i l t e r ?	3 ��	6	7
�� 
disp	6 m   # $��
�� stic   	7 ��	8��
�� 
givu	8 m   ' *���� <��  	 o      ���� 0 _result  	 	9��	9 l  3 �	:	;	<	: Z   3 �	=	>	?	@	= =  3 :	A	B	A n   3 8	C	D	C 1   4 8��
�� 
gavu	D o   3 4���� 0 _result  	B m   8 9��
�� boovtrue	> k   = >	E	E 	F	G	F l  = =��	H	I��  	H , & if the user didn't respond, then bail   	I �	J	J L   i f   t h e   u s e r   d i d n ' t   r e s p o n d ,   t h e n   b a i l	G 	K��	K  S   = >��  	? 	L	M	L =  A J	N	O	N n   A F	P	Q	P 1   B F��
�� 
bhit	Q o   A B���� 0 _result  	O m   F I	R	R �	S	S  S k i p	M 	T�	T k   M N	U	U 	V	W	V l  M M�~	X	Y�~  	X 7 1 if the user wants to skip this sender, then bail   	Y �	Z	Z b   i f   t h e   u s e r   w a n t s   t o   s k i p   t h i s   s e n d e r ,   t h e n   b a i l	W 	[�}	[  S   M N�}  �  	@ k   Q �	\	\ 	]	^	] l  Q Q�|	_	`�|  	_ J D if the user wants to continue, let's verify the target mailbox name   	` �	a	a �   i f   t h e   u s e r   w a n t s   t o   c o n t i n u e ,   l e t ' s   v e r i f y   t h e   t a r g e t   m a i l b o x   n a m e	^ 	b	c	b r   Q X	d	e	d n   Q V	f	g	f 1   R V�{
�{ 
ttxt	g o   Q R�z�z 0 _result  	e o      �y�y  0 _targetmailbox _targetMailbox	c 	h	i	h r   Y d	j	k	j c   Y b	l	m	l l  Y ^	n�x�w	n n   Y ^	o	p	o 2  Z ^�v
�v 
cwor	p o   Y Z�u�u  0 _targetmailbox _targetMailbox�x  �w  	m m   ^ a�t
�t 
TEXT	k o      �s�s 	0 _test  	i 	q�r	q l  e �	r	s	t	r Z   e �	u	v�q	w	u =  e j	x	y	x o   e f�p�p 	0 _test  	y m   f i	z	z �	{	{  	v k   m �	|	| 	}	~	} l  m m�o		��o  	 _ Y empty mailbox name can not be used...  display an alert and let the repeat start us over   	� �	�	� �   e m p t y   m a i l b o x   n a m e   c a n   n o t   b e   u s e d . . .     d i s p l a y   a n   a l e r t   a n d   l e t   t h e   r e p e a t   s t a r t   u s   o v e r	~ 	��n	� I  m ��m	�	�
�m .sysodlogaskr        TEXT	� m   m p	�	� �	�	� R T h e   d e s t i n a t i o n   m a i l b o x   c a n   n o t   b e   b l a n k .	� �l	�	�
�l 
btns	� J   q v	�	� 	��k	� m   q t	�	� �	�	�  O K�k  	� �j	�	�
�j 
dflt	� m   w z	�	� �	�	�  O K	� �i	�	�
�i 
appr	� m   { ~	�	� �	�	� $ E m p t y   M a i l b o x   N a m e	� �h	�	�
�h 
disp	� m    ��g
�g stic    	� �f	��e
�f 
givu	� m   � ��d�d 
�e  �n  �q  	w k   � �	�	� 	�	�	� l  � ��c	�	��c  	� � � the mailbox name is okay, so confirm with the user that the new filter info is correct (and allow them to change the mailbox or sender info   	� �	�	�   t h e   m a i l b o x   n a m e   i s   o k a y ,   s o   c o n f i r m   w i t h   t h e   u s e r   t h a t   t h e   n e w   f i l t e r   i n f o   i s   c o r r e c t   ( a n d   a l l o w   t h e m   t o   c h a n g e   t h e   m a i l b o x   o r   s e n d e r   i n f o	� 	�	�	� r   � �	�	�	� n  � �	�	�	� I   � ��b	��a�b >0 extractemailaddressfromsender extractEmailAddressFromSender	� 	��`	� o   � ��_�_ 0 asender aSender�`  �a  	�  f   � �	� o      �^�^ 0 _targetsender _targetSender	� 	�	�	� l  � ��]�\�[�]  �\  �[  	� 	�	�	� r   � �	�	�	� n  � �	�	�	� I   � ��Z�Y�X�Z 0 	newfilter 	newFilter�Y  �X  	�  f   � �	� o      �W�W 0 _filter  	� 	�	�	� O   � �	�	�	� l  � �	�	�	�	� r   � �	�	�	� m   � �	�	� �	�	�  G r o k e r s	� n      	�	�	� o   � ��V�V  0 _targetaccount _targetAccount	� o   � ��U�U 0 _filter  	� . (name of account of mailbox of theMessage   	� �	�	� P n a m e   o f   a c c o u n t   o f   m a i l b o x   o f   t h e M e s s a g e	� m   � �	�	��                                                                                  emal  alis    F  Macintosh HD               �n�NH+     fMail.app                                                        *�-q"        ����  	                Applications    �n��      �-ł       f  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  	� 	�	�	� r   � �	�	�	� J   � �	�	� 	��T	� o   � ��S�S 0 _targetsender _targetSender�T  	� n      	�	�	� o   � ��R�R "0 _sendercontains _senderContains	� o   � ��Q�Q 0 _filter  	� 	�	�	� r   � �	�	�	� o   � ��P�P  0 _targetmailbox _targetMailbox	� n      	�	�	� o   � ��O�O  0 _targetmailbox _targetMailbox	� o   � ��N�N 0 _filter  	� 	�	�	� r   � �	�	�	� n  � �	�	�	� I   � ��M	��L�M 0 
editfilter 
editFilter	� 	��K	� o   � ��J�J 0 _filter  �K  �L  	�  f   � �	� o      �I�I 0 
_newfilter 
_newFilter	� 	��H	�  S   � ��H  	s - ' Mailbox name empty else statement ends   	t �	�	� N   M a i l b o x   n a m e   e m p t y   e l s e   s t a t e m e n t   e n d s�r  	; ' ! Button pressed if statement ends   	< �	�	� B   B u t t o n   p r e s s e d   i f   s t a t e m e n t   e n d s��  	   Main repeat ends	   	 �	�	� $   M a i n   r e p e a t   e n d s 	� 	��G	� L   � �	�	� o   � ��F�F 0 
_newfilter 
_newFilter�G  � 	�	�	� l     �E�D�C�E  �D  �C  	� 	�	�	� i  '*	�	�	� I      �B	��A�B >0 extractemailaddressfromsender extractEmailAddressFromSender	� 	��@	� o      �?�? 0 _sender  �@  �A  	� k     J	�	� 	�	�	� r     	�	�	� [     	�	�	� l    		��>�=	� I    	�<�;	�
�< .sysooffslong    ��� null�;  	� �:	�	�
�: 
psof	� m    	�	� �	�	�  <	� �9	��8
�9 
psin	� o    �7�7 0 _sender  �8  �>  �=  	� m   	 
�6�6 	� o      �5�5 
0 _start  	� 	�	�	� r    	�	�	� \    	�	�	� l   	��4�3	� I   �2�1	�
�2 .sysooffslong    ��� null�1  	� �0	�	�
�0 
psof	� m    	�	� �	�	�  >	� �/	��.
�/ 
psin	� o    �-�- 0 _sender  �.  �4  �3  	� m    �,�, 	� o      �+�+ 0 _end  	� 	�	�	� Z    G	�	��*�)	� F    '
 

  ?    


 o    �(�( 
0 _start  
 m    �'�' 
 ?   " %


 o   " #�&�& 0 _end  
 m   # $�%�% 	� Z   * C

�$

 B   * -
	


	 o   * +�#�# 
0 _start  

 o   + ,�"�" 0 _end  
 L   0 >

 c   0 =


 l  0 ;
�!� 
 n   0 ;


 7  1 ;�


� 
cha 
 o   5 7�� 
0 _start  
 o   8 :�� 0 _end  
 o   0 1�� 0 _sender  �!  �   
 m   ; <�
� 
TEXT�$  
 L   A C

 m   A B

 �

  �*  �)  	� 
�
 L   H J

 o   H I�� 0 _sender  �  	� 


 l     ����  �  �  
 


 i  +.


 I      �
�� 0 
editfilter 
editFilter
 
�
 o      �� 0 _filter  �  �  
 k    6
 
  
!
"
! Q    3
#
$
%
# k   �
&
& 
'
(
' r    
)
*
) n    
+
,
+ o    ��  0 _targetmailbox _targetMailbox
, o    �� 0 _filter  
* o      ��  0 _targetmailbox _targetMailbox
( 
-
.
- Z  	 
/
0��
/ =  	 
1
2
1 o   	 
��  0 _targetmailbox _targetMailbox
2 m   
 �
� 
null
0 r    
3
4
3 m    
5
5 �
6
6  
4 o      �
�
  0 _targetmailbox _targetMailbox�  �  
. 
7
8
7 r    
9
:
9 n    
;
<
; 4    �	
=
�	 
cobj
= m    �� 
< n    
>
?
> o    �� "0 _sendercontains _senderContains
? o    �� 0 _filter  
: o      �� 0 _targetsender _targetSender
8 
@
A
@ l     ����  �  �  
A 
B�
B l   �
C
D
E
C T    �
F
F l  %�
G
H
I
G k   %�
J
J 
K
L
K l  % %� 
M
N�   
M + % repeat until the info is all correct   
N �
O
O J   r e p e a t   u n t i l   t h e   i n f o   i s   a l l   c o r r e c t
L 
P
Q
P Z   % <
R
S��
T
R =  % *
U
V
U n   % (
W
X
W o   & (����  0 _targetaccount _targetAccount
X o   % &���� 0 _filter  
V m   ( )
Y
Y �
Z
Z  
S r   - 0
[
\
[ m   - .
]
] �
^
^  .
\ o      ���� 0 
accountmsg 
accountMsg��  
T r   3 <
_
`
_ b   3 :
a
b
a b   3 8
c
d
c m   3 4
e
e �
f
f    o f   a c c o u n t   '
d n   4 7
g
h
g o   5 7����  0 _targetaccount _targetAccount
h o   4 5���� 0 _filter  
b m   8 9
i
i �
j
j  ' .
` o      ���� 0 
accountmsg 
accountMsg
Q 
k
l
k r   = r
m
n
m I  = p��
o
p
�� .sysodlogaskr        TEXT
o b   = L
q
r
q b   = J
s
t
s b   = H
u
v
u b   = F
w
x
w b   = D
y
z
y b   = B
{
|
{ b   = @
}
~
} m   = >

 �
�
� r T h i s   f i l t e r   w i l l   m o v e   a n y   m e s s a g e   w h o s e   s e n d e r   c o n t a i n s   '
~ o   > ?���� 0 _targetsender _targetSender
| m   @ A
�
� �
�
� $ '   t o   t h e   m a i l b o x   '
z o   B C����  0 _targetmailbox _targetMailbox
x m   D E
�
� �
�
�  '
v o   F G���� 0 
accountmsg 
accountMsg
t o   H I��
�� 
ret 
r m   J K
�
� �
�
�   I s   t h i s   c o r r e c t ?
p ��
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
n o      ���� 0 _result  
l 
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
���
�
� =  � �
�
�
� o   � ����� 	0 _test  
� m   � �
�
� �
�
�  
� k   �
�
� 
�
�
� l  � ��� ��    Y S empty sender can not be used...  display an alert and let the repeat start us over    � �   e m p t y   s e n d e r   c a n   n o t   b e   u s e d . . .     d i s p l a y   a n   a l e r t   a n d   l e t   t h e   r e p e a t   s t a r t   u s   o v e r
� �� I  ���
�� .sysodlogaskr        TEXT m   � � � P T h e   s e n d e r   i n f o r m a t i o n   c a n   n o t   b e   b l a n k . ��	
�� 
btns J   � �

 �� m   � � �  O K��  	 ��
�� 
dflt m   � � �  O K ��
�� 
appr m    �  E m p t y   S e n d e r ��
�� 
disp m  	��
�� stic     ����
�� 
givu m  ���� 
��  ��  ��  
�  S  ��  ��  
�  S  ��  ��  
�  = %. n  %* 1  &*��
�� 
bhit o  %&���� 0 _result   m  *- �    M o d i f y   M a i l b o x !��! k  1�"" #$# l 11��%&��  %   Modify Mailbox?   & �''     M o d i f y   M a i l b o x ?$ (��( T  1�)) k  6�** +,+ r  6i-.- I 6g��/0
�� .sysodlogaskr        TEXT/ m  6911 �22 Z P l e a s e   e n t e r   t h e   d e s i r e d   d e s t i n a t i o n   m a i l b o x :0 ��34
�� 
dtxt3 o  <=����  0 _targetmailbox _targetMailbox4 ��56
�� 
btns5 J  >I77 898 m  >A:: �;;  C a n c e l9 <=< m  AD>> �??  B a c k= @��@ m  DGAA �BB  O K��  6 ��CD
�� 
dfltC m  LOEE �FF  O KD ��GH
�� 
apprG m  RUII �JJ  M o d i f y   M a i l b o xH ��KL
�� 
dispK m  X[��
�� stic   L ��M��
�� 
givuM m  ^a���� <��  . o      ���� 0 _result  , N��N Z  j�OP��QO F  j�RSR = jqTUT n  joVWV 1  ko��
�� 
gavuW o  jk���� 0 _result  U m  op��
�� boovfalsS > t}XYX n  tyZ[Z 1  uy��
�� 
bhit[ o  tu���� 0 _result  Y m  y|\\ �]]  B a c kP k  ��^^ _`_ r  ��aba n  ��cdc 1  ����
�� 
ttxtd o  ������ 0 _result  b o      ����  0 _targetmailbox _targetMailbox` efe r  ��ghg c  ��iji l ��k����k n  ��lml 2 ����
�� 
cworm o  ������  0 _targetmailbox _targetMailbox��  ��  j m  ����
�� 
TEXTh o      ���� 	0 _test  f n��n Z  ��op��qo = ��rsr o  ������ 	0 _test  s m  ��tt �uu  p k  ��vv wxw l ����yz��  y _ Y empty mailbox name can not be used...  display an alert and let the repeat start us over   z �{{ �   e m p t y   m a i l b o x   n a m e   c a n   n o t   b e   u s e d . . .     d i s p l a y   a n   a l e r t   a n d   l e t   t h e   r e p e a t   s t a r t   u s   o v e rx |��| I ����}~
�� .sysodlogaskr        TEXT} m  �� ��� R T h e   d e s t i n a t i o n   m a i l b o x   c a n   n o t   b e   b l a n k .~ ����
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
��  ��  ��  q  S  ����  ��  Q  S  ����  ��  ��  
� k  ���� ��� l ��������  �   All info is correct   � ��� (   A l l   i n f o   i s   c o r r e c t� ��� r  ����� J  ���� ���� o  ������ 0 _targetsender _targetSender��  � n      ��� o  ������ "0 _sendercontains _senderContains� o  ������ 0 _filter  � ��� r  ����� o  ������  0 _targetmailbox _targetMailbox� n      ��� o  ������  0 _targetmailbox _targetMailbox� o  ������ 0 _filter  � ��� r  ����� H  ���� E  ����� o  ������ 0 _targetsender _targetSender� o  ������ D0  psitewidesendercontainsindicator  pSiteWideSenderContainsIndicator� n      ��� o  ���� 0 _issitewide _isSitewide� o  ���~�~ 0 _filter  � ��}�  S  ���}  ��  
H   Confirmation dialog   
I ��� (   C o n f i r m a t i o n   d i a l o g
D &   Confirmation dialog repeat ends   
E ��� @   C o n f i r m a t i o n   d i a l o g   r e p e a t   e n d s�  
$ R      �|��
�| .ascrerr ****      � ****� o      �{�{ 0 _message  � �z��y
�z 
errn� o      �x�x 0 _number  �y  
% Z  3���w�� = ��� o  �v�v 0 _number  � m  �u�u��� L  
�� m  
�t
�t 
null�w  � I 3�s��
�s .sysodlogaskr        TEXT� b  ��� b  ��� b  ��� m  �� ��� F F i l t e r   M a i l   e n c o u n t e r e d   a n   e r r o r :   "� o  �r�r 0 _message  � m  �� ���  "   n u m b e r :  � o  �q�q 0 _number  � �p��
�p 
dflt� m   �� ���  C a n c e l� �o��
�o 
btns� J  !)�� ��� m  !$�� ���  C o n t i n u e� ��n� m  $'�� ���  C a n c e l�n  � �m��l
�m 
disp� m  ,-�k�k  �l  
" ��j� L  46�� o  45�i�i 0 _filter  �j  
 ��� l     �h�g�f�h  �g  �f  � ��� i  /2��� I      �e�d�c�e 0 	newfilter 	newFilter�d  �c  � L     �� K     �� �b���b "0 _sendercontains _senderContains� m    �a
�a 
null� �`���`  0 _targetaccount _targetAccount� m    �_
�_ 
null� �^���^  0 _targetmailbox _targetMailbox� m    �]
�] 
null� �\���\ 0 _issitewide _isSitewide� m    �[
�[ boovfals� �Z���Z 0 
_iscomment 
_isComment� m   	 
�Y
�Y boovfals� �X���X 0 	_isheader 	_isHeader� m    �W
�W boovfals� �V��U�V 0 _linecontent _lineContent� m    �� ���  �U  � ��� l     �T�S�R�T  �S  �R  � ��� i  36��� I      �Q�P�O�Q 0 newmap newMap�P  �O  � L     	�� K     �� �N���N 	0 _keys  � J    �M�M  � �L��K�L 0 _values  � J    �J�J  �K  � ��� l     �I�H�G�I  �H  �G  � ��� i  7:��� I      �F �E�F 0 mapput mapPut   o      �D�D 0 _key    o      �C�C 
0 _value   �B o      �A�A 0 _map  �B  �E  � k     *  r     	
	 I     	�@�?�@ 0 indexof indexOf  o    �>�> 0 _key   �= n     o    �<�< 	0 _keys   o    �;�; 0 _map  �=  �?  
 o      �:�: 0 _idx   �9 Z    *�8 =    o    �7�7 0 _idx   m    �6�6�� k      r     o    �5�5 0 _key   n        ;     n     o    �4�4 	0 _keys   o    �3�3 0 _map    �2  r    !"! o    �1�1 
0 _value  " n      #$#  ;    $ n    %&% o    �0�0 0 _values  & o    �/�/ 0 _map  �2  �8   r   " *'(' o   " #�.�. 
0 _value  ( n      )*) 4   & )�-+
�- 
cobj+ o   ' (�,�, 0 _idx  * n   # &,-, o   $ &�+�+ 0 _values  - o   # $�*�* 0 _map  �9  � ./. l     �)�(�'�)  �(  �'  / 010 i  ;>232 I      �&4�%�& 0 mapget mapGet4 565 o      �$�$ 0 _key  6 7�#7 o      �"�" 0 _map  �#  �%  3 k     88 9:9 r     ;<; n    	=>= I    	�!?� �! 0 indexof indexOf? @A@ o    �� 0 _key  A B�B n    CDC o    �� 	0 _keys  D o    �� 0 _map  �  �   >  f     < o      �� 0 _idx  : E�E Z    FG�HF =   IJI o    �� 0 _idx  J m    ����G L    KK m    �
� 
null�  H L    LL n    MNM 4    �O
� 
cobjO o    �� 0 _idx  N n    PQP o    �� 0 _values  Q o    �� 0 _map  �  1 RSR l     ����  �  �  S TUT i  ?BVWV I      �X�� 0 	mapappend 	mapAppendX YZY o      �� 0 _key  Z [\[ o      �� 
0 _value  \ ]�
] o      �	�	 0 _map  �
  �  W k     ]^^ _`_ r     aba n    	cdc I    	�e�� 0 indexof indexOfe fgf o    �� 0 _key  g h�h n    iji o    �� 	0 _keys  j o    �� 0 _map  �  �  d  f     b o      �� 0 _idx  ` k�k Z    ]lm� nl =   opo o    ���� 0 _idx  p m    ������m k    qq rsr r    tut o    ���� 0 _key  u n      vwv  ;    w n    xyx o    ���� 	0 _keys  y o    ���� 0 _map  s z��z r    {|{ o    ���� 
0 _value  | n      }~}  ;    ~ n    � o    ���� 0 _values  � o    ���� 0 _map  ��  �   n k   " ]�� ��� r   " +��� N   " )�� l  " (������ n   " (��� 4   % (���
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
cobj� o   Z [���� 0 _idx  � n   V Y��� o   W Y���� 0 _values  � o   V W���� 0 _map  ��  ��  �  U ��� l     ��������  ��  ��  � ��� i  CF��� I      ������� 0 	mapremove 	mapRemove� ��� o      ���� 0 _key  � ���� o      ���� 0 _map  ��  ��  � k     5�� ��� r     ��� n    	��� I    	������� 0 indexof indexOf� ��� o    ���� 0 _key  � ���� n    ��� o    ���� 	0 _keys  � o    ���� 0 _map  ��  ��  �  f     � o      ���� 0 _idx  � ���� Z    5������ =   ��� o    ���� 0 _idx  � m    ������� L    �� m    ��
�� boovfals��  � k    5�� ��� r    $��� n    ��� I     �������  0 removelistitem removeListItem� ��� o    ���� 0 _idx  � ���� n    ��� o    ���� 	0 _keys  � o    ���� 0 _map  ��  ��  �  f    � n      ��� o   ! #���� 	0 _keys  � o     !���� 0 _map  � ��� r   % 2��� n  % .��� I   & .�������  0 removelistitem removeListItem� ��� o   & '���� 0 _idx  � ���� n   ' *��� o   ( *���� 0 _values  � o   ' (���� 0 _map  ��  ��  �  f   % &� n      ��� o   / 1���� 0 _values  � o   . /���� 0 _map  � ���� L   3 5�� m   3 4��
�� boovtrue��  ��  � ��� l     ��������  ��  ��  � ��� i  GJ   I      ������ 0 indexof indexOf  o      ���� 0 _element   �� o      ���� 	0 _list  ��  ��   k     :  Z     7	
����	 F      >     o     ���� 	0 _list   J    ����   E    
 o    ���� 	0 _list   o    	���� 0 _element  
 Y    3���� Z   .���� =   % n    # 4     #��
�� 
cobj o   ! "���� 0 _idx   o     ���� 	0 _list   o   # $���� 0 _element   L   ( * o   ( )���� 0 _idx  ��  ��  �� 0 _idx   m    ����  I   ����
�� .corecnte****       **** n    2   ��
�� 
cobj o    ���� 	0 _list  ��  ��  ��  ��   �� L   8 :   m   8 9��������  � !"! l     ��������  ��  ��  " #$# i  KN%&% I      ��'����  0 removelistitem removeListItem' ()( o      ���� 0 indx  ) *��* o      ���� 	0 _list  ��  ��  & k     �++ ,-, Z    ./����. >    010 n     232 m    ��
�� 
pcls3 o     ���� 	0 _list  1 m    ��
�� 
list/ L    
44 o    	���� 	0 _list  ��  ��  - 565 r    787 n    9:9 1    ��
�� 
leng: o    ���� 	0 _list  8 o      ���� 0 len  6 ;<; Z   !=>��~= =   ?@? o    �}�} 0 len  @ m    �|�|  > L    AA o    �{�{ 	0 _list  �  �~  < BCB Z  " 1DE�z�yD =  " %FGF o   " #�x�x 0 indx  G m   # $�w�w E L   ( -HH n   ( ,IJI 1   ) +�v
�v 
restJ o   ( )�u�u 	0 _list  �z  �y  C KLK Z  2 EMN�t�sM =  2 5OPO o   2 3�r�r 0 indx  P o   3 4�q�q 0 len  N L   8 AQQ l  8 @R�p�oR n   8 @STS 1   = ?�n
�n 
rvseT l  8 =U�m�lU n   8 =VWV 1   ; =�k
�k 
restW l  8 ;X�j�iX n   8 ;YZY 1   9 ;�h
�h 
rvseZ o   8 9�g�g 	0 _list  �j  �i  �m  �l  �p  �o  �t  �s  L [\[ Z  F R]^�f�e] ?   F I_`_ o   F G�d�d 0 indx  ` o   G H�c�c 0 len  ^ L   L Naa o   L M�b�b 	0 _list  �f  �e  \ bcb Z  S _de�a�`d B   S Vfgf o   S T�_�_ 0 indx  g m   T U�^�^ e L   Y [hh o   Y Z�]�] 	0 _list  �a  �`  c iji r   ` oklk n   ` mmnm 7  a m�\op
�\ 
cobjo m   e g�[�[ p l  h lq�Z�Yq \   h lrsr o   i j�X�X 0 indx  s m   j k�W�W �Z  �Y  n o   ` a�V�V 	0 _list  l o      �U�U 	0 parta  j tut r   p ~vwv n   p |xyx 7  q |�Tz{
�T 
cobjz l  u y|�S�R| [   u y}~} o   v w�Q�Q 0 indx  ~ m   w x�P�P �S  �R  {  ;   z {y o   p q�O�O 	0 _list  w o      �N�N 	0 partb  u �M L    ��� b    ���� o    ��L�L 	0 parta  � o   � ��K�K 	0 partb  �M  $ ��J� l     �I�H�G�I  �H  �G  �J       -�F�   � � � � �� ��� ��������������������������������F  � +�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ������E "0 pfilterfilename pFilterFileName�D *0 pfilterfilelocation pFilterFileLocation�C 40 pdefaultnewfiltermailbox pDefaultNewFilterMailbox�B &0 pfilterfileheader pFilterFileHeader�A .0 psitewideheaderprefix pSiteWideHeaderPrefix�@ 0 pheaderprefix pHeaderPrefix�?  0 pcommentprefix pCommentPrefix�> D0  psitewidesendercontainsindicator  pSiteWideSenderContainsIndicator�= 0 pfilterkeys pFilterKeys�< "0 psitewidemapkey pSiteWideMapKey�; 0 
pfiltermap 
pFilterMap�: (0 pworkingfilterlist pWorkingFilterList�9  0 plastparsedate pLastParseDate
�8 .aevtoappnull  �   � ****�7 0 init  �6 0 checkmoddate checkModDate�5  0 getfiltersfile getFiltersFile�4 0 readfile readFile�3 0 parsecontent parseContent�2 0 	parseline 	parseLine�1 &0 sanitycheckfilter sanityCheckFilter�0 
0 filter  �/ 0 
findfilter 
findFilter�. 0 isfilter isFilter�- 0 processfilter processFilter�, 0 createmailbox createMailbox�+ 0 
sortfiters 
sortFiters�* 0 insertfilter insertFilter�) .0 makeworkingfilterlist makeWorkingFilterList�( *0 removefilterfrommap removeFilterFromMap�'  0 persistfilters persistFilters�& &0 filtermaptostring filterMapToString�% 0 getnewfilter getNewFilter�$ >0 extractemailaddressfromsender extractEmailAddressFromSender�# 0 
editfilter 
editFilter�" 0 	newfilter 	newFilter�! 0 newmap newMap�  0 mapput mapPut� 0 mapget mapGet� 0 	mapappend 	mapAppend� 0 	mapremove 	mapRemove� 0 indexof indexOf�  0 removelistitem removeListItem� ���h #   F i l t e r   M a i l   F i l t e r s . t x t  #    #   T h e   f i l t e r   l i s t   f o r   t h e   F i l t e r   M a i l   s c r i p t .  #   V e r s i o n   3 . 0   b y   L e v i   B r o w n   < m a i l t o : l e v i @ g r o k e r s . n e t >  #  #   T h i s   f i l e   s h o u l d   b e   l o c a t e d   i n   t h e   " < h o m e   d i r e c t o r y > / L i b r a r y / P r e f e r e n c e s "  #   d i r e c t o r y   a n d   s h o u l d   b e   n a m e d   " F i l t e r   M a i l   F i l t e r s . t x t " .  #   L i n e s   s t a r t i n g   w i t h   t h e   p o u n d   c h a r a c t e r   ' # '   a n d   e m p t y   l i n e s   a r e   i g n o r e d .  #  #   T h e   f o r m a t   o f   a   f i l t e r   l i n e   s h o u l d   b e   a s   f o l l o w s :  #   s e n d e r C o n t a i n s :   " < s e n d e r > "   t a r g e t A c c o u n t :   " < a c c o u n t > "   t a r g e t M a i l b o x :   " < m a i l b o x > "  #   W h e r e :  #   < s e n d e r >   i s   a n y   t e x t   i n   t h e   s e n d e r   h e a d e r   t o   m a t c h   a g a i n s t   ( c a s e   i n s e n s i t i v e ) .  #   < a c c o u n t >   i s   t h e   n a m e   o f   t h e   a c c o u n t   w h e r e   t h e   m a i l b o x   r e s i d e s .     " "   f o r   l o c a l   m a i l b o x e s .  #   < m a i l b o x >   t h e   " p a t h "   t o   a   m a i l b o x .  #   F o r   e x a m p l e :  #   s e n d e r C o n t a i n s :   " n a s a . g o v "   t a r g e t A c c o u n t :   " "   t a r g e t M a i l b o x :   " A r c h i v e / L i s t s / N A S A "  #   w i l l   f i l e   a n y   m a i l   w h e r e   t h e   s e n d e r   h e a d e r   c o n t a i n s   " n a s a . g o v "   t o   m y   l o c a l   m a i l b o x  #   l o c a t e d   a t   " O n   M y   M a c / A r c h i v e / L i s t s / N A S A "   i n   t h e   M a i l   a p p l i c a t i o n . � ����  0 sendercontains senderContains� � ��� 0 _key  � ���� 0 _length  � �  � ���� 0 targetaccount targetAccount� � ��� 0 _key  � ���� 0 _length  � �  � ���� 0 targetmailbox targetMailbox� � ��� 0 _key  � ���� 0 _length  � �  �  � �
�	�
  �	  � ���  �  � � ������
� .aevtoappnull  �   � ****�  �  � �� 0 
themessage 
theMessage� �� ������������������Y����������������������� 0 init  �  0 checkmoddate checkModDate
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
0 filter  �� "0 gpersistfilters gPersistFilters��  0 persistfilters persistFilters� �)j+  Ob  � 
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
0 _value  � ������~����~�}�|�{�z�y�x�w�v�u�t�s�r�q,E�p�o�n�m�l�k�j
�� 
null
�� 
cwor
�� 
TEXT�� 0 	newfilter 	newFilter� 0 
_iscomment 
_isComment�~ 0 _linecontent _lineContent�} ,0 gfoundsitewideheader gFoundSiteWideHeader�| 0 _issitewide _isSitewide�{ 0 	_isheader 	_isHeader
�z 
list
�y 
cobj
�x 
nmbr�w 0 _key  �v 0 _length  
�u 
psof
�t 
psin�s 
�r .sysooffslong    ��� null
�q 
cha �p  0 sendercontains senderContains�o "0 _sendercontains _senderContains�n 0 targetaccount targetAccount�m  0 _targetaccount _targetAccount�l 0 targetmailbox targetMailbox�k  0 _targetmailbox _targetMailbox�j &0 sanitycheckfilter sanityCheckFilter����E�O��-�&E�O���)j+ E�O�b   e��,FO���,FO� 
e��,FY hYh�b   e��,FOe��,FOeE�O�Y �b   
e��,FY hOb  �&E�O(k��-�,Ekh ��/E�O��,E�O��,E�O*�a �a  E�O�j ���E�O�[a \[Z�\Zi2�&E�O*�a a �a  E�O�[a \[Z�k\Zi2�&E�O*�a a �a  E�O�k �[a \[Zk\Z�k2�&E�Y a E�O�[a \[Z�\Zi2�&E�O�b  a ,  #�kv�a ,FO�b   
e��,FY hY hO�b  a ,  ��a ,FY hO�b  a ,  ��a ,FY hY h[OY��O)�k+ E�Y hO�� �i��h�g���f�i &0 sanitycheckfilter sanityCheckFilter�h �e��e �  �d�d 0 _filter  �g  � �c�c 0 _filter  � �b�a�`�_�^�]�\�[�b 0 
_iscomment 
_isComment�a 0 	_isheader 	_isHeader
�` 
bool�_ 0 _issitewide _isSitewide�^ "0 _sendercontains _senderContains
�] 
null�\  0 _targetaccount _targetAccount�[  0 _targetmailbox _targetMailbox�f ?��,E
 ��,E�&
 ��,E�&
 	��,��&
 	��,��&
 	��,��& �Y �� �Z��Y�X���W�Z 
0 filter  �Y �V��V �  �U�T�U 0 asender aSender�T 0 
themessage 
theMessage�X  � �S�R�Q�S 0 asender aSender�R 0 
themessage 
theMessage�Q 0 _filter  � �P�O�N�M�L�K�J�P 0 
findfilter 
findFilter
�O 
null�N 0 processfilter processFilter�M 0 getnewfilter getNewFilter�L 0 insertfilter insertFilter�K .0 makeworkingfilterlist makeWorkingFilterList�J "0 gpersistfilters gPersistFilters�W V)�k+  E�O�� )��l+ Y >)��l+ E�O�� -)�b  
l+ O)b  
k+ Ec  OeE�O)��l+ Y h� �I,�H�G���F�I 0 
findfilter 
findFilter�H �E��E �  �D�D 0 asender aSender�G  � �C�B�A�C 0 asender aSender�B 0 indx  �A 0 _filter  � �@�?�>�=�<
�@ 
cobj
�? 
nmbr�> "0 _sendercontains _senderContains�= 0 isfilter isFilter
�< 
null�F 9 4kb  �-�,Ekh b  �/E�O)���,l+  �Y h[OY��O�� �;T�:�9���8�; 0 isfilter isFilter�: �7��7 �  �6�5�6 0 asender aSender�5  0 sendercontains senderContains�9  � �4�3�2�1�4 0 asender aSender�3  0 sendercontains senderContains�2 0 indx  �1 0 targetsender targetSender� Z�0�/�.
�0 
null
�/ 
cobj
�. 
nmbr�8 ;g� 7�� , &k��-�,Ekh ��/E�O�� eY h[OY��Y hOfV� �-~�,�+���*�- 0 processfilter processFilter�, �)��) �  �(�'�( 0 amessage aMessage�' 0 _filter  �+  � �&�%�$�#�"�!� ��& 0 amessage aMessage�% 0 _filter  �$ 0 
theaccount 
theAccount�# 0 
themailbox 
theMailbox�" 0 _message  �! 0 _number  �  0 _result  � 0 
_modfilter 
_modFilter� 1��������������������������� ���+������uw{��������  0 _targetaccount _targetAccount�  0 _targetmailbox _targetMailbox
� 
mbxp
� 
mact� 0 _message  � �
�	�
�
 
errn�	 0 _number  �  ���
� 
dflt
� 
btns
� 
disp� 
� .sysodlogaskr        TEXT
� 
bhit� 0 createmailbox createMailbox� 0 processfilter processFilter� 0 
editfilter 
editFilter
� 
null� *0 removefilterfrommap removeFilterFromMap� 0 insertfilter insertFilter� .0 makeworkingfilterlist makeWorkingFilterList� "0 gpersistfilters gPersistFilters�*\��,E�O��,E�O &� ��  *�/��,FY *�/�/��,FUW*X  ��  ���  "�%�%����a a mva la  E�Y -a �%a %�%a %�a �a a a mva la  E�O ~�a ,a   )��l+ O)��l+ Y ]�a ,a    P)�k+ !E�O�a " ;)�b  
l+ #O)�b  
l+ $O)b  
k+ %Ec  OeE` &O)��l+ Y hY hW )X  a '�%a (%�%�a )�a *a +lva ja  Y $a ,�%a -%�%�a .�a /a 0lva ja  � �������� 0 createmailbox createMailbox� ��� �  ��� 0 
theaccount 
theAccount� 0 
themailbox 
theMailbox�  � � ���  0 
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
mact�� � -� )��  *����l� Y *���*�/6��l� U� ������������� 0 
sortfiters 
sortFiters�� ����� �  ���� 0 _filters  ��  � ������������ 0 _filters  �� 0 _map  �� 0 _filtersref _filtersRef�� 0 indx  �� 0 _filter  � ������������ 0 newmap newMap�� 0 _filters  
�� 
cobj
�� 
nmbr�� 0 insertfilter insertFilter�� 5)j+  E�O)�,E�O !k��-�,Ekh ��/E�O)��l+ [OY��O�� ������������� 0 insertfilter insertFilter�� ����� �  ������ 0 _filter  �� 0 
_filtermap 
_filterMap��  � �������������� 0 _filter  �� 0 
_filtermap 
_filterMap�� 0 _issitewide _isSitewide�� 0 _account  �� 0 _mailbox  ��  0 workingaccount workingAccount� ������������������S�� 0 _issitewide _isSitewide��  0 _targetaccount _targetAccount��  0 _targetmailbox _targetMailbox
�� 
null�� 0 mapget mapGet�� 0 newmap newMap�� 0 mapput mapPut�� 0 	_isheader 	_isHeader�� 0 	mapappend 	mapAppend�� ���,E�O��,E�O��,E�O��  �E�Y hO*��l+ E�O��  *j+ E�O*���m+ Y hO� ��, *b  	��m+ 	Y hY #��  �E�Y hO��, *���m+ 	Y h� ��f���������� .0 makeworkingfilterlist makeWorkingFilterList�� ����� �  ���� 0 
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
)���m+ OeY h[OY��[OY��[OY�aOf� ��p����������  0 persistfilters persistFilters�� ����� �  �������� 0 
_filtermap 
_filterMap�� 	0 _name  �� 0 _loc  ��  � 	�������������������� 0 
_filtermap 
_filterMap�� 	0 _name  �� 0 _loc  �� 	0 _path  �� 	0 _file  �� 0 _message  �� 0 _number  �� 
0 output  �� 0 _fileid _fileID� ���������������������������������~�}�|
�� 
home
�� 
TEXT
�� 
alis�� 0 _message  � �{�z�y
�{ 
errn�z 0 _number  �y  ����
�� 
dflt
�� 
btns
�� 
disp�� 
�� .sysodlogaskr        TEXT�� &0 filtermaptostring filterMapToString
�� 
perm
� .rdwropenshor       file
�~ 
refn
�} .rdwrwritnull���     ****
�| .rdwrclosnull���     ****�� e� *�,�&�%�%E�UO 
��&E�W %X  �� �%�%�%�����lv�j� Y hO)�k+ E�O�a el E�O�a �l O�j � �x��w�v���u�x &0 filtermaptostring filterMapToString�w �t��t �  �s�s 0 
_filtermap 
_filterMap�v  � �r�q�p�o�n�m�l�k�j�i�h�g�r 0 
_filtermap 
_filterMap�q 
0 output  �p  0 sitewideoutput sitewideOutput�o $0 issitewideheader isSitewideHeader�n 0 indx  �m 0 _account  �l  0 workingaccount workingAccount�k 	0 indx2  �j 0 _mailbox  �i 0 _filters  �h 	0 indx3  �g 0 _filter  � ���f�e�d�c�b�a�`�_�^b�]f�\j�[n{��������f 	0 _keys  
�e 
cobj
�d 
nmbr�c 0 mapget mapGet
�b 
pcls
�a 
list
�` 
ret �_ 0 
_iscomment 
_isComment�^ 0 _linecontent _lineContent�] "0 _sendercontains _senderContains�\  0 _targetaccount _targetAccount�[  0 _targetmailbox _targetMailbox�uj�E�O�E�OfE�OSk��,�-�,Ekh ��,�/E�O*��l+ E�O*k��,�-�,Ekh ��,�/E�O*��l+ E�O��,� 
�kvE�Y hO�b  	  i� �b  %�%E�OeE�Y hO Jk��-�,Ekh 
��/E�O��,E ���,%�%E�Y ���,%�%��,%�%�a ,%a %�%%E�[OY��Y ��a   �b  a %�%a %�%a %�%%E�Y hO Pk��-�,Ekh 
��/E�O��,E ���,%�%E�Y %�a ��,%a %��,%a %�a ,%a %�%%E�[OY��O��%E�[OY��[OY��O��%E�O�� �Z��Y�X���W�Z 0 getnewfilter getNewFilter�Y �V��V �  �U�T�U 0 asender aSender�T 0 
themessage 
theMessage�X  � �S�R�Q�P�O�N�M�L�S 0 asender aSender�R 0 
themessage 
theMessage�Q 0 
_newfilter 
_newFilter�P 0 _result  �O  0 _targetmailbox _targetMailbox�N 	0 _test  �M 0 _targetsender _targetSender�L 0 _filter  � )�K		�J	�I�H	%	)	,�G	0�F	4�E�D�C�B�A�@�?�>	R�=�<�;	z	�	�	�	��:�9�8�7	�	��6�5�4�3
�K 
null
�J 
ret 
�I 
dtxt
�H 
btns
�G 
dflt
�F 
appr
�E 
disp
�D stic   
�C 
givu�B <�A 
�@ .sysodlogaskr        TEXT
�? 
gavu
�> 
bhit
�= 
ttxt
�< 
cwor
�; 
TEXT
�: stic    �9 
�8 >0 extractemailaddressfromsender extractEmailAddressFromSender�7 0 	newfilter 	newFilter�6  0 _targetaccount _targetAccount�5 "0 _sendercontains _senderContains�4  0 _targetmailbox _targetMailbox�3 0 
editfilter 
editFilter�W ��E�O �hZ�%�%�%�%�b  ����mv������a a a  E�O�a ,e  Y ��a ,a   Y ��a ,E�O�a -a &E�O�a   &a �a kv�a �a �a a a  a   Y @)�k+ !E�O)j+ "E�Oa # a $�a %,FUO�kv�a &,FO��a ',FO)�k+ (E�O[OY�6O�� �2	��1�0���/�2 >0 extractemailaddressfromsender extractEmailAddressFromSender�1 �.��. �  �-�- 0 _sender  �0  � �,�+�*�, 0 _sender  �+ 
0 _start  �* 0 _end  � 
�)	��(�'�&	��%�$�#

�) 
psof
�( 
psin�' 
�& .sysooffslong    ��� null
�% 
bool
�$ 
cha 
�# 
TEXT�/ K*���� kE�O*���� kE�O�k	 �k�& �� �[�\[Z�\Z�2�&Y �Y hO�� �"
�!� ����" 0 
editfilter 
editFilter�! ��� �  �� 0 _filter  �   � ��������� 0 _filter  �  0 _targetmailbox _targetMailbox� 0 _targetsender _targetSender� 0 
accountmsg 
accountMsg� 0 _result  � 	0 _test  � 0 _message  � 0 _number  � K��
5���
Y
]
e
i

�
��
��
�
�
��
��
���
�	��
�
��
�
�
�
�
�����
��� ����
�����1:>AEI\t������������������  0 _targetmailbox _targetMailbox
� 
null� "0 _sendercontains _senderContains
� 
cobj�  0 _targetaccount _targetAccount
� 
ret 
� 
btns
� 
dflt
� 
appr
� 
disp
�
 stic   �	 
� .sysodlogaskr        TEXT
� 
bhit
� 
dtxt
� 
givu� <� 
� 
gavu
� 
bool
�  
ttxt
�� 
cwor
�� 
TEXT
�� stic    �� 
�� 0 _issitewide _isSitewide�� 0 _message  � ������
�� 
errn�� 0 _number  ��  ������ �7���,E�O��  �E�Y hO��,�k/E�O�hZ��,�  �E�Y ��,%�%E�O�%�%�%�%�%�%�%�a a a mva a a a a a a  E�O�a ,a   � �hZa a ��a a  a !mva a "a a #a a a $a %a & E�O�a ',f 	 �a ,a (a )& L�a *,E�O�a +-a ,&E�O�a -  ,a .�a /kva a 0a a 1a a 2a $a 3a 3 Y Y [OY�cY Ҥa ,a 4  � �hZa 5a ��a 6a 7a 8mva a 9a a :a a a $a %a & E�O�a ',f 	 �a ,a ;a )& L�a *,E�O�a +-a ,&E�O�a <  ,a =�a >kva a ?a a @a a 2a $a 3a 3 Y Y [OY�cY  �kv��,FO���,FO�b  �a A,FO[OY�,W 8X B C�a D  �Y &a E�%a F%�%a a G�a Ha Ilva ja J O�� ������������� 0 	newfilter 	newFilter��  ��  �  � 
��������������������� "0 _sendercontains _senderContains
�� 
null��  0 _targetaccount _targetAccount��  0 _targetmailbox _targetMailbox�� 0 _issitewide _isSitewide�� 0 
_iscomment 
_isComment�� 0 	_isheader 	_isHeader�� 0 _linecontent _lineContent�� �� �������f�f�f���� ������������� 0 newmap newMap��  ��  �  � �������� 	0 _keys  �� 0 _values  �� �� 
�jv�jv�� ������������� 0 mapput mapPut�� ����� �  �������� 0 _key  �� 
0 _value  �� 0 _map  ��  � ���������� 0 _key  �� 
0 _value  �� 0 _map  �� 0 _idx  � ���������� 	0 _keys  �� 0 indexof indexOf�� 0 _values  
�� 
cobj�� +*���,l+ E�O�i  ���,6FO���,6FY 
���,�/F� ��3���������� 0 mapget mapGet�� ����� �  ������ 0 _key  �� 0 _map  ��  � �������� 0 _key  �� 0 _map  �� 0 _idx  � ������������ 	0 _keys  �� 0 indexof indexOf
�� 
null�� 0 _values  
�� 
cobj��  )���,l+ E�O�i  �Y 
��,�/E� ��W����� ���� 0 	mapappend 	mapAppend�� ����   �������� 0 _key  �� 
0 _value  �� 0 _map  ��  � ������������ 0 _key  �� 
0 _value  �� 0 _map  �� 0 _idx  �� 0 _val    ���������������� 	0 _keys  �� 0 indexof indexOf�� 0 _values  
�� 
cobj
�� 
pcnt
�� 
pcls
�� 
list�� ^)���,l+ E�O�i  ���,6FO���,6FY =��,�/E�O��,�,�  ��6FO��,��,�/FY �kvE�O��6FO��,��,�/F� ����������� 0 	mapremove 	mapRemove�� ����   ������ 0 _key  �� 0 _map  ��   �������� 0 _key  �� 0 _map  �� 0 _idx   ���������� 	0 _keys  �� 0 indexof indexOf��  0 removelistitem removeListItem�� 0 _values  �� 6)���,l+ E�O�i  fY  )���,l+ ��,FO)���,l+ ��,FOe� ���������� 0 indexof indexOf�� ����   ������ 0 _element  �� 	0 _list  ��   �������� 0 _element  �� 	0 _list  �� 0 _idx   ������
�� 
bool
�� 
cobj
�� .corecnte****       ****�� ;�jv	 ���& ) #k��-j kh ��/�  �Y h[OY��Y hOi� ��&����	����  0 removelistitem removeListItem�� ��
�� 
  ������ 0 indx  �� 	0 _list  ��   ������������ 0 indx  �� 	0 _list  �� 0 len  �� 	0 parta  �� 	0 partb  	 ������������
�� 
pcls
�� 
list
�� 
leng
�� 
rest
�� 
rvse
�� 
cobj�� ���,� �Y hO��,E�O�j  �Y hO�k  
��,EY hO��  ��,�,�,EY hO�� �Y hO�k �Y hO�[�\[Zk\Z�k2E�O�[�\[Z�k\62E�O��%ascr  ��ޭ