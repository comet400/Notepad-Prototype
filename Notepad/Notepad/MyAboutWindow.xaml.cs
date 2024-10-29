/* File: MyAboutWindow.xaml.cs
Project: PROG2121-WINDOWS-PROGRAMMING - A02 - C# and OOP 
Programmer: Lukas Fukuoka Vieira
First version: 09/22/2024
Description: This file contains the code for the MyAboutWindow class.
Github HTTPS:https://github.com/SET-WinProg-F24/a02-wpf-comet400.git
*/





using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Notepad
{
    /// <summary>
    /// Interaction logic for MyAboutWindow.xaml
    /// </summary>
    public partial class MyAboutWindow : Window
    {
        public MyAboutWindow()
        {
            InitializeComponent();
        }





        /* Header Comment Close_Click
           Name: Close_Click
           Parameters: object sender, RoutedEventArgs e
           Return: void
           Description: This method is called when the close button is clicked. It closes the window.
         */
        private void Close_Click(object sender, RoutedEventArgs e)
        {
            this.Close(); // Close the window
        }
    }
}
