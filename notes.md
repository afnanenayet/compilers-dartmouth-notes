# CS 57 Notes

## 09/12/2018

Introduction to compilers (broad overview).

Compilers consist of: - frontend - lexical analysis - syntactic analysis - outputs IR - backend - takes IR - outputs optimized machine code

### Links

- [introduction to compilers](http://cs.lmu.edu/~ray/notes/introcompilers/)

## 09/14/2018

Introduction to git and Makefiles

Git is a distributed version control system, and will be used to submit
assignments for the class.

Makefiles are a build system that automatically resolve dependencies in
build rules in order to create what you want.

### Links

- [atlassian git tutorials](https://www.atlassian.com/git/tutorials)
- [official git reference](https://git-scm.com/docs)
- [Wooster makefile tutorial](https://www.wooster.edu/_media/files/academics/areas/computer-science/resources/makefile-tut.pdf)
- [Make and C tutorial](https://randu.org/tutorials/c/make.php)

## 09/17/2018

Finite automata and regular expressions

### Links

- [Chalmers intro to FA](http://www.cse.chalmers.se/~coquand/AUTOMATA/o2.pdf)
- [Rochester | Finite Automata](https://www.cs.rochester.edu/~nelson/courses/csc_173/fa/fa.html)
- [(Video) Neso Academy | Finite Automata](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=16&cad=rja&uact=8&ved=2ahUKEwjEiZbFwdndAhUtmeAKHUowAA4QwqsBMA96BAgAEAc&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DQa6csfkK7_I&usg=AOvVaw2W7Xr32MRoPzqTG_2DtTv4)
- [Stanford intro to FA](http://infolab.stanford.edu/~ullman/ialc/spr10/slides/fa2.pdf)
- [Good explanation of Epsilon transitions](https://math.stackexchange.com/questions/23191/understanding-epsilon-transitions-in-a-finite-state-automaton)

## 09/19/2018

Introduction to lex/flex

If you have a Mac:

`brew install flex`

To get this tool to show up in your path:

```sh
echo 'export PATH="/usr/local/opt/flex/bin:$PATH"' >> ~/.bashrc
```

Note that to compile files using flex, you will need to provide the directory
to the library and instruct the compiler to use it. So if we had some file
`example.l`, we would perform the following steps to compile it with flex:

_Note that from this point forward, lex and flex will be use interchangeably._

```sh
flex example.l  # produces yy.lex.c
clang yy.lex.c -L/usr/local/opt/flex/lib -lfl  # produces `a.out`
```

### Links

- [video tutorial on lex/flex](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=11&cad=rja&uact=8&ved=2ahUKEwjD7IicxNndAhUiZN8KHU6HAaI4ChC3AjAAegQICRAB&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D54bo1qaHAfk&usg=AOvVaw0a1wLMzl4wKREvlmIdE146)
- [short lex tutorial](http://xahlee.info/parser/lex_tutorial.html)
- [long, comprehensive tutorial on lex/yacc](https://www.epaperpress.com/lexandyacc/download/LexAndYaccTutorial.pdf)

## 09/24/2018

Introduction to bison/yacc

To install bison on MacOS, just install with Homebrew:

```sh
brew install bison
```

Now, put the path to bison in your `$PATH`:

```sh
echo 'export PATH="/usr/local/opt/bison/bin:$PATH"' >> ~/.bashrc
```

Consume grammar files with bison with the following command
(assuming we have some `example.y`):

```sh
bison -d example.y
```

### Links

- [tutorialspoint intro to everything compilers](https://www.tutorialspoint.com/compiler_design/compiler_design_bottom_up_parser.htm)
- [UCR bison tutorial with calculator example](http://alumni.cs.ucr.edu/~lgao/teaching/bison.html)
