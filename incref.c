#include "incref.h"
#include <stdlib.h>

BoolResult *BoolResult_new(int value) {
  BoolResult *ret = (BoolResult *)malloc(sizeof(BoolResult));
  ret->value = value;
  return ret;
}

void BoolResult_free(BoolResult *self) {
  free(self);
}

int BoolResult_isTrue(BoolResult *self) {
  return self->value == 1;
}

BoolResult *createTrueResult() {
  return BoolResult_new(1);
}
