FROM elixir:1.7.3

WORKDIR /app

ADD mix.exs mix.exs
ADD mix.lock mix.lock

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix deps.get

ADD . /app

EXPOSE 4000

CMD mix phx.server
