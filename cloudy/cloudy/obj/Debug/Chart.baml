   M S B A M L   `   `   `  ����A  =cloudy, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:cloudycloudy  5   	   U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5   	       cloudy.Chart   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:cloudy     5   	   Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5   	     � Title$  Графік��5	   	   $	��800��6   $
��1200��6%    � WindowStartupLocation$ CenterScreen=�62    � 
ResizeMode$ NoResize=�6W   .��5
      � -   5         � RowDefinitions 5   
   �� 5      $	��65* �6   �� 5      $
��706* �6   .+�5   
   �� $��
Місто��6   $��33��6    $��10,18,1078.6,13.8q�6,   $��Center=�6G   $��Comic Sans MS)�6b   $��20(�6}   $��Center=�6�   $��Center=�6�   �� 5   
   -   5         ��Name$ cityList��5      $��34��6%   $��130,17,828.6,13.8q�61   $��Center=�6L   $��Center=�6g   $��Center=�6�   6�   �� 5   
   $��Дані��6   $��36��6   $��370,17,653.6,11.8q�6+   $��Center=�6F   $��Comic Sans MS)�6a   $��20(�6|   $��Center=�6�   $��Center=�6�    J� RenderTransformOrigin$ 0.196,0.589&�6�   #  LiveCharts.Wpf.CartesianChart  5   
   &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$
 Left=�6A   $��10,9.2,9.6,10.4q�6W   $��1��6p      Series 6   �� *SeriesCollection+   AxisX 5        LiveCharts.Wpf.Axis  	   Title$	 Дата��6   
   Labels
 6(   �� *Labels+6D      AxisY 5        $	 Температура��6      LabelFormatter 6/   �� *	Formatter+6V   5      	� 5   
   -   5         	�Name$ temperature��5      $��Температура��6+   $��530,15,143.6,32.8q�6A   $��Center=�6\   $��Comic Sans MS)�6w   $��14(�6�    d� 	IsChecked$
 TrueY�6�   $��17��6�   	� 5   
   -   5        $ pressure��5      $��Тиск��6(   $��530,38,157.6,8.8q�67   $��Center=�6Q   $��Comic Sans MS)�6l   $��14(�6�   $ -0.613,0.685&�6�   $��18��6�   5      5      