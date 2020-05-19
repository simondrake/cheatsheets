# TOC

- [Factory Pattern](#factory-pattern)
- [Builder Pattern](#builder-pattern)

## Factory Pattern

Factory Method is a creational design pattern that provides an interface for creating objects.

```
//Empty vocabulary of actual object
public interface IPerson
{
    string GetName();
}

public class Villager : IPerson
{
    public string GetName()
    {
        return "Village Person";
    }
}

public class CityPerson : IPerson
{
    public string GetName()
    {
        return "City Person";
    }
}

public enum PersonType
{
    Rural,
    Urban
}

/// <summary>
/// Implementation of Factory - Used to create objects
/// </summary>
public class Factory
{
    public IPerson GetPerson(PersonType type)
    {
        switch (type)
        {
            case PersonType.Rural:
                return new Villager();
            case PersonType.Urban:
                return new CityPerson();
            default:
                throw new NotSupportedException();
        }
    }
}
```

Useful links: [1](https://www.tutorialspoint.com/design_pattern/factory_pattern.htm)

## Builder Pattern

Builder pattern builds a complex object using simple objects and using a step by step approach. 

Code sample TBC

Useful links: [1](https://medium.com/@haluan/golang-builder-design-pattern-a8b7c92969a7) [2](https://www.tutorialspoint.com/design_pattern/builder_pattern.htm)
