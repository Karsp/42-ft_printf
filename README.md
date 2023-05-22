# What is printf?
The C library function printf() sends formatted output to stdout.
In other words,  this function print the content sended to this function to the screen (terminal console). It can optionally contain embedded format tags that are replaced by the values specified in subsequent additional arguments and formatted as requested.
 * You can look the [list below](#list-flags) to understand how these flags works.

# Why reprogramming it?
Reprogramming a function allows you to fully understand how it work, how it manage errors and how you can adjust to an specific project in case you need it.
Is one of the learning bases of  [42 methodology,](https://github.com/Karsp/42-0_What-Where-Why) you are not allow to use a function that you can't make yourself.

<a name="list-flags"></a>
| Flags | Output |
|----------|----------|
| %c    | Print a single character  |
| %s   | Prints a string   |
| %d   | Prints a decimal (base 10) number    |
| %i    | Prints a integer number    |
| %u    | Prints a decimal number (base 10) without sign    |
| %x   | Prints a hexadecimal number (base 16) in lowercase    |
| %X    | Prints a hexadecimal number (base 16) in uppercase    |
| %p    | The void * pointer given as an argument is printed in hexadecimal format    |

### Special cases

|Case | Output|
|-----|--------|
| %%  | Print the character '%' |
| %s, NULL | When there is a %s flag and it receive a NULL element as argument. Print the string '(null)'  and return 6 |
| NULL | Return -1 and prints nothing. Original functions generates a SEGFAULT error |

# What I've learned?
### Variadic functions
Variadic functions are functions that can take a variable number of arguments. In C programming, a variadic function adds flexibility to the program. It takes one fixed argument and then any number of arguments can be passed.

### Convert decimal number to hexadecimal
Learning how to make this conversion, I've learned how to convert any number to any base.
