# Epitech C Project Template


## Table of Contents

- [Makefile commands](#makefile-commands)
- [Makefiles description](#makefiles-description)
- [How to use the template](#how-to-use-the-template)
  - [How to add a source file](#how-to-add-a-source-file)
  - [How to add a library](#how-to-add-a-library)
  - [How to add a test](#how-to-add-a-test)


## Makefile commands

| Command          | Description                                  |
|------------------|----------------------------------------------|
| `make`           | Compile the project                          |
| `make clean`     | Remove the object files                      |
| `make fclean`    | Remove the binary file and the object files  |
| `make re`        | Re-compile the project                       |
| `make tests_run` | Compile the tests and run them               |
| `make coverage`  | Compile the tests and run them with coverage |


## Makefiles description

```
.
├── Makefile            # Main Makefile
├── lib
│   ├── Makefile        # Compile libraries
│   ├── lib0
│   │   └── Makefile    # Compile the library 0
│   ├── lib1
│   │   └── Makefile    # Compile the library 1
│   └── lib2
│       └── Makefile    # Compile the library 2
└── tests
    └── Makefile        # Compile tests
```


## How to use the template


### How to add a source file

1. Add the source file in the `src/` directory
2. Add the source file path in the `SRC` variable in the `./Makefile`
    ```makefile
    SRC =   src/main.c \
            src/my_new_file.c <-- Add the source file here
    ```


### How to add a library

1. Add the library folder in the `lib/` directory
2. Add the library make command in the `lib/Makefile`
    ```makefile
    all:
        $(MAKE_COMMAND) -C my
        $(MAKE_COMMAND) -C new_lib <-- Add the library make command here
    
    clean:
        $(MAKE_COMMAND) clean -C my
        $(MAKE_COMMAND) clean -C new_lib <-- Add the library make command here
    
    fclean: clean
        $(MAKE_COMMAND) fclean -C my
        $(MAKE_COMMAND) fclean -C new_lib <-- Add the library make command here
    ```
3. Link the library in the `./Makefile`
    ```makefile
    LDFLAGS = -lmy -lnew_lib <-- Add the library here
    ```


### How to add a test

Add the test file in the `tests/unit_tests/` directory
