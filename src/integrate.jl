## http://docs.sympy.org/0.7.2/modules/integrals/integrals.html


integrals_sympy_methods = (:integrate, :Integral,
                           :mellin_transform,
                           :inverse_mellin_transform,
                           :laplace_transform,
                           :inverse_laplace_transform,
                           :fourier_transform,
                           :inverse_fourier_transform,
                           :sine_transform,
                           :inverse_sine_transform,
                           :cosine_transform,
                           :inverse_cosine_transform,
                           :hankel_transform,
                           :inverse_hankel_transform,
                           :line_integrate,
                           :deltaintegrate,
                           :ratint,
                           :heurisch,
                           :trigintegrate
                           )


integrals_instance_methods = (:as_sum,
                              :limits,
                              :transform,
                              :variables)





## Alternate interface for simple integral
"""

The `integrate` function has its limits specified with tuples of the type `(var, a, b)`. This
profides a simpler interface for one-dimensional integrals: `integrate(ex, var, a, b)`

"""
integrate(s::Sym, x::Sym, from::SymOrReal, to::SymOrReal) = integrate(s, (x, convert(Sym,from), convert(Sym,to)))

"Symbolically integrate a function"
function integrate(f::Function)
    x = Sym("x")
    integrate(f(x), x)
end

"Symbolically integrate a function over `[a,b]`"
function integrate(f::Function, from::SymOrReal, to::SymOrReal)
    x = Sym("x")
    integrate(f(x), x, from, to)
end



## summation
summations_sympy_methods = (
                            :summation, :Sum
                            )

summations_instance_methods  = (
                                :euler_maclaurin,
                                )
summations_object_properties  = (:is_zero, :is_number)

