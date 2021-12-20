println("############################################")
println("Testing nested subprograms.")

function nestedFunctionTest()
    x = 3
    println("x inside nestedFunctionTest: ", x)
    function innerFunction()
        # Following line prints 3 because innerFunction 
        # is inside nestedFunctionTest after definition
        # of x and the scope of x is between the definition
        # and the end of the function nestedFunctionTest. 
        # So innerFunction is inside the scope of x
        println("x inside innerFunction: ", x)
    end
    innerFunction()
end

nestedFunctionTest()

println("############################################")
println("Testing the scope of a local variable.")

function localVariableTest()
    try
        # Following line will not be executed because the scope of y
        # is between its definition and the end of the function.
        # This line is outside of this scope.
        println("y inside localVariableTest before definition: ", y)
    catch e 
        # Following line will be executed because the line 
        # inside the try block will give an error.
        println("y is not defined.")
    end
    y = 3
    # Following line will be executed because the scope of y
    # is between its definition and the end of the function.
    # This line is between the definition and the end.
    println("y inside localVariableTest after definition: ", y)
end

localVariableTest()
try
    # Following line will not be executed and give an error
    # Because the scope of y is from the defintion of y to 
    # the end of the function localVariableTest. 
    # This line is out of scope
    println("y after function call: ", y)
catch e
    # Following line will be executed because the line 
    # inside the try block will give an error.
    println("y is not defined outside foo.") 
end

println("############################################")
println("Testing parameter passing.")

function parameterPassingTest(z)
    z = 100
    # Following line prints 100 as expected
    println("z inside function: ", z)
end

z = 10
parameterPassingTest(z)
# Following line prints 10. Calling parameterPassingTest
# Does not make any change. Because Julia use pass-by-sharing
# to pass parameters.
println("z after function call: ", z)

println("############################################")
println("Testing keyword parameters and default parameters.")

# This function has one positional(a) and one keyword(b) parameters. 
function keywordParameters(a;b)
    println("b inside keywordParameters: ", b)
end

function defaultParametersTest(v=1917)
    println("v inside defaultParametersTest: ", v)
end

try
    # Below line gives an error because a keyword argument
    # cannot be called with positional arguments.
    keywordParameters(3, 5)
catch
    println("Error!")
end

# This is the right way of calling a keyword argument
keywordParameters(3; b=5)

# Also use of ; is optional. So this line also works
keywordParameters(3, b=5)
try
    # This line does not execute because a positional 
    # argument cannot be used as a keyword argument
    keywordParameters(a=5, b = 3)
catch
    println("Error!")
end
# The following function call prints 1972 as expected.
defaultParametersTest(1972)

# Following line prints 1917 because no arguments passed.
# So the default parameter is used.
defaultParametersTest()

println("############################################")
println("Testing closure.")

function outer()
    z = 0
    println("inside outer: ", z)
    function closure()
        z += 1
        println("inside closure: ", z)
        return z
    end
    return closure
end

# After executing blow line, closure() can be called
# from outside of outer()
v = outer()

# Every time below line is executed, z increments by 1
v()
v()
v()

# t starts from 1 again. A new z will be created
t = outer()

v()
v()
t()
t()