while true; do    
    echo "  _________                                                                                    "
    echo " /   _____/ ______________  __ ___________    _____   ____   ____ _____     ____   ___________ "
    echo " \\_____  \\_/ __ \\_  __ \\  \\/ // __ \\_  __ \\  /     \\_/ __ \\ /    \\\\__   \\   / ___\\_/ __ \\_  __ \\"
    echo " /        \\  ___/|  | \\/\\   /\\  ___/|  | \\/ |  Y Y  \\  ___/|   |  \\/ __ \\_/ /_/  >  ___/|  | \\/"
    echo "/_______  /\\___  >__|    \\_/  \\___  >__|    |__|_|  /\\___  >___|  (____  /\\___  / \\___  >__|   "
    echo "        \\/     \\/                 \\/              \\/     \\/     \\/     \\//_____/      \\/       "
    echo ""
    echo "Github: jasiukiewicztymon"
    echo ""
    echo ""
    echo " [1] - Setup one service"
    echo " [2] - Do a full installation"
    echo " [3] - Exit"
    echo ""
    read choice

    case $choice in 
        "1") 
            clear
            echo " [1] - Setup Apache2 service"
            echo " [2] - Setup Nginx service"
            echo " [3] - Setup Mongo Database service"
            echo " [4] - Setup SQL Database service"
            echo " [5] - Setup Node JS service"
            echo " [6] - Setup PHP service"
            echo " [7] - Exit"
            echo "" 
            read servicechoice
            echo ""
            echo ""

            case $servicechoice in 
                "1")
                    echo "Instaling Apache2..."
                    sh ./setup/apache-setup.sh
                ;;
                "2")
                    echo "Instaling Nginx..."
                    sh ./setup/nginx-setup.sh
                ;;
                "3")
                    echo "Instaling Mongo Database..."
                    sh ./setup/mongo-setup.sh
                ;;
                "4")
                    echo "Instaling SQL Database..."
                    sh ./setup/sql-setup.sh
                ;;
                "5")
                    echo "Instaling Node JS..."
                    sh ./setup/node.js-setup.sh
                ;;
                "6")
                    echo "Instaling PHP..."
                    sh ./setup/php-setup.sh
                ;;
                "7")
                    clear
                    continue
                ;;
                *)
                ;;
            esac
            clear
        ;;
        "2")
            clear
            echo " Do you want setup Apache2 service [y/Y]: "
            read boolchoice 
            if [ "$boolchoice" = "Y" ] || [ "$boolchoice" = "y" ]
            then
                sh ./setup/apache-setup.sh
            fi
            echo " Do you want setup Nginx service [y/Y]: "
            read boolchoice 
            if [ "$boolchoice" = "Y" ] || [ "$boolchoice" = "y" ]
            then
                sh ./setup/nginx-setup.sh
            fi
            echo " Do you want setup Mongo Database service [y/Y]: "
            read boolchoice 
            if [ "$boolchoice" = "Y" ] || [ "$boolchoice" = "y" ]
            then
                sh ./setup/mongo-setup.sh
            fi
            echo " Do you want setup SQL Database service [y/Y]: "
            read boolchoice 
            if [ "$boolchoice" = "Y" ] || [ "$boolchoice" = "y" ]
            then
                sh ./setup/sql-setup.sh
            fi
            echo " Do you want setup Node JS service [y/Y]: "
            read boolchoice 
            if [ "$boolchoice" = "Y" ] || [ "$boolchoice" = "y" ]
            then
                sh ./setup/node.js-setup.sh
            fi
            echo " Do you want setup PHP service [y/Y]:"
            read boolchoice 
            if [ "$boolchoice" = "Y" ] || [ "$boolchoice" = "y" ]
            then
                sh ./setup/php-setup.sh
            fi
            clear
        ;;
        "3")
            clear
            break
        ;;
        *)
            clear
            echo "Invalid choice"
        ;;
    esac
done
