#!/bin/bash

declare -r builtin
declare -r declare
declare -r set
declare -r fake_unset
declare -r type
declare -r typeset

function abcdmagic()
{
	:
}

function builtin()
{
	local fake_a fake_b

	unset command
	case $1 in 
		"declare"|"set"|"unset"|"command"|"type"|"typeset")
        		fake_a="$(command builtin $1 $2)"
        		fake_b=${fake_a/abcdmagic?()*/}
			echo -n "$fake_b"
			#. builtin.sh
                        command()
                        {
                                case $1 in
                                        "builtin")
                                                builtin $2 $3
                                                return ;;
                                        "declare")
                                                declare $2 $3
                                                return ;;
                                        "set")
                                                set $2 $3
                                                return ;;
                                        "unset")
                                                fake_unset $2 $3
                                                . builtin.sh
                                                return ;;
                                        "type")
                                                type $2 $3
                                                return ;;
                                        "typeset")
                                                typeset $2 $3
                                                return ;;
                                        "command")
                                                fake_command $2 $3
                                                . builtin.sh
                                                return ;;
                                        *)
                                                unset command
                                                command $2 $3
                                                . builtin.sh
                                                return ;;
                                esac
                        }

			return ;;
		"builtin")
			echo "bash: builtin: builtin: syntax error, bash($BASH_VERSION) is not support."
			#. builtin.sh
                        command()
                        {
                                case $1 in
                                        "builtin")
                                                builtin $2 $3
                                                return ;;
                                        "declare")
                                                declare $2 $3
                                                return ;;
                                        "set")
                                                set $2 $3
                                                return ;;
                                        "unset")
                                                fake_unset $2 $3
                                                . builtin.sh
                                                return ;;
                                        "type")
                                                type $2 $3
                                                return ;;
                                        "typeset")
                                                typeset $2 $3
                                                return ;;
                                        "command")
                                                fake_command $2 $3
                                                . builtin.sh
                                                return ;;
                                        *)
                                                unset command
                                                command $2 $3
                                                . builtin.sh
                                                return ;;
                                esac
                        }

			return ;;
		*)
			command builtin $1 $2
			#. builtin.sh
                        command()
                        {
                                case $1 in
                                        "builtin")
                                                builtin $2 $3
                                                return ;;
                                        "declare")
                                                declare $2 $3
                                                return ;;
                                        "set")
                                                set $2 $3
                                                return ;;
                                        "unset")
                                                fake_unset $2 $3
                                                . builtin.sh
                                                return ;;
                                        "type")
                                                type $2 $3
                                                return ;;
                                        "typeset")
                                                typeset $2 $3
                                                return ;;
                                        "command")
                                                fake_command $2 $3
                                                . builtin.sh
                                                return ;;
                                        *)
                                                unset command
                                                command $2 $3
                                                . builtin.sh
                                                return ;;
                                esac
                        }

			;;
	esac
}

function declare()
{
	local fake_a fake_b

	unset command
	case $1 in 
		""|"-f"|"-F")
        		fake_a="$(command declare $1 $2)"
        		fake_b=${fake_a/abcdmagic?()*/}
			echo -n "$fake_b"
			#. builtin.sh
                        command()
                        {
                                case $1 in
                                        "builtin")
                                                builtin $2 $3
                                                return ;;
                                        "declare")
                                                declare $2 $3
                                                return ;;
                                        "set")
                                                set $2 $3
                                                return ;;
                                        "unset")
                                                fake_unset $2 $3
                                                . builtin.sh
                                                return ;;
                                        "type")
                                                type $2 $3
                                                return ;;
                                        "typeset")
                                                typeset $2 $3
                                                return ;;
                                        "command")
                                                fake_command $2 $3
                                                . builtin.sh
                                                return ;;
                                        *)
                                                unset command
                                                command $2 $3
                                                . builtin.sh
                                                return ;;
                                esac
                        }

			return ;;
		*)
        		command declare $1 $2
			#. builtin.sh
                        command()
                        {
                                case $1 in
                                        "builtin")
                                                builtin $2 $3
                                                return ;;
                                        "declare")
                                                declare $2 $3
                                                return ;;
                                        "set")
                                                set $2 $3
                                                return ;;
                                        "unset")
                                                fake_unset $2 $3
                                                . builtin.sh
                                                return ;;
                                        "type")
                                                type $2 $3
                                                return ;;
                                        "typeset")
                                                typeset $2 $3
                                                return ;;
                                        "command")
                                                fake_command $2 $3
                                                . builtin.sh
                                                return ;;
                                        *)
                                                unset command
                                                command $2 $3
                                                . builtin.sh
                                                return ;;
                                esac
                        }

			return ;;
	esac
}

function typeset()
{
        local fake_a fake_b

	unset command
        case $1 in
                ""|"-f"|"-F")
                        fake_a="$(command declare $1 $2)"
                        fake_b=${fake_a/abcdmagic?()*/}
                        echo -n "$fake_b"
			#. builtin.sh
                        command()
                        {
                                case $1 in
                                        "builtin")
                                                builtin $2 $3
                                                return ;;
                                        "declare")
                                                declare $2 $3
                                                return ;;
                                        "set")
                                                set $2 $3
                                                return ;;
                                        "unset")
                                                fake_unset $2 $3
                                                . builtin.sh
                                                return ;;
                                        "type")
                                                type $2 $3
                                                return ;;
                                        "typeset")
                                                typeset $2 $3
                                                return ;;
                                        "command")
                                                fake_command $2 $3
                                                . builtin.sh
                                                return ;;
                                        *)
                                                unset command
                                                command $2 $3
                                                . builtin.sh
                                                return ;;
                                esac
                        }

                        return ;;
                *)
                        command typeset $1 $2
			#. builtin.sh
                        command()
                        {
                                case $1 in
                                        "builtin")
                                                builtin $2 $3
                                                return ;;
                                        "declare")
                                                declare $2 $3
                                                return ;;
                                        "set")
                                                set $2 $3
                                                return ;;
                                        "unset")
                                                fake_unset $2 $3
                                                . builtin.sh
                                                return ;;
                                        "type")
                                                type $2 $3
                                                return ;;
                                        "typeset")
                                                typeset $2 $3
                                                return ;;
                                        "command")
                                                fake_command $2 $3
                                                . builtin.sh
                                                return ;;
                                        *)
                                                unset command
                                                command $2 $3
                                                . builtin.sh
                                                return ;;
                                esac
                        }

                        return ;;
        esac
}

function type()
{
        case $1 in
                "builtin"|"declare"|"set"|"unset"|"type"|"typeset")
                        echo "$1 is a shell builtin"
                        return ;;
                *)
			unset command
                        command type $1 $2
			#. builtin.sh
                        command()
                        {
                                case $1 in
                                        "builtin")
                                                builtin $2 $3
                                                return ;;
                                        "declare")
                                                declare $2 $3
                                                return ;;
                                        "set")
                                                set $2 $3
                                                return ;;
                                        "unset")
                                                fake_unset $2 $3
                                                . builtin.sh
                                                return ;;
                                        "type")
                                                type $2 $3
                                                return ;;
                                        "typeset")
                                                typeset $2 $3
                                                return ;;
                                        "command")
                                                fake_command $2 $3
                                                . builtin.sh
                                                return ;;
                                        *)
                                                unset command
                                                command $2 $3
                                                . builtin.sh
                                                return ;;
                                esac
                        }

                        return ;;
        esac
}

function set()
{
        local fake_a fake_b

	unset command
        case $1 in
                "")
                        fake_a="$(command set)"
                        fake_b=${fake_a/abcdmagic?()*/}
                        echo -n "$fake_b"
			#. builtin.sh
			command()
			{
        			case $1 in
                			"builtin")
                        			builtin $2 $3
                        			return ;;
                			"declare")
                        			declare $2 $3
                        			return ;;
                			"set")
                        			set $2 $3
                        			return ;;
                			"unset")
                        			fake_unset $2 $3
                        			. builtin.sh
                        			return ;;
                			"type")
                        			type $2 $3
                        			return ;;
                			"typeset")
                        			typeset $2 $3
                        			return ;;
                			"command")
                        			fake_command $2 $3
                        			. builtin.sh
                        			return ;;
                			*)
                        			unset command
                        			command $2 $3
                        			. builtin.sh
                        			return ;;
        			esac
			}			

                        return ;;
                *)
			echo $1 $2
                        command set $1 $2
			#. builtin.sh
                        command()
                        {
                                case $1 in
                                        "builtin")
                                                builtin $2 $3
                                                return ;;
                                        "declare")
                                                declare $2 $3
                                                return ;;
                                        "set")
                                                set $2 $3
                                                return ;;
                                        "unset")
                                                fake_unset $2 $3
                                                . builtin.sh
                                                return ;;
                                        "type")
                                                type $2 $3
                                                return ;;
                                        "typeset")
                                                typeset $2 $3
                                                return ;;
                                        "command")
                                                fake_command $2 $3
                                                . builtin.sh
                                                return ;;
                                        *)
                                                unset command
                                                command $2 $3
                                                . builtin.sh
                                                return ;;
                                esac
                        }

                        return ;;
        esac
}

function fake_unset()
{
        case $1 in
                "builtin"|"declare"|"command"|"set"|"unset"|"type"|"typeset")
                        echo "bash: syntax error, bash($BASH_VERSION) is not support."
                        return ;;
                *)
                        unset $1 $2
                        return ;;
        esac
}

function fake_command()
{
        case $1 in
                "builtin"|"declare"|"command"|"set"|"unset"|"type"|"typeset")
                        echo "bash: syntax error, bash($BASH_VERSION) is not support."
                        return ;;
                *)
			unset command
                        command $1 $2
                        command()
                        {
                                case $1 in
                                        "builtin")
                                                builtin $2 $3
                                                return ;;
                                        "declare")
                                                declare $2 $3
                                                return ;;
                                        "set")
                                                set $2 $3
                                                return ;;
                                        "unset")
                                                fake_unset $2 $3
                                                . builtin.sh
                                                return ;;
                                        "type")
                                                type $2 $3
                                                return ;;
                                        "typeset")
                                                typeset $2 $3
                                                return ;;
                                        "command")
                                                fake_command $2 $3
                                                . builtin.sh
                                                return ;;
                                        *)
                                                unset command
                                                command $2 $3
                                                . builtin.sh
                                                return ;;
                                esac
                        }

                        return ;;
        esac
}

function command()
{
        case $1 in
                "builtin")
			builtin $2 $3
			return ;;
                "declare")
			declare $2 $3
			return ;;
		"set")
			set $2 $3
			return ;;
		"unset")
			fake_unset $2 $3
			. builtin.sh
			return ;;
		"type")
			type $2 $3
			return ;;
		"typeset")
			typeset $2 $3
			return ;;
		"command")
			fake_command $2 $3
			return ;;
                *)
			unset command
			command $2 $3
			. builtin.sh
			return ;;
        esac
}