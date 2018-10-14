# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     App.Repo.insert!(%App.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias App.Magic.Card
alias App.Repo

%Card{name: "Assassin's Trophy", cost: "BG"} |> Repo.insert!
%Card{name: "Doom Whisperer", cost: "3BB"} |> Repo.insert!
