*This project has been created as part of the 42 curriculum by joaooli2.*

# Libft

## Description

**Libft** is the first project of the 42 curriculum (42 Porto). The goal is to recode a set of standard C library functions, plus additional utility and linked-list functions, and compile them into a static library (`libft.a`) that can be reused in all future 42 projects.

The project teaches the fundamentals of C: pointers, dynamic memory allocation, string and memory manipulation, file descriptors, linked lists, Makefiles and static libraries. Each function must follow the 42 Norm and behave like its original libc counterpart (where one exists), including edge cases.

## Instructions

### Compilation

Clone the repository and build the library with the included `Makefile`:

```bash
git clone https://github.com/joao-afonso-dev/Libft.git
cd Libft
make
```

### Makefile rules

| Rule | Description |
|------|-------------|
| `make` / `make all` | Compiles Parts 1, 2 and 3 and generates `libft.a` |
| `make clean` | Removes all object (`.o`) files |
| `make fclean` | Removes object files and `libft.a` |
| `make re` | Rebuilds the library from scratch |

### Usage

Include the header and link against the archive:

```c
#include "libft.h"

int main(void)
{
    ft_putendl_fd("Hello, 42!", 1);
    return (0);
}
```

```bash
cc -Wall -Wextra -Werror main.c -L. -lft -o app
```

## Library description

### Part 1: Libc functions

Re-implementations of standard functions, with the same prototypes and behavior as the originals (prefixed with `ft_`).

| Category | Function | Description |
|----------|----------|-------------|
| Character checks | `ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint` | Test whether a character belongs to a given class |
| Character conversion | `ft_toupper`, `ft_tolower` | Convert a letter to upper or lower case |
| Strings | `ft_strlen` | Length of a string |
| | `ft_strchr`, `ft_strrchr` | Find the first / last occurrence of a character |
| | `ft_strncmp` | Compare up to `n` characters of two strings |
| | `ft_strnstr` | Locate a substring within the first `n` characters |
| | `ft_strlcpy`, `ft_strlcat` | Size-bounded copy / concatenation |
| | `ft_strdup` | Duplicate a string using `malloc` |
| Memory | `ft_memset`, `ft_bzero` | Fill memory with a byte / with zeros |
| | `ft_memcpy`, `ft_memmove` | Copy memory (`memmove` handles overlapping areas) |
| | `ft_memchr`, `ft_memcmp` | Search / compare memory areas |
| | `ft_calloc` | Allocate zero-initialized memory |
| Conversion | `ft_atoi` | Convert a string to an integer |

### Part 2: Additional functions

Functions that are not in libc, or that are part of it in a different form.

| Function | Description |
|----------|-------------|
| `ft_substr` | Returns a substring from a string |
| `ft_strjoin` | Concatenates two strings into a new one |
| `ft_strtrim` | Trims a set of characters from both ends of a string |
| `ft_split` | Splits a string into a NULL-terminated array using a delimiter |
| `ft_itoa` | Converts an integer to a string |
| `ft_strmapi` | Applies a function to each character, returning a new string |
| `ft_striteri` | Applies a function to each character of a string in place |
| `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd` | Write a char / string / string + newline / number to a file descriptor |

### Part 3: Linked list functions

Functions for manipulating singly linked lists built on the `t_list` struct.

| Function | Description |
|----------|-------------|
| `ft_lstnew` | Creates a new node |
| `ft_lstadd_front`, `ft_lstadd_back` | Adds a node at the beginning / end of the list |
| `ft_lstsize` | Counts the nodes in the list |
| `ft_lstlast` | Returns the last node |
| `ft_lstdelone` | Frees one node's content and the node itself |
| `ft_lstclear` | Deletes and frees a node and all its successors |
| `ft_lstiter` | Applies a function to the content of every node |
| `ft_lstmap` | Creates a new list by applying a function to each node's content |

## Resources

### References

- Linux manual pages (`man 3 <function>`) for the behavior of each libc function
- [cppreference – C standard library](https://en.cppreference.com/w/c)
- [GNU C Library manual](https://www.gnu.org/software/libc/manual/)
- [GNU Make manual](https://www.gnu.org/software/make/manual/)
- Kernighan & Ritchie, *The C Programming Language*
- [42 Norm](https://github.com/42School/norminette) (Norminette)
- [Valgrind documentation](https://valgrind.org/docs/manual/) for leak checking

### Use of AI

AI (Gemini) was used only to help format and polish this README. No AI-generated code was used in the library itself; the functions were written by me, with help from fellow 42 students on specific problems (notably `ft_split`).