X="global"

function hello {
    echo "Hello"
    local VAR="Hi"
    echo $VAR  # Hi
    echo $X    # global
}

hello 
echo $VAR #  (You'll see it does not actually outputs the variable)
echo $X   # global
