   M S B A M L   `   `   `  ����H  DApplication_1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Application_1Application_1  5   	       Application_1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Application_1     5   	     � Title$  WPF Image Gallery��5   	   $	��600��6#   $	��800��60   ���#8C8E90.��5	      �  � RowDefinitions 5
   
   �� 5      $	��110 �6   �� 5      $��* �6   .+�5   
   �� ���#B2B3B7$	��123��6#   $	��Top=�60   ���#848588 �� RadiusX$ 10��6Y    �� RadiusY$ 10��6f   $��	0,-12,0,0q�6s   �� 5   
   $��0��6   $��Search:��6   $
��Left=�6/   $��	35,20,0,0q�6J   $	��Top=�6]   $��24(�6u   ���#3C3B3B J� RenderTransformOrigin$ 2.526,-0.01&�6�   �� 5   
   -   5         ��Name$ 	searchBar��5      $
��Left=�6%   $��46��6@   $��
126,20,0,0q�6L    �� TextWrapping$
 Wrap=�6`   $��24(�6t   $	��Top=�6�   $	��478��6�   $��	10,5,10,5q�6�   .��6�    � 	Resources 5       �� 
TargetType	 �� Property
 �� Value��%_   '��       �� 5      " ��6   .�5      �� 	 �@��CornerRadius$
 10��65   5      5      .��6!   5      �� 5   
   -   5         ��Name$ searchButton��5      $��Go��6'   $
��Left=�64   $��46��6O   $��
630,20,0,0q�6[   $	��Top=�6o   $��88��6�   ���#87BBEA���#73A2CC$��24(�6�    5      ��%_   '��       �� 5      " ��6   .�5      �� 	 �@��CornerRadius$
 10��65   5      5       5!      	� 5"   
   -   5         	�Name$ pixabayRadio��5"      $��pixabay��6,   $
��Left=�6>   $��18��6Y   $��
126,82,0,0q�6e   $	��Top=�6y   $��91��6�   �� 5$   
   $��1��6   $
��Auto=�6$   $
��Auto=�6G   .��5%      �� -   5         ��Name$ imageDisplay��5%      ��5&      �� 5'      .R�5(      A�  A� Columns$ 3��6&   5)      ��5+      �� 5,      .R�5-      �� $	��200��6@   $	��150��6L   $��	0,25,0,25q�6Y   ��6    �� *webformatURL+6Y   5.      50      51      52      53      