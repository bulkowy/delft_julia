
function createXVector(n)
    return sort(rand(n))
end

function u(x)
    return -1*((x-1)^2) * sin(pi*x)
end

function f(x)
    return 2*sin(pi*x) + 4*pi*(x-1)*cos(pi*x) - (pi^2)*((x-1)^2)*sin(pi*x)
end

function u2(x)
    return (1/pi^2) * sin(pi*x) + x
end

function f2(x)
    return sin(pi*x)
end

function createmesh(x)
    p = Matrix(undef, size(x)[1]-1, 2)
    e = Matrix(undef, size(x)[1]-1, 2)

    for i in 1:(size(x)[1]-1)
        e[i, 1] = i
        e[i, 2] = i+1
        p[i, 1] = x[i]
        p[i, 2] = x[i+1]
    end

    return p, e
end

function aeiFunc(x1, x2)
    return (1/(x2 - x1))*[1 -1; -1 1]
end

function feiFunc(x1, x2, f)
    return ((x2-x1)/2)*[f(x1); f(x2)]
end

function assemblyA(p, e, aeiFunc)
    A = fill(0.0, size(p)[1]+1, size(p)[1]+1)

    for i in 1:size(p)[1]
        aei = aeiFunc(p[i, 1], p[i, 2])
        for j = 1:2, k = 1:2
            A[e[i, j], e[i, k]] = A[e[i, j], e[i, k]] + aei[j, k]
        end
    end

    return A
end

function assemblyF(p, e, feiFunc, fFunc)
    F = fill(0.0, size(p)[1]+1, 1)

    for i in 1:size(p)[1]
        fei = feiFunc(p[i, 1], p[i, 2], fFunc)
        for j = 1:2
            F[e[i, j]] = F[e[i, j]] + fei[j]
        end
    end

    return F
end

function treatBoundaries(A, F)
    A[1, 1] = 1
    A[1, 2] = 0
    F[1] = 0

    return A, F
end

function calculateH(A, F)
    return A \ F
end

function solve1DFEM(n, func)
    x = createXVector(n)
    p, e = createmesh(x)
    A = assemblyA(p, e, aeiFunc)
    F = assemblyF(p, e, feiFunc, func)
    A, F = treatBoundaries(A, F)

    return x, calculateH(A, F)
end