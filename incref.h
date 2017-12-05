#ifndef __INCREF_H__
#define __INCREF_H__

typedef int BOOLEAN;

typedef struct BoolResult {
  int value;
} BoolResult;

BoolResult *BoolResult_new(int value);
void BoolResult_free(BoolResult *self);
BOOLEAN BoolResult_isTrue(BoolResult *self);

BoolResult *createTrueResult();

#endif
