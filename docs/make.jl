using ApplySOM
using Documenter

DocMeta.setdocmeta!(ApplySOM, :DocTestSetup, :(using ApplySOM); recursive=true)

makedocs(;
    modules=[ApplySOM],
    authors="Kwang-Seuk <kjeong@bhug.ac.kr> and contributors",
    repo="https://github.com/ecoinfos/ApplySOM.jl/blob/{commit}{path}#{line}",
    sitename="ApplySOM.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ecoinfos.github.io/ApplySOM.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ecoinfos/ApplySOM.jl",
    devbranch="master",
)
