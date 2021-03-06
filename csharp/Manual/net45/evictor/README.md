The source code provided here implements a [C# evictor][1] base class.
To use it, you must derive a class from `EvictorBase` and implement the
abstract `add()` and `evict()` methods.

`add()` is called when the evictor needs to instantiate a servant, and
`evict()` is called when the evictor has decided to evict a servant.
Note that you can pass information from `add()` to the corresponding
call to `evict()` via the cookie argument.

The evictor implementation relies on a linked list that allows items
to be added and removed without invalidating iterators. Such an
implementation is provided in `LinkedList.cs`.

[1]: https://doc.zeroc.com/display/Ice37/Implementing+a+Servant+Evictor+in+C-Sharp
