# Bamboo ESpec

Provides assertions for testing [Bamboo](https://github.com/thoughtbot/bamboo) with ESpec.


## Assertions

- [x] `have_been_delivered`
- [x] `have_from_address`
- [x] `have_subject`
- [x] `have_to_address`
- [x] `use_text_layout_module`
- [x] `use_text_layout_template`
- [x] `use_view_module`
- [x] `use_view_template`


## Installation

Add `bamboo_espec` as a test-only dependency in `mix.exs`:

```elixir
def deps do
  [
    {:bamboo_espec, "~> 0.1.0", only: :test},
  ]
end
```


## TODO

- [ ] Tests for all assertions


## Contributing

1. Before opening a pull request, please open an issue first.
2. Do the usual fork/add/fix/run tests dance, or whatever tickles your fancy. Tests are highly encouraged.
3. Open a PR.
4. Treat yourself. You deserve it.


## License

See the [LICENSE](LICENSE.md) file for license rights and limitations (MIT).
