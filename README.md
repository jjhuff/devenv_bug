1. enter a devenv shell (via direnv or manually)
2. `env | grep TEST` # should show `TEST=main`
3. make a `devenv.local.nix`:

```nix
{
  env.TEST = "local";
  devProd = {
    enable = false;
  };
}
```

4. `env | grep TEST` # should show `TEST=local`
