   M S B A M L   `   `   `  ���� B  >Notepad, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:NotepadNotepad      Notepad.App   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     'localclr-namespace:Notepad       �� 	Resources   �� MergedDictionaries   Menu.Static.Background �� Color  Menu.Static.Border  Menu.Static.Foreground  Menu.Static.Separator  Menu.Disabled.Foreground   MenuItem.Selected.Background  MenuItem.Selected.Border ! MenuItem.Highlight.Background  MenuItem.Highlight.Border *	 &MenuItem.Highlight.Disabled.Background &
 "MenuItem.Highlight.Disabled.Border $  MenuScrollingVisibilityConverter  	DownArrow  UpArrow  
RightArrow  	Checkmark  MenuScrollButton �� 
TargetType �� BasedOn �� Property �� Value �� 
TargetType ��Name	 J� SnapsToDevicePixels
 �� 
ResourceId �� TypeInTargetAssembly � ColumnDefinitions � RowDefinitions �� CanContentScroll �� LineUpCommand �� RelativeSource �� Mode `� ConverterParameter `� 	Converter �� FallbackValue �� Path �� LineDownCommand ��Name F�Name �� Triggers P� Value P� Property �� 
TargetName ]� 
Conditions �� Property �� Value  �Name! � AllowsTransparency" � PlacementTarget# �� ElementName$ �� Padding% ��Name& �� ClearTypeHint' ��Name( ��Name-  'System.Windows.Input.KeyboardNavigation)   DirectionalNavigation* � IsSharedSizeScope+   TabNavigation, P� 
SourceName- z� SharedSizeGroup. ��Name/ J� Opacity0 m� InputGestureText1 � HorizontalOffset2 � VerticalOffset  MenuItemStyle13 �� AncestorType4 �� Triggers��  %�"  &	        &	      &	 *     &	 ?     &	 T     &	 i     &	 ~     &	 �     &	 �     &		 �     &	
 �     &	 �     &	 �     &	     &	 *    &	 I    &	 �    (�� b    $
 MenuScrollViewer��" �)7  7  7  7  7  7  7  7  (�� `    $
 TopLevelItemTemplateKey��" m�)7  7  7  7  7  7  7 	 7 
 (�� �	    $
 TopLevelHeaderTemplateKey��" m�)7  7   7  7  7  7  7  7  (�� Z    $
 SubmenuItemTemplateKey��" m�)7  7  7  7  7  7  7  7  7 	 7 
 (�� #    $
 SubmenuHeaderTemplateKey��" m�)7  7  7  7  7  7   7  7  7  7  7  &	 ,    7  7   7  7  �� $ 	#FF1A1534���� $ 	#FF1A1534���� $ 	#FFD9D7D7���� $ 	#FF1A1534���� $ 	#FF707070���� $ 	#3D26A0DA���� $ 	#FF26A0DA���� $ 	#3D26A0DA���� $ 	#FF26A0DA���� $ 	#0A000000���� $ 	#21000000��l� �M 0,0 L 3.5,4 L 7,0 Z��M 0,4 L 3.5,0 L 7,4 Z��M 0,0 L 4,3.5 L 0,7 Z��UQF1 M 10.0,1.2 L 4.7,9.1 L 4.5,9.1 L 0,5.2 L 1.3,3.5 L 4.3,6.1L 8.3,0 L 10.0,1.2 Z��� " �� Z� .���  �@��	ClickMode$ Hover=���  � �� �� " ��.R��� $ templateRoot��
������ 
������ $��1q�	 . ._��� $��Center=�$��6q�$��Center=��� " �� Z� .���  � ��$ Hidden=���  � ��$
 Auto=���  � �� �� " ��.R�� 	 .  �� $��* � �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0��$��1��._��� # z��#��z���� #��Z $��0��|�.  $��0��8��  ����  �� $ TemplatedParent=�y�`� $ 0��8  $ Visibility.Collapsed��.1��� $) #ComputedVerticalScrollBarVisibility� �� $ TemplatedParent=��� $ VerticalOffset� �� $ TemplatedParent=��� $ ExtentHeight� �� $ TemplatedParent=��� $ ViewportHeight� �� $ TemplatedParent=�.��F� 8�� 8�� �� #��Z $��0��|�.  $��2��8�� ����  �� $ TemplatedParent=�y�`� $	 100��8  $ Visibility.Collapsed��.1��� $) #ComputedVerticalScrollBarVisibility� �� $ TemplatedParent=��� $ VerticalOffset� �� $ TemplatedParent=��� $ ExtentHeight� �� $ TemplatedParent=��� $ ViewportHeight� �� $ TemplatedParent=�.��F� 8�� 8�� �� " m�.R��� $ templateRoot��#��z��#��z��#��z��	 . ._�� $��Center=� �� $
��Auto ��� $
��Auto �.+��� $
 Icon��$
��Icon��$��Center=�$��16��$��3q�#	 z	 $��Center=�$��16��F� $ 
GlyphPanel��8��  $��LeftToRight=�8�� $��3q�$��Center=�$y�	Collapsed=��� $��Header��$��1��#��z����. #	 z	  P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked . . ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted . . ��� $ templateRoot��8   � ���� $ templateRoot��8   � ��P�  � {� .  . ��� $ templateRoot��8   � ���� $ 
GlyphPanel��8   � ��]�  ��  �@m�IsHighlighted . ��  � {� .  ./��� $ templateRoot��8   � ���� $ templateRoot��8   � ���� " m�.R��� $ templateRoot��#��z��#��z��#��z��	 . ._�� $��Center=� �� $
��Auto ��� $
��Auto �.+��� $
 Icon��$
��Icon��$��Center=�$��16��$��3q�#	 z	 $��Center=�$��16��F� $ 
GlyphPanel��8��  $��LeftToRight=�#��z��$��3q�$��Center=�$y�	Collapsed=��� $��Header��$��1��#��z����. #	 z	 � $  
PART_Popup��! . |�.  $��Bottom=�#��� -����� *IsSubmenuOpen+ �� $ TemplatedParent=�" �� $# templateRoot��.���� $ SubMenuBorder��8�� 8�� $��1q�$$ 2q�._��� $% SubMenuScrollViewer����C� *�� $
 MenuScrollViewer��" �+.��� $& Enabled=�.+��� $
��Left=�$��0��$	��Top=�$��0��.+��� $' 
OpaqueRect������ *
Background+$# SubMenuBorder������ *ActualHeight+$# SubMenuBorder������ *ActualWidth+$# SubMenuBorder���� 8�� $
��Left=�$��29,2,0,2q�$��1���� $( ItemsPresenter��$) Cycle=�* . #	 z	 $+ Cycle=� P� " �@m�IsSuspendingPopupAnimation . . ��� $ 
PART_Popup�� � ��$
 None=�P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked . . ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted . . ��� $ templateRoot��8   � ���� $ templateRoot��8   � ��P�  � {� .  . ��� $ templateRoot��8   � ���� $ 
GlyphPanel��8   � ��P� $, SubMenuScrollViewer�� � �� .  . ��� $ 
OpaqueRect�� �� *VerticalOffset+$# SubMenuScrollViewer�� �@��Top�� $ 
OpaqueRect�� �� *HorizontalOffset+$# SubMenuScrollViewer�� �@��Left�� " m�.R��� $ templateRoot��#��z��#��z��#��z��$��22��	 . ._�� $��-1q� �� $��22��$- MenuItemIconColumnGroup��$
��Auto ��� $��13 ��� $��* ��� $��30 ��� $- MenuItemIGTColumnGroup��$
��Auto ��� $��20 �.+��� $
 Icon��$
��Icon��$��Center=�$��16��$��3q�#	 z	 $��Center=�$��16���� $ 
GlyphPanel��8��  8�� $��1q�}�.  $��Center=�$��22��$��-1,0,0,0q�$��Center=�$y�Hidden=�$��22��._�F� $ Glyph��8�� $��LeftToRight=�8�� $��11��$��10���� $ menuHeaderContainer��$��Header��$��2��$
��Left=�#��z����. #	 z	 $��Center=��� $. menuGestureText��$��4��#��z��$	/ 0.7Q�#��z0 $��Center=� P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked . . ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted . . ��� $ templateRoot��8   � ���� $ templateRoot��8   � ��P�  � {� .  . ��� $ templateRoot��8   � ���� $ Glyph��8   � ��]�  ��  �@m�IsHighlighted . ��  � {� .  ./��� $ templateRoot��8   � ���� $ templateRoot��8 	  � ���� " m�.R��� $ templateRoot��#��z��#��z��#��z��$��22��	 . ._�� $��-1q� �� $��22��$- MenuItemIconColumnGroup��$
��Auto ��� $��13 ��� $��* ��� $��30 ��� $- MenuItemIGTColumnGroup��$
��Auto ��� $��20 �.+��� $
 Icon��$
��Icon��$��Center=�$��16��$��3q�#	 z	 $��Center=�$��16���� $ 
GlyphPanel��8��  8�� $��1q�$��22��$��-1,0,0,0q�$��Center=�$y�Hidden=�$��22��._�F� $ Glyph��#���  $��LeftToRight=�8�� $��11��$��9���� $��Header��$��2��$
��Left=�#��z����. #	 z	 $��Center=��� $��4��#��z��$	/ 0.7Q�#��z0 $��Center=�F� $ 
RightArrow��$��5��8�� 8�� $
��Left=�$��10,0,0,0q�$��Center=�� $  
PART_Popup��! . |�.  $1 -2��$��Right=�#��� -�$2 -3������ *IsSubmenuOpen+ �� $ TemplatedParent=�.���� $ SubMenuBorder��8�� 8�� $��1q�$$ 2q�._��� $% SubMenuScrollViewer����C� *�� $
 MenuScrollViewer��" �+.��� $& Enabled=�.+��� $
��Left=�$��0��$	��Top=�$��0��.+��� $' 
OpaqueRect������ *
Background+$# SubMenuBorder������ *ActualHeight+$# SubMenuBorder������ *ActualWidth+$# SubMenuBorder���� #��� ��$
��Left=�$��29,2,0,2q�$��1���� $( ItemsPresenter��$) Cycle=�* . #	 z	 $+ Cycle=� P� " �@m�IsSuspendingPopupAnimation . . ��� $ 
PART_Popup�� � ��$
 None=�P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked . . ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted . . ��� $ templateRoot�� � ��
 ���� �� $ templateRoot��8   � ��P�  � {� .  . ��� $ templateRoot��8   � ���� $ Glyph��8 	  � ���� $ 
RightArrow��8 
  � ��P� $, SubMenuScrollViewer�� � �� .  . ��� $ 
OpaqueRect�� �� *VerticalOffset+$# SubMenuScrollViewer�� �@��Top�� $ 
OpaqueRect�� �� *HorizontalOffset+$# SubMenuScrollViewer�� �@��Left�� " m�.���  � �� �� *HorizontalContentAlignment+ �� "3 ����  � �� �� *VerticalContentAlignment+ �� "3 ����  � ��
 ���� ��  � ��
 ���� ��  � ��$ 1q���  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled .  ��  � �� C� *�� $
 SubmenuItemTemplateKey��" m�+4 P�  �@m�Role$ TopLevelHeader=�. ���  � ��
 ���� ��  � ��
 ���� ��  � ��8   ��  � �� C� *�� $
 TopLevelHeaderTemplateKey��" m�+��  � ��$	 6,0q�P�  �@m�Role$ TopLevelItem=�. ���  � ��8  ��  � ��8  ��  � ��8  ��  � �� C� *�� $
 TopLevelItemTemplateKey��" m�+��  � ��$	 6,0q�P�  �@m�Role$ SubmenuHeader=�. ���  � �� C� *�� $
 SubmenuHeaderTemplateKey��" m�+