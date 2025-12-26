# TIX Fish Completion
complete -c tix -f
complete -c tix -n "__fish_use_subcommand" -a "add ls done rm clear undo done-all edit priority move search filter tags stats report"
complete -c tix -n "__fish_use_subcommand" -l help -d "Show help"
complete -c tix -n "__fish_use_subcommand" -l version -d "Show version"
complete -c tix -n "__fish_seen_subcommand_from add" -s p -l priority -a "high medium low"
complete -c tix -n "__fish_seen_subcommand_from add" -s t -l tag -d "Add tag"
complete -c tix -n "__fish_seen_subcommand_from ls" -s a -l all -d "Show all tasks"
