   M S B A M L   `   `   `  ���� B  >Notepad, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:NotepadNotepad      Notepad.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:Notepad       � Title$  Untitled - Notepad��$	��450��$	��800��.���  � ColumnDefinitions �� $
��596* ��� $
��205* � � RowDefinitions �� $��35 ��� �� $��30 �.+�o� $��Center=����	#FF1A1534���	#FFD4CFCF$��2��$��35��.@�m� $��_File�����	#FFD4CFCF$��30��.@�m� -   $	��New�� m� InputGestureText$ CTRL+N��m� -   $
��Open��$ CTRL+O��m� -   $
��Save��$ CTRL+S��m� -   $��Save As��$ CTRL+SHIFT+S���� m� -   $
��Exit��$ ALT+F4��m� $��_Edit��.@�m� $
��Undo��$ CTRL+Z�� m� Command$ ApplicationCommands.Undo��m� $
��Redo��$ CTRL+Y��$ ApplicationCommands.Redo���� m� $	��Cut��$ CTRL+X��$ ApplicationCommands.Cut��m� $
��Copy��$ CTRL+C��$ ApplicationCommands.Copy��m� $��Paste��$ CTRL+V��$ ApplicationCommands.Paste���� m� $��
Select All��$ CTRL+A��$# ApplicationCommands.SelectAll��m� $��_Help��.@�m� -   $��About Notepad���� -    ��Name$ textBox��$��1��$��Lucida Console)�$��10q� �� AcceptsReturn . " �� VerticalScrollBarVisibility$
 Auto=����	#FF2B2A2A���	#FFD4CFCF$��16(�$��2���� $��2��$��Center=�$��2��$��30��.@��� ���	#FF1A1534���	#FFD4CFCF.���� -    ��Name$ 
statusText��$��Character count: 0��