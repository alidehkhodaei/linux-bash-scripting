# Linux Bash Scripting

## 1. First Script

```bash
echo "Hello!"
```

## 2. Keyboard Input

```bash
echo "Enter your name"
read name
echo "Your name is $name"
```

## 3. Shell Menu

```bash
echo "Choose color"
select color in red green blue white
do
  break
done
echo "You chose $color"
```

## 4. For Loop

#### Example 1
```bash
for name in bob tom harry
do
 echo "Hello $name"
done 
```

#### Example 2
```bash
for i in {1..10}
do
 echo "$i"
done 
```

#### Example 3
```bash
for i in {1..10..2}
do
 echo "$i"
done 
```
  
## 5. If Statements

```bash
echo -e "Guess number:\c"
read guess
if [ $guess = 6 ]
 then
 echo "Correct"
elif [ $guess != 6 ]
 then
 echo "False"
fi
```
## 6. Lists

```bash
colors=(red blue green yellow)

for color in ${colors[*]}
do
  echo "$color"
done  
```

## 7. Strings

```bash
string="Ali"
echo $string # Ali
string2=${string:0:1}
echo $string2 # A
```

## 8. Functions

#### Example 1

```bash
function hello {
    echo "Hello"
}

hello # Hello
```

#### Example 2

```bash
function hello {
    echo "Hello $1"
}

hello "Ali"  # Hello Ali
```

#### Example 3

```bash
function hello {
    echo "Hello $1 and $2"
}

hello "Ali" "Reza" # Hello Ali and Reza
```

#### Example 4

```bash

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

```

## 9. Files

#### Read file
```bash
file="test.txt"
while read line; do
echo $line
done < $file
```

#### Create file and Add text to file

```bash
file="test.txt"
echo "this is a test">>$file
cat $file
```

#### Create file and remove before text if file is exist

```bash
file="test.txt"
if [ -f $file ]; then
  echo "File exists, removing"
  rm -r $file
fi  
echo "this is a test">>$file
cat $file
```
