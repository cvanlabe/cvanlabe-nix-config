# Cedric's NIX Config

My config of how I setup a new system typically.

Heavily inspired by [Sam Grimee's config](https://github.com/sgrimee/nix-unified).

Get started:
  ```sh
  $ sh utils/darwin-bootstrap.sh
  $ nix run nix-darwin -- switch --flake .#
  ```


After changing your flake, re-run it:
   ```sh
   $ darwin-rebuild switch --show-trace --flake .
   ```

   