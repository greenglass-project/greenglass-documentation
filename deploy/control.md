# The Greenglass Process-Control Concept

## The Concept

The Greenglass Project defines a simple control concept based around the the use of Variables and Control Processes.

![control-concept](images/control-concept.png)

### Variables

**Variables** hold the values used by, or produced by, control processes. There are 3 types of variable:

- I**nput Variables** contain values that are the inputs to control processes. These fall into 2 categories:
  - **Values from sensors** - measuring some aspect of the system under control.  These values can change frequently.
  - **Settings values**. These could be static configuration, user changeable settings, timer or scheuler outputs etc etc. They will change infrequently.
- **Output Variables** - contain values produced by the control processes. These are used to drive 'actuators' that can modify the state of the system under control e,g. Pumps, valves, lights. heaters, coolers etc etc.
- **Shared Variables** - allow an ouput of one control process to be used as an input to another. This allows Controll Processes to be chained together in more complex control scenarios.

Variables are implemented as Reactive Streams and can consumed asynchronously, or can be read on demand.

### Control Processes

**Contol Processes** apply some  control logic to process their inputs and create outputs. Greenglass imposes no restrictions on the algorithm, it can be, for example a closed loop algorithm like a PID or fuzzy logic, or an open loop algorithm where outputs are simply some function of its inputs.

## The Process-Control Engine

The Process-Control-Engine is a Python implementation of the above architecture. 

