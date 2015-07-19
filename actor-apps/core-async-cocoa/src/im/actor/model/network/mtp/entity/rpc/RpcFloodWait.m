//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/network/mtp/entity/rpc/RpcFloodWait.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcFloodWait.h"
#include "java/io/IOException.h"

@interface MTRpcFloodWait () {
 @public
  jint delay_;
}

@end

@implementation MTRpcFloodWait

- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTRpcFloodWait_initWithBSDataInput_(self, stream);
  return self;
}

- (instancetype)initWithInt:(jint)delay {
  MTRpcFloodWait_initWithInt_(self, delay);
  return self;
}

- (jint)getDelay {
  return delay_;
}

- (jbyte)getHeader {
  return MTRpcFloodWait_HEADER;
}

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
  [((BSDataOutput *) nil_chk(bs)) writeIntWithInt:delay_];
}

- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
  delay_ = [((BSDataInput *) nil_chk(bs)) readInt];
}

@end

void MTRpcFloodWait_initWithBSDataInput_(MTRpcFloodWait *self, BSDataInput *stream) {
  (void) MTProtoStruct_initWithBSDataInput_(self, stream);
}

MTRpcFloodWait *new_MTRpcFloodWait_initWithBSDataInput_(BSDataInput *stream) {
  MTRpcFloodWait *self = [MTRpcFloodWait alloc];
  MTRpcFloodWait_initWithBSDataInput_(self, stream);
  return self;
}

void MTRpcFloodWait_initWithInt_(MTRpcFloodWait *self, jint delay) {
  (void) MTProtoStruct_init(self);
  self->delay_ = delay;
}

MTRpcFloodWait *new_MTRpcFloodWait_initWithInt_(jint delay) {
  MTRpcFloodWait *self = [MTRpcFloodWait alloc];
  MTRpcFloodWait_initWithInt_(self, delay);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTRpcFloodWait)
