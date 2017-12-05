%module incref

%{
#define SWIG_FILE_WITH_INIT
#include "incref.h"
%}

%newobject createTrueResult;
BoolResult *createTrueResult();

#ifdef SWIGPYTHON
%typemap(out) BOOLEAN %{
  if ($1)
    $result = Py_True;
  else
    $result = Py_False;
  Py_INCREF($result);
%}
#endif

typedef struct BoolResult {
} BoolResult;

%extend BoolResult {
  BoolResult(int value) {
    return BoolResult_new(value);
  }
  ~BoolResult() {
    BoolResult_free($self);
  }
  BOOLEAN isFalse() {
    return !BoolResult_isTrue($self);
  }
};
