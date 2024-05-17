#!/bin/bash


display_menu() {
    echo "Select an option:"
    echo "1) Open Web Browser"
    echo "2) Open Text Editor"
    echo "3) Open Terminal"
    echo "4) Exit"
}


open_browser() {

    firefox &
}


open_text_editor() {

    gedit &
}


open_terminal() {

    gnome-terminal &
}


while true; do
    display_menu
    read -p "Enter your choice [1-4]: " choice
    case $choice in
        1)
            open_browser
            ;;
        2)
            open_text_editor
            ;;
        3)
            open_terminal
            ;;
        4)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
