# ReactWebpack

To start your Phoenix app:

  1. Install dependencies with `mix deps.get`
  2. Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  3. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Heroku deployment

```
heroku buildpacks:set https://github.com/gjaldon/phoenix-static-buildpack
heroku buildpacks:add --index 1 https://github.com/HashNuke/heroku-buildpack-elixir
```

create a compile file in the project root with these contents:

```
webpack -p
mix phoenix.digest
```

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
