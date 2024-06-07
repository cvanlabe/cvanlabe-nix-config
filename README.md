# Cedric's NIX Config

My config of how I setup a new system typically, latest setup mainly focused on my work at Elisity.

Get started:
  ```sh
  $ sh utils/darwin-bootstrap.sh
  $ nix run nix-darwin -- switch --flake .#
  ```


After changing your flake, re-run it:
   ```sh
   $ darwin-rebuild switch --show-trace --flake .
   ```

or the newly created alias `$ nixswitch` .