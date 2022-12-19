# Simple ToDo App #1

This is a basic **UIKIt** app that uses the following:
* A **NavigationController**
* A ViewController with a TableView **(not a TableViewController)**
* Saving data to **UserDefaults**

A glimpse of UserDefaults...
```
if !UserDefaults().bool(forKey: "setup") {
    UserDefaults().set(true, forKey: "setup")
    UserDefaults().set(0, forKey: "count")
}
```
