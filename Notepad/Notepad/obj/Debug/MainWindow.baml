   M S B A M L   `   `   `  ����B  >Notepad, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:NotepadNotepad  5   	       Notepad.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Notepad     5   	     � Title$  Untitled - Notepad��5   	   $	��450��6$   $	��800��61   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      �� 5      $
��Auto �6   .+�5   
   o� $��0��6   $	��Top=�6   ���	#FF1A1534���	#FFD4CFCF.@�5      m� $��_File��6   ���	#FFD4CFCF.@�5      m� -   5        $	��New��5       m� InputGestureText$ CTRL+N��6(   6B   m� 5      -   5        $
��Open��5      $ CTRL+O��6)   6C   m� 5      -   5        $
��Save��5      $ CTRL+S��6)   6C   m� 5      -   5        $��Save As��5      $ CTRL+SHIFT+S��6,   6L   �� 5      m� 5      -   5        $
��Exit��5      $ ALT+F4��6)   6C   5      m� 5      $��_Edit��6   .@�5      m� $
��Undo��6   $ CTRL+Z��6)    m� Command$ ApplicationCommands.Undo��6C   m� 5      $
��Redo��6   $ CTRL+Y��6)   $ ApplicationCommands.Redo��6C   �� 5      m� 5      $	��Cut��6   $ CTRL+X��6(   $ ApplicationCommands.Cut��6B   m� 5      $
��Copy��6   $ CTRL+C��6)   $ ApplicationCommands.Copy��6C   m� 5       $��Paste��6   $ CTRL+V��6*   $ ApplicationCommands.Paste��6D   �� 5!      m� 5"      $��
Select All��6   $ CTRL+A��6/   $# ApplicationCommands.SelectAll��6I   5#      m� 5$      $��_Help��6   .@�5%      m� -   5        $��About Notepad��5%      5'      5(      5)      �� 5,   
   -   5         ��Name$ textBox��5,      $��1��6#   $��Lucida Console)�60   $��10q�6L    �� AcceptsReturn . " �� VerticalScrollBarVisibility$
 Auto=�5-   '   ���	#FF1A1534���	#FFD4CFCF5/      �� 52   
   $��2��6   $��Bottom=�6!   .@�53      �� .��54      �� -   5         ��Name$ 
statusText��54      $��Character count: 0��60   55      56      57      58      