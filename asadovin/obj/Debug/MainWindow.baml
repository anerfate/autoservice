   M S B A M L   `   `   `  ����C  ?asadovin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:asadovinasadovin  5   	       asadovin.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:asadovin     5   	   -   5          �Name$
  Root��5   	    � Title$* $Услуги авто сервиса��5	      $��Arial Black)�5
   	   $	��300��5   	   $	��300��6   $	��450��5   	   $	��800��6   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      $��1* �6   .+�5   
   ��  �� Orientation$ Vertical=�5      $��Bottom=�5      .+�5      �� $#��Добавить услугу��5      y�5      �� *AdminVisibility+�� 5      -   5        $��AdminButton��5      $��10q�5      ��5      �� *AdminModeCaption+5      �� 5       -   5         ��Name$ 
ExitButton��5!      $��
Выход��5"      5#      5&      �� 5'   
   $��5q�5(   	   $��./img/service_logo.png��5)   	   $	��Top=�5*   	   � 5+   
   $��1��6    � RowDefinitions 5,      �� 5-      $��30 �6    �� 5.      $��1* �6    �� 5/      $��30 �6    .+�52      &   System.Windows.Controls.DataGrid  -   5          Name$ MainDataGrid��53      $��1��54         CanUserAddRows .     AutoGenerateColumns .  ��57      �� *ServiceList+	   Columns	 59      0  *System.Windows.Controls.DataGridTextColumn  5;      ,  &System.Windows.Controls.DataGridColumn
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 250 5<         Header$+ %Наименование услуги��5=      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5>      �� *Title+4  .System.Windows.Controls.DataGridTemplateColumn  5?      $	
 100 5@      $ Стоимость��5A         CellTemplate 5C      �� 5D      .R�5E   "   �� ��5F   !   �� *CostTextDecoration+��5G   !   �� *
CostString+5H      5J        5K      $	
 150 5L      $* $Стоимость co скидкой��5M       5N      �� *CostWithDiscount+  5O      $	
 150 5P      $( "Продолжительность��5Q       5R      �� *DurationInSeconds+  5S      $
 64 5T      $  ��5U       5V      �� 5W      .R�5Y   "   �� $��64��5Z      $��64��5[      ��5\      �� *
ImageUri+5]      5_        5`      $ Действия��5a       5b      �� 5c      .R�5d   "   �� $ 
Horizontal=�5f      y�5e      �� *DataContext.AdminVisibility+ �� ElementName$
 Root��.+�5g   &   �� $��
EditButton��5i      $ ��Редактировать��5h      5i      �� 5k   &   $��DeleteButton��5m      -   5        $��Удалить��5l      5m   -   5o   #   5p      5r        5t      $
 60 5u      $ Скидка��5v       5w      �� *DiscountString+   RowStyle 5y      �� 5z       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6    �� Triggers 5{      �� 5|       �� Binding 5}      �� *HasDiscount+ �� Value	 False5~      .a�5   "   ��  �� Property � �� �� Value
 ����5�   !   5�      5�      5�      �� 5�      $ 
Horizontal=�5�      $��Center=�5�      .+�5�      �� $��
Цена: ��6   	� 5�      -   5         	� 	GroupName$ Price��5�   	   
 � Tag$ 1��5�   	   $!��по возрастанию��5�   	    d� 	IsChecked$
 TrueY�5�   	   $��Center=�5�   	   	� 5�      -   5        $ Price��5�   	   $ 2��5�   	   $��по убыванию��5�   	   $��Center=�5�   	   �� 5�      $&�� Фильтр по скидке: ��6   $��10,0,0,0q�5�   	   $��Center=�5�   	   �� 5�      -   5        $��DiscountFilterComboBox��5�       �� SelectedIndex$ 0��5�      ��5�      �� *FilterByDiscountNamesList+�� 5�      $��
Поиск��6   �� 5�      -	   5         ��Name$ SearchFilterTextBox��5�      $	��120��6.   6:   5�      �� 5�      $ 
Horizontal=�6   $��2��5�      $��Bottom=�6   $	��100��65   .+�5�      �� ��6   �� *ServiceCount+�� 5�      ��6   �� *FilteredServicesCount+5�      5�      5�      5�      