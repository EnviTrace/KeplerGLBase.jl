using KeplerGLBase
using Aqua
# using Documenter
using Test

##

#=
ambiguities is tested separately since it defaults to recursive=true
but there are packages that have ambiguities that will cause the test
to fail
=#
Aqua.test_ambiguities(KeplerGLBase; recursive=false) 
Aqua.test_all(KeplerGLBase; ambiguities=false)

tests = [
        "KeplerGLBase.jl"
    ]

for test in tests
    @testset "$test" begin
        include(test)
    end
end

# DocMeta.setdocmeta!(
#     KeplerGLBase,
#     :DocTestSetup,
#     quote
#         using KeplerGLBase
#     end;
#     recursive=true
# )

# @testset "KeplerGLBase.jl Documentation" begin
#     doctest(KeplerGLBase)
# end