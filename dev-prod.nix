{ pkgs, lib, config, ... }:
let
  cfg = config.devProd;
in
{
  options.devProd = {
    enable = lib.mkEnableOption "Enable dev-prod mode";
  };

  config = lib.mkIf cfg.enable {
    env.TEST="dev-prod";
  };
}
