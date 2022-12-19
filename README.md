# todo-app-1

Basic ToDo app that uses:
* NavigationController
* TableView
* UserDefaults

```
if !UserDefaults().bool(forKey: "setup") {
    UserDefaults().set(true, forKey: "setup")
    UserDefaults().set(0, forKey: "count")
}
```
