{
  programs.zsh = {
    enable = true;
    autocd = false;
    defaultKeymap = "emacs";
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    # TODO: import the rest from the mac config
    envExtra = ''
      # initialize nix development shells with these aliases
      develop(){
        nix develop ~/.nix#$1 --show-trace
      }
      develop_init(){
        nix flake init --template $1 --show-trace && direnv allow
      }
      develop_create(){
        nix flake new --template $1 $2 --show-trace && direnv allow
      }

      # Download given URL as mp3 via youtube-dl into ~/Downloads
      yta(){
        yt-dlp -i -c -o "~/Downloads/%(title)s-%(id)s.%(ext)s" --extract-audio --audio-format mp3 --audio-quality 0 "$1"
      }
      # Download given URL as best single file video quality resolution via youtube-dl into ~/Downloads
      ytv(){
        yt-dlp "$1" -o "~/Downloads/%(title)s-%(id)s.%(ext)s"
      }
    '';

    initExtra = ''
      # tail with colours
      tailbat() {
        tail -f $1 | bat --paging=never -l log --style=plain
      }
    '';
  };
}
