   M S B A M L   `   `   `  ����A  =cloudy, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:cloudycloudy  5   	       cloudy.LogInForm   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:cloudy     5   	   -   5          �Name$  
LogInForm_��5   	    � Title$ LogIn��5   	   $	��400��6   $	��450��6$    � 
ResizeMode$ NoResize=�60    � WindowStartupLocation$ CenterScreen=�6F   $��Comic Sans MS)�6k   $��15(�6�   ���	#FFB85450$��1q�6�    � WindowStyle$ 
ToolWindow=�6�    � SizeToContent$ WidthAndHeight=�6�    � 	Resources 5	       �� 
TargetType �� Property	 �� Value
 �� 
TargetType ��Name �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName 
� GradientOrigin �� RelativeTransform �� CenterX �� CenterY �� ScaleX �� ScaleY T� X T� Y � Color � Offset��%�  '��       �� 5
   
   " ��6   .�5      ��  � ��	 5      �� 5      "
 ��6&   .R�5      �� $ border��6!   $ 10��62   #��z��6D   ._�5      �� #��z��6/   #��z��5   /   5       5      P� 5       � �� . . �5   "   �� $ border��6?    � ��	 5   &   
� 5   *   $ 0.496,1.052&�6>    5   .   V� 5   2   .~�5   6   �� $	 0.5Q�6E   $	 0.5Q�6S   $	 1.5Q�6a   $	 1.5Q�6n   T� 5   6   $
 0.02Q�6I   $	 0.3Q�6R   5   3   .��5   .   � $ 	#00000000��6;   $	 1.5Q�6M   � 5   .   $ 	#FFE3B6B6��6;   $	 0.5Q�6M   5    +   5"   #   5#      P� 5$       �@J�IsMouseOver . . �5%   "   �� $ border��6@    � ��	 �	#FF6FCEFF6T   �� 5&   "   $ border��6D    � ��$	 2q�6X   5'      5*      5,      �� 5-       �@�Cursor$
	 Hand��6'   �� 5.       � ��$
	 10,5q�6'   �� 5/       � ��	 �	#FFE3B6B66+   50      52      .��54      � ���	#FFF8CECC$��0,0,-0.4,-8.2q�6"   .+�56   
   �� $��Comic Sans MS)�6   $��30(�6/   $��110,50,82,285q�6=   $��Center=�6T   $	��250��6q   $��Center=�6}   $�� АВТОРИЗАЦІЯ��6�   �� 59   
   $��Comic Sans MS)�6   $��20(�6/   $��60,126,282,221q�6=   $��Center=�6U   $	��100��6r   $��Center=�6~   $��30��6�   $�� ЛОГІН��6�   �� 5:   
   -   5         ��Name$ login��5:      $	��215��6!   $��39��6-   $��174,122,53,216q�69   $��Center=�6Q   
���   �$��Center=�6�    �� AcceptsReturn . $��Center=�6�   $��Center=�6�   G� 5<   
   -   5         G�Name$ password��5<      $	��215��6)   $��40��65   $��174,175,53,162q�6A   $��Center=�6Y   
���   �$��Center=�6�   $��Center=�6�   $��Center=�6�   �� 5=   
   $��Comic Sans MS)�6   $��20(�6/   $��51,180,282,167q�6=   $��Center=�6U   $	��109��6r   $��Center=�6~   $��30��6�   $�� ПАРОЛЬ ��6�   �� 5?   
   -   5         ��Name$ Enter��5?      $��ВХІД��6!   $��Comic Sans MS)�60   $��15(�6K   $��70,253,252,72q�6Y    J� RenderTransformOrigin$ 0.485,1.347&�6p   ���	#FFFF9999  �� 	IsDefault  . 6�   �� 5A   
   -   5        $ Continue��5A      ���	#FFFF9999$��СКАСУВАТИ��6:   $��223,253,62,72q�6N   $ 0.5,0.5&�6e   $��Comic Sans MS)�6�   $��15(�6�   ! �� IsCancel! . 6�   5B      5C      