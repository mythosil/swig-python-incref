swig-python-incref
==================

Sample project to find out the behaviour of typemap and Py\_INCREF.


When you forgot to call `Py_INCREF` for PyObject (such as Py\_True and Py\_False),
program is going to crash after that Python decrement its refcount and deallocate it.

## Build and Run

```
$ make
$ make run
```

## Reproduce crash

Comment out `Py_INCREF` in incref.i.

Build and run it, then you can see it crash.
