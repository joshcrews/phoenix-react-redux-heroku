# Phoenix + React + Redux + Heroku

A "fork" in one sense of 

https://github.com/slashdotdash/phoenix-react-redux-example
http://10consulting.com/2015/11/18/phoenix-react-redux-example/

With the main change being getting it heroku ready

## Heroku deployment

What I did:

```
heroku buildpacks:set https://github.com/gjaldon/phoenix-static-buildpack
heroku buildpacks:add --index 1 https://github.com/HashNuke/heroku-buildpack-elixir
```

create a compile file in the project root with these contents:

```
webpack -p
mix phoenix.digest
```

You should also follow the Phoenix Guides on Heroku for the other steps, especially the part about creating a SECRET_KEY_BASE ENV variable: http://www.phoenixframework.org/docs/heroku#section-making-our-project-heroku-ready

## Funny business with web/static/vendor/phoenix.js

There is a conflict between the babel preprocessor and the phoenix.js on phoenix 1.0.3, so I vendored a working version.  The problem with phoenix.js is fixed on it's master branch, but not released as of Nov 27 2015.