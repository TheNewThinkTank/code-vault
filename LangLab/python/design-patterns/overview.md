# Overview

## References

[python-patterns](https://python-patterns.guide/)
[python-parameterized-design-patterns](https://www.toptal.com/python/python-parameterized-design-patterns)

## Overview & examples

Design patterns are common solutions to recurring problems in software design. They provide a standard terminology and are specific to particular scenarios. Here’s an overview of some key design patterns implemented in Python:

### 1. **Singleton Pattern**
The Singleton ensures a class has only one instance and provides a global point of access to it. This is useful for scenarios like database connections or configurations where multiple instances would cause issues.

**Python Example:**
```python
class Singleton:
    _instance = None

    def __new__(cls):
        if cls._instance is None:
            cls._instance = super(Singleton, cls).__new__(cls)
        return cls._instance

# Usage
singleton1 = Singleton()
singleton2 = Singleton()

print(singleton1 == singleton2)  # Output: True
```

### 2. **Factory Pattern**
The Factory pattern provides an interface for creating objects, but allows subclasses to alter the type of objects that will be created. This decouples object creation from its implementation.

**Python Example:**
```python
class Animal:
    def speak(self):
        pass

class Dog(Animal):
    def speak(self):
        return "Woof"

class Cat(Animal):
    def speak(self):
        return "Meow"

class AnimalFactory:
    @staticmethod
    def get_animal(animal_type):
        if animal_type == "dog":
            return Dog()
        elif animal_type == "cat":
            return Cat()
        return None

# Usage
animal = AnimalFactory.get_animal("dog")
print(animal.speak())  # Output: Woof
```

### 3. **Observer Pattern**
The Observer pattern defines an one-to-many relationship between objects, where a change in one object leads to an update in others. It is often used in event handling systems.

**Python Example:**
```python
class Subject:
    def __init__(self):
        self._observers = []

    def register(self, observer):
        self._observers.append(observer)

    def notify_all(self, message):
        for observer in self._observers:
            observer.update(message)

class Observer:
    def update(self, message):
        pass

class ConcreteObserver(Observer):
    def update(self, message):
        print(f"Observer received message: {message}")

# Usage
subject = Subject()
observer1 = ConcreteObserver()
observer2 = ConcreteObserver()

subject.register(observer1)
subject.register(observer2)

subject.notify_all("Pattern design is fun!")  # Both observers receive the message
```

### 4. **Decorator Pattern**
The Decorator pattern adds new functionality to an existing object dynamically. This is especially useful for adhering to the Open-Closed Principle (open for extension, closed for modification).

**Python Example:**
```python
def make_bold(func):
    def wrapper():
        return "<b>" + func() + "</b>"
    return wrapper

def make_italic(func):
    def wrapper():
        return "<i>" + func() + "</i>"
    return wrapper

@make_bold
@make_italic
def greet():
    return "Hello"

# Usage
print(greet())  # Output: <b><i>Hello</i></b>
```

### 5. **Strategy Pattern**
The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. It lets the algorithm vary independently from clients that use it.

**Python Example:**
```python
class Strategy:
    def execute(self, data):
        pass

class ConcreteStrategyA(Strategy):
    def execute(self, data):
        return sorted(data)

class ConcreteStrategyB(Strategy):
    def execute(self, data):
        return sorted(data, reverse=True)

class Context:
    def __init__(self, strategy: Strategy):
        self.strategy = strategy

    def set_strategy(self, strategy: Strategy):
        self.strategy = strategy

    def execute_strategy(self, data):
        return self.strategy.execute(data)

# Usage
data = [5, 3, 8, 1]
context = Context(ConcreteStrategyA())
print(context.execute_strategy(data))  # Output: [1, 3, 5, 8]

context.set_strategy(ConcreteStrategyB())
print(context.execute_strategy(data))  # Output: [8, 5, 3, 1]
```

### 6. **Adapter Pattern**
The Adapter pattern allows incompatible interfaces to work together. It acts as a bridge between two incompatible interfaces.

**Python Example:**
```python
class EuropeanSocket:
    def voltage(self):
        return 230

    def live(self):
        return 1

    def neutral(self):
        return -1

class USASocket:
    def voltage(self):
        return 120

    def live(self):
        return 1

    def neutral(self):
        return 0

class SocketAdapter:
    def __init__(self, usa_socket):
        self.usa_socket = usa_socket

    def voltage(self):
        return self.usa_socket.voltage()

    def live(self):
        return self.usa_socket.live()

    def neutral(self):
        return self.usa_socket.neutral()

# Usage
usa_socket = USASocket()
adapter = SocketAdapter(usa_socket)

print(f"Adapter voltage: {adapter.voltage()}V")  # Output: Adapter voltage: 120V
```

### 7. **Command Pattern**
The Command pattern turns a request into a stand-alone object that contains all information about the request. This is useful for undo functionality, queues of operations, etc.

**Python Example:**
```python
class Command:
    def execute(self):
        pass

class LightOnCommand(Command):
    def __init__(self, light):
        self.light = light

    def execute(self):
        self.light.on()

class LightOffCommand(Command):
    def __init__(self, light):
        self.light = light

    def execute(self):
        self.light.off()

class Light:
    def on(self):
        print("Light is ON")

    def off(self):
        print("Light is OFF")

class RemoteControl:
    def __init__(self, command: Command):
        self.command = command

    def press(self):
        self.command.execute()

# Usage
light = Light()
light_on = LightOnCommand(light)
light_off = LightOffCommand(light)

remote = RemoteControl(light_on)
remote.press()  # Output: Light is ON

remote = RemoteControl(light_off)
remote.press()  # Output: Light is OFF
```

These patterns are widely used to solve design problems and make systems more maintainable, extensible, and scalable. They encapsulate best practices that help developers tackle common software design challenges.
