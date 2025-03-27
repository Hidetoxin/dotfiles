{...}: {

  imports = [
    ../../../modules/darwin/core/users  # setup `darwin` host's user and it's home
    ../../../modules/darwin/core/system  # setup `darwin` specific system preferences
    ../../../modules/darwin/core/security  # setup `darwin` specific security options
    ../../../modules/darwin/core/services  # setup `darwin` specific services
    ../../../modules/darwin/core/homebrew  # setup `darwin` packages by using `homebrew`
    ../../../modules/darwin/core/environment # setup `darwin` packages by using `nixpkgs`
  ];

}
