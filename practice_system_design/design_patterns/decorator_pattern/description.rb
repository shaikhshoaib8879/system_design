
# Certainly! The Decorator Design Pattern is a structural design pattern that allows behavior to be added to an individual object, either statically or dynamically, without affecting the behavior of other objects from the same class. Here's an example of the Decorator Pattern in Ruby:
# In this example:

# Coffee is the component interface that defines the methods cost and description.
# SimpleCoffee is a concrete component that implements the base coffee without any additional features.
# CoffeeDecorator is the decorator base class that extends the Coffee component. It contains a reference to a Coffee object.
# MilkDecorator and SugarDecorator are concrete decorators that add milk and sugar, respectively, to a given coffee.
# The client code demonstrates how to create a sequence of decorated coffee objects. The decorators can be stacked to add multiple features to the base coffee dynamically.

# This example illustrates how the Decorator Pattern allows you to extend the behavior of objects in a flexible and reusable way, without modifying their code directly.