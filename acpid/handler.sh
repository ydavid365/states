#!/bin/sh
# Default acpi script that takes an entry for all actions

set $*

case "$1" in
    button/power)
        case "$2" in
            PBTN|PWRF)
                logger "PowerButton pressed: $2"
                poweroff
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
    button/sleep)
        case "$2" in
            SLPB|SBTN)
                echo -n mem >/sys/power/state
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
    ac_adapter)
        case "$2" in
            AC|ACAD|ADP0)
                case "$4" in
                    00000000)
                        logger 'AC adapter offline'
                        ;;
                    00000001)
                        logger 'AC adapter online'
                        ;;
                esac
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
    battery)
        case "$2" in
            BAT0)
                case "$4" in
                    00000000)
                        logger 'Battery online'
                        ;;
                    00000001)
                        logger 'Battery offline'
                        ;;
                esac
                ;;
            CPU0)
                ;;
            *)  logger "ACPI action undefined: $2" ;;
        esac
        ;;
    button/lid)
        _xauth=$(ps -C xinit -f --no-header | sed -n 's/.*-auth //; s/ -[^ ].*//; p')
        case "$3" in
            close)
                logger 'LID closed'
                XAUTHORITY=$_xauth xset -display :0 dpms force off
                ;;
            open)
                XAUTHORITY=$_xauth xset -display :0 dpms force on
                logger 'LID opened'
                ;;
            *)
                logger "ACPI action undefined: $3"
                ;;
      esac
      ;;
    *)
        logger "ACPI group/action undefined: $1 / $2"
        ;;
esac

# vim:set ts=4 sw=4 ft=sh et:
