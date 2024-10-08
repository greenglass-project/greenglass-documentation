

# Greenglass Control-Process Concept

## Introduction

A Control Process is a building-block of a Greenglass Control System. It is responsible for one aspect of the system, and multiple Control Processes can act together to control the entire system.

A Control Process is a python script that monitors the  values of a set of "Input Variables*,  performs some kind of calculation on the values, and writes the resultants to a set "Output Variables".

The process has an id - the **process-Id** which must be  unique within the control system. 

Each variable has an id that is unique within the process - a **variable-id**; and also a **ValueType** that determines what type of data the variable can hold (see below).

Input Variables are fully asynchronous and are updated in real-time. The process can choose either to subscribe to the variable and receive a notification when an update occurs, or simply read the current state of the variable.

Output Variables are simple streams that just sink the values written by the priocess.

![control](/Users/steve/Development/projects/greenglass-documentation/docs/images/controller.png)



## The Python Process 



```
from abc import ABC, abstractmethod


class Process(ABC):
    """Base class for Process implementations """

    def __init__(self, engine):
        self.engine = engine
        self.process = self.__class__.__name__

    def input(self, variable_id):
        """Helper method to find an input variable"""
        return self.engine.input_variable(self.process, variable_id)

    def output(self, variable_id):
        """Helper method to find an output variable"""
        return self.engine.output_variable(self.process, variable_id)

    def system(self, variable_id):
        return self.engine.input_variable("#SYSTEM", variable_id)

    @abstractmethod
    def run(self) -> None:
        """Run the process"""
        pass

```





## Variables



## Value Types

Within the bigger Greenglass architecture, variables have strict data types which are derived from the Sparkplug Protocol on which Greenglass is based. Whilst Python is capable of handling all the data types, it does so using a very small number of flexible types, resulting in the loss of the original type information.

To counter this, variables are declared to have a given **ValueType** (see the table below). The variable implementation then provides a python interface for use by the controiller, and a fully typed interface for the outside producer or consumer of the variable.

| Value Type   | Description         | Python Type |
| ------------ | ------------------- | ----------- |
| INT8_TYPE    | 8-bit signed int    | Int         |
| INT16_TYPE   | 16-bit signed int   | Int         |
| INT32_TYPE   | 32-bit signed int   | int         |
| INT64_TYPE   | 64-bit signed int   | int         |
| UINT8_TYPE   | 8-bit unsigned int  | Int         |
| UINT16_TYPE  | 16-bit unsigned int | Int         |
| UINT32_TYPE  | 32-bit unsigned int | Int         |
| UINT64_TYPE  | 8-bit unsigned int  | Int         |
| FLOAT_TYPE   | float               | float       |
| DOUBLE_TYPE  | double              | float       |
| BOOLEAN_TYPE | boolean             | boolean     |
| STRING_TYPE  | string              | str         |





## Input Variable

```
InputVariable(data_type, process_id, variable_id, initial_value)
```



Python Process





