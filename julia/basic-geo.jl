using LinearAlgebra

f(x) = begin
    x = sort(x; rev=true)
    d = norm(x)
    return [
        1/2*(sum(x)-d),
        norm([d-x[1], d-x[2]])
    ]
end

g(x) = begin
    w = 2*x[1] + 1/2*(sqrt(4*x[1]^2 + x[2]^2) + sqrt(-4*x[1]^2 + x[2]^2))
    h = w - sqrt(-4*x[1]^2 + x[2]^2)
    return [w,h]
end


x = rand(1:0.1:100,2); 
display( sort(x; rev=true) ≈ (g∘f)(x) )
