/* File: MainWindow.xaml.cs
Project: PROG2121-WINDOWS-PROGRAMMING - A02 - C# and OOP 
Programmer: Lukas Fukuoka Vieira
First version: 09/22/2024
Description: This file contains the code for the main window of the Notepad application. It includes event handlers for the menu commands,
 methods to handle file operations, and helper methods to prompt the user to save changes before performing an action.
Github HTTPS:https://github.com/SET-WinProg-F24/a02-wpf-comet400.git
*/




using Microsoft.Win32;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;

namespace Notepad
{
    public partial class MainWindow : Window
    {
        private string currentFile = "Untitled";                                                // The current file being edited
        private bool isTextChanged = false;                                                     // Flag to track if the text has changed
        private const string FileDialogFilter = "Text files (*.txt)|*.txt|All files (*.*)|*.*"; // The filter for the file dialog
        private const string Untitled = "Untitled";                                             // The default file name
        private const string LukasNotepad = "Lukas Notepad";                                    // The title of the application





        public MainWindow()
        {
            InitializeComponent();                                           // Initialize the components
            UpdateTitle();                                                   // Update the title of the window
            this.Closing += MainWindow_Closing;                              // Subscribe to the Closing event
            this.PreviewKeyDown += new KeyEventHandler(Check_Ctrl_Shortcut); // Subscribe to the PreviewKeyDown event
        }





        /* Header Comment New Command
           Name: NewCommandExecuted
           Parameters: object sender, RoutedEventArgs e
           Return: void
           Description: This function is called when the New command is executed. 
            It clears the text box, resets the current file, updates the title, and resets the isTextChanged flag.
         */
        private void NewCommandExecuted(object sender, RoutedEventArgs e)
        {
            if (!CheckAndPromptForUnsavedChanges()) return; // Use the helper method
            ResetDocument();                                // Reset the document
        }





        /* Header Comment Open Command
           Name: OpenCommandExecuted
           Parameters: object sender, RoutedEventArgs e
           Return: void
           Description: This function is called when the Open command is executed. 
            It opens a file dialog to select a file, reads the file, updates the current file, and updates the title.
         */
        private void OpenCommandExecuted(object sender, RoutedEventArgs e)
        {
            if (!CheckAndPromptForUnsavedChanges()) return;                                   // Use the helper method
            OpenFileDialog openFileDialog = new OpenFileDialog { Filter = FileDialogFilter }; // Create a new OpenFileDialog
            if (openFileDialog.ShowDialog() == true)                                          // If the user selects a file
            {
                LoadFile(openFileDialog.FileName);                                            // Load the file
            }
        }





        /* Header Comment Save Command
           Name: SaveCommandExecuted
           Parameters: object sender, RoutedEventArgs e
           Return: void
           Description: This function is called when the Save command is executed. 
            It saves the current file if it exists, or calls Save As if it's a new file.
         */
        private void SaveCommandExecuted(object sender, RoutedEventArgs e)
        {
            if (currentFile == Untitled)                    // If the file is new
            {
                SaveAsCommandExecuted(sender, e);           // Call Save As
            }
            else
            {
                SaveFile(currentFile);                      // Save the file
            }
        }





        /* Header Comment Save As Command
           Name: SaveAsCommandExecuted
           Parameters: object sender, RoutedEventArgs e
           Return: void
           Description: This function is called when the Save As command is executed. 
            It opens a SaveFileDialog to select a file, writes the text to the file, updates the current file, and updates the title.
         */
        private void SaveAsCommandExecuted(object sender, RoutedEventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog          // Create a new SaveFileDialog
            {
                Filter = FileDialogFilter                               // Set the filter to only show text files
            };

            if (saveFileDialog.ShowDialog() == true)                    // If the user selects a file
            {
                SaveFile(saveFileDialog.FileName);                      // Save the file
            }
        }





        /* Header Comment Exit Command
           Name: ExitCommandExecuted
           Parameters: object sender, RoutedEventArgs e
           Return: void
           Description: This function is called when the Exit command is executed. 
            It prompts the user to save changes before closing the application.
         */
        private void ExitCommandExecuted(object sender, RoutedEventArgs e)
        {
            if (!CheckAndPromptForUnsavedChanges()) return; // Use the helper method
            Application.Current.Shutdown();                 // Close the application
        }





        /* Header Comment About Command
           Name: AboutCommandExecuted
           Parameters: object sender, RoutedEventArgs e
           Return: void
           Description: This function is called when the About command is executed. 
            It creates an instance of the About Window and shows it to the user.
         */
        private void AboutCommandExecuted(object sender, RoutedEventArgs e)
        {
            MyAboutWindow aboutWindow = new MyAboutWindow();      // Create a new instance of the About Window
            aboutWindow.ShowDialog();                             // Show the About Window
        }





        /* Header Comment Update Title
           Name: UpdateTitle
           Parameters: None
           Return: void
           Description: This function updates the title of the window based on the current file.
         */
        private void UpdateTitle()
        {
            this.Title = $"{System.IO.Path.GetFileName(currentFile)} {LukasNotepad}"; // Set the title of the window
        }





        /* Header Comment TextBox Text Changed
           Name: TextBox_TextChanged
           Parameters: object sender, TextChangedEventArgs e
           Return: void
           Description: This function is called when the text in the text box changes. 
            It updates the character count in the status bar and sets the isTextChanged flag.
         */
        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            isTextChanged = true;                                        // Set the flag to true
            statusText.Text = $"Character count: {textBox.Text.Length}"; // Update the status bar
        }





        /* Header Comment Prompt Save Before Action
           Name: PromptSaveBeforeAction
           Parameters: None
           Return: bool
           Description: This function prompts the user to save changes before performing an action. 
            It returns true if the action should proceed, and false if it should be stopped.
         */
        private bool PromptSaveBeforeAction()
        {
            MessageBoxResult result = MessageBox.Show("Do you want to save changes to your document?", LukasNotepad,
                MessageBoxButton.YesNoCancel, MessageBoxImage.Warning); // Show a message box with Yes, No, and Cancel options

            switch (result)                                             // Check the user's choice
            {
                case MessageBoxResult.Yes:                              // If the user clicked Yes
                    SaveCommandExecuted(null, null);                    // Save the file
                    return true;
                case MessageBoxResult.No:
                    return true;                                        // If the user clicked No close without saving
                case MessageBoxResult.Cancel:
                    return false;                                       // If the user clicked Cancel stop the action
                default:
                    return true;
            }
        }





        /* Header Comment Reset Document
           Name: ResetDocument
           Parameters: None
           Return: void
           Description: This function resets the document by clearing the text box,
            setting the current file to "Untitled", updating the title, and resetting the isTextChanged flag.
         */
        private void ResetDocument()
        {
            textBox.Clear();          // Clear the text box
            currentFile = Untitled;   // Set the current file to "Untitled"
            UpdateTitle();            // Update the title
            isTextChanged = false;    // Reset the flag
        }




        /* Header Comment Load File
           Name: LoadFile
           Parameters: string fileName
           Return: void
           Description: This function loads a file from disk and displays its contents in the text box.
         */
        private void LoadFile(string fileName)
        {
            try
            {
                textBox.Text = File.ReadAllText(fileName); // Read the file and set the text box contents
                currentFile = fileName;                    // Set the current file
                UpdateTitle();                             // Update the title
                isTextChanged = false;                     // Reset the flag
            }
            catch (IOException ioEx)                       // Catch any IO exceptions
            {
                MessageBox.Show($"Error opening file: {ioEx.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            catch (UnauthorizedAccessException uaEx)       // Catch any UnauthorizedAccessException
            {
                MessageBox.Show($"You do not have permission to open this file: {uaEx.Message}", "Permission Denied", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }




        /* Header Comment Save File
           Name: SaveFile
           Parameters: string fileName
           Return: void
           Description: This function saves the contents of the text box to a file on disk.
         */
        private void SaveFile(string fileName)
        {
            try
            {
                File.WriteAllText(fileName, textBox.Text); // Write the text box contents to the file
                currentFile = fileName;                    // Set the current file
                UpdateTitle();                             // Update the title
                isTextChanged = false;                     // Reset the flag
            }
            catch (IOException ioEx)
            {
                MessageBox.Show($"Error saving file: {ioEx.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            catch (UnauthorizedAccessException uaEx)        // Catch any UnauthorizedAccessException
            {
                MessageBox.Show($"You do not have permission to save this file: {uaEx.Message}", "Permission Denied", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }





        /* Header Comment Window Closing Event
           Name: MainWindow_Closing
           Parameters: object sender, System.ComponentModel.CancelEventArgs e
           Return: void
           Description: This function is called when the window is about to close. 
           It prompts the user to save changes before closing the application.
         */
        private void MainWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (isTextChanged)                                 // If there are unsaved changes
            {
                bool shouldProceed = PromptSaveBeforeAction(); // Prompt the user to save changes
                if (!shouldProceed)
                {
                    e.Cancel = true;                           // Cancel the close operation if the user clicks Cancel
                }
            }
        }





        /* Header Comment Check And Prompt For Unsaved Changes
           Name: CheckAndPromptForUnsavedChanges
           Parameters: None
           Return: bool
           Description: This function checks if there are unsaved changes and prompts the user to save them. 
            It returns true if the action should proceed, and false if it should be stopped.
         */
        private bool CheckAndPromptForUnsavedChanges()
        {
            if (isTextChanged)                   // If there are unsaved changes
            {
                return PromptSaveBeforeAction(); // Return the result directly
            }
            return true;                         // No changes, proceed with the action
        }



        /* Header Comment Check Ctrl Shortcut
           Name: Check_Ctrl_Shortcut
           Parameters: object sender, KeyEventArgs e
           Return: void
           Description: This function checks for keyboard shortcuts and executes the corresponding command.
         */
        private void Check_Ctrl_Shortcut(object sender, KeyEventArgs e)
        {
            if ((Keyboard.Modifiers & ModifierKeys.Control) == ModifierKeys.Control &&
                (Keyboard.Modifiers & ModifierKeys.Shift) == ModifierKeys.Shift &&                           
                e.Key == Key.S)                                                                              // If the user presses Ctrl + Shift + S
            {
                SaveAsCommandExecuted(sender, e);                                                            // Call the Save As command
            }
            else if (e.Key == Key.N && (Keyboard.Modifiers & ModifierKeys.Control) == ModifierKeys.Control)  // If the user presses Ctrl + N
            {
                NewCommandExecuted(sender, e);                                                               // Call the New command
            }
            else if (e.Key == Key.O && (Keyboard.Modifiers & ModifierKeys.Control) == ModifierKeys.Control)  // If the user presses Ctrl + O
            {
                OpenCommandExecuted(sender, e);                                                              // Call the Open command
            }
            else if (e.Key == Key.F4 && (Keyboard.Modifiers & ModifierKeys.Alt) == ModifierKeys.Alt)         // If the user presses Alt + F4
            {
                ExitCommandExecuted(sender, e);                                                              // Call the Exit command
            }
            else if (e.Key == Key.S && (Keyboard.Modifiers & ModifierKeys.Control) == ModifierKeys.Control)  // If the user presses Ctrl + S
            {
                SaveCommandExecuted(sender, e);                                                              // Call the Save command
            }
        }
    }
}