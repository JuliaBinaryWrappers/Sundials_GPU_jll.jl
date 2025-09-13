# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Sundials_GPU_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("Sundials_GPU")
JLLWrappers.@generate_main_file("Sundials_GPU", UUID("035518d0-5ae3-5af5-93bb-592bb84664f0"))
end  # module Sundials_GPU_jll
