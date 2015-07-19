//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/network/mtp/entity/NewSessionCreated.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/NewSessionCreated.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "java/io/IOException.h"

@implementation MTNewSessionCreated

- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTNewSessionCreated_initWithBSDataInput_(self, stream);
  return self;
}

- (instancetype)initWithLong:(jlong)sessionId
                    withLong:(jlong)messageId {
  MTNewSessionCreated_initWithLong_withLong_(self, sessionId, messageId);
  return self;
}

- (jlong)getSessionId {
  return sessionId_;
}

- (jlong)getMessageId {
  return messageId_;
}

- (jbyte)getHeader {
  return MTNewSessionCreated_HEADER;
}

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
  [((BSDataOutput *) nil_chk(bs)) writeLongWithLong:sessionId_];
  [bs writeLongWithLong:messageId_];
}

- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
  sessionId_ = [((BSDataInput *) nil_chk(bs)) readLong];
  messageId_ = [bs readLong];
}

- (NSString *)description {
  return JreStrcat("$JC", @"NewSession {", sessionId_, '}');
}

@end

void MTNewSessionCreated_initWithBSDataInput_(MTNewSessionCreated *self, BSDataInput *stream) {
  (void) MTProtoStruct_initWithBSDataInput_(self, stream);
}

MTNewSessionCreated *new_MTNewSessionCreated_initWithBSDataInput_(BSDataInput *stream) {
  MTNewSessionCreated *self = [MTNewSessionCreated alloc];
  MTNewSessionCreated_initWithBSDataInput_(self, stream);
  return self;
}

void MTNewSessionCreated_initWithLong_withLong_(MTNewSessionCreated *self, jlong sessionId, jlong messageId) {
  (void) MTProtoStruct_init(self);
  self->sessionId_ = sessionId;
  self->messageId_ = messageId;
}

MTNewSessionCreated *new_MTNewSessionCreated_initWithLong_withLong_(jlong sessionId, jlong messageId) {
  MTNewSessionCreated *self = [MTNewSessionCreated alloc];
  MTNewSessionCreated_initWithLong_withLong_(self, sessionId, messageId);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTNewSessionCreated)
