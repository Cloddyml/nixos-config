{ ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = true;
      hostname = {
        ssh_only = false;
	format = "[$ssh_symbol$hostname]($style) ";
	style = "bold purple";
      };
      
      character = {
        success_symbol = "[ & ](bold green)";
	error_symbol = "[ & ](bold red)";
      };
      username = {
        show_always = true;
	format = "[$user]($style)@";
      };
      directory = {
        read_only = " 🔒";
	truncation_symbol = "…/";
      };
      git_status = {
        format = "([$all_status$ahead_behind]($style) )";
        style = "bold red";
        conflicted = "🏳️";
        ahead = "⇡\${count}";
        behind = "⇣\${count}";
        diverged = "⇕⇡\${ahead_count}⇣\${behind_count}";
        untracked = "?\${count}";
        stashed = "$";
        modified = "!\${count}";
        staged = "+\${count}";
        renamed = "»\${count}";
        deleted = "✘\${count}";
      };
      
      git_commit = {
        commit_hash_length = 7;
        format = "[\\($hash$tag\\)]($style) ";
        style = "bold green";
      };
    };
  };
}
