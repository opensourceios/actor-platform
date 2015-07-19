//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateMessage.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateMessage.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface APUpdateMessage () {
 @public
  APPeer *peer_;
  jint senderUid_;
  jlong date_;
  jlong rid_;
  APMessage *message_;
}

@end

J2OBJC_FIELD_SETTER(APUpdateMessage, peer_, APPeer *)
J2OBJC_FIELD_SETTER(APUpdateMessage, message_, APMessage *)

@implementation APUpdateMessage

+ (APUpdateMessage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APUpdateMessage_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPPeer:(APPeer *)peer
                       withInt:(jint)senderUid
                      withLong:(jlong)date
                      withLong:(jlong)rid
                 withAPMessage:(APMessage *)message {
  APUpdateMessage_initWithAPPeer_withInt_withLong_withLong_withAPMessage_(self, peer, senderUid, date, rid, message);
  return self;
}

- (instancetype)init {
  APUpdateMessage_init(self);
  return self;
}

- (APPeer *)getPeer {
  return self->peer_;
}

- (jint)getSenderUid {
  return self->senderUid_;
}

- (jlong)getDate {
  return self->date_;
}

- (jlong)getRid {
  return self->rid_;
}

- (APMessage *)getMessage {
  return self->message_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APPeer_init()];
  self->senderUid_ = [values getIntWithInt:2];
  self->date_ = [values getLongWithInt:3];
  self->rid_ = [values getLongWithInt:4];
  self->message_ = APMessage_fromBytesWithByteArray_([values getBytesWithInt:5]);
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeIntWithInt:2 withInt:self->senderUid_];
  [writer writeLongWithInt:3 withLong:self->date_];
  [writer writeLongWithInt:4 withLong:self->rid_];
  if (self->message_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:5 withByteArray:[((APMessage *) nil_chk(self->message_)) buildContainer]];
}

- (NSString *)description {
  NSString *res = @"update Message{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", senderUid=", self->senderUid_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$$", res, JreStrcat("$@", @", message=", self->message_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APUpdateMessage_HEADER;
}

@end

APUpdateMessage *APUpdateMessage_fromBytesWithByteArray_(IOSByteArray *data) {
  APUpdateMessage_initialize();
  return ((APUpdateMessage *) BSBser_parseWithBSBserObject_withByteArray_(new_APUpdateMessage_init(), data));
}

void APUpdateMessage_initWithAPPeer_withInt_withLong_withLong_withAPMessage_(APUpdateMessage *self, APPeer *peer, jint senderUid, jlong date, jlong rid, APMessage *message) {
  (void) APUpdate_init(self);
  self->peer_ = peer;
  self->senderUid_ = senderUid;
  self->date_ = date;
  self->rid_ = rid;
  self->message_ = message;
}

APUpdateMessage *new_APUpdateMessage_initWithAPPeer_withInt_withLong_withLong_withAPMessage_(APPeer *peer, jint senderUid, jlong date, jlong rid, APMessage *message) {
  APUpdateMessage *self = [APUpdateMessage alloc];
  APUpdateMessage_initWithAPPeer_withInt_withLong_withLong_withAPMessage_(self, peer, senderUid, date, rid, message);
  return self;
}

void APUpdateMessage_init(APUpdateMessage *self) {
  (void) APUpdate_init(self);
}

APUpdateMessage *new_APUpdateMessage_init() {
  APUpdateMessage *self = [APUpdateMessage alloc];
  APUpdateMessage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APUpdateMessage)
