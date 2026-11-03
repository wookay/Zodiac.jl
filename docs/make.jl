using Documenter
using Zodiac

makedocs(
    build = joinpath(@__DIR__, "local" in ARGS ? "build_local" : "build"),
    modules = [EmojiSymbols],
    clean = false,
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        assets = ["assets/custom.css"],
        size_threshold = 1_000_000,
    ),
    sitename = "Zodiac.jl 🤔",
    authors = "WooKyoung Noh",
    pages = Any[
        "Home" => "index.md",
    ],
)
