//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/messages/CursorReceiverActor.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/rpc/RequestMessageReceived.h"
#include "im/actor/model/api/rpc/ResponseVoid.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/messages/CursorActor.h"
#include "im/actor/model/modules/messages/CursorReceiverActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/network/RpcCallback.h"
#include "im/actor/model/network/RpcException.h"

@interface ImActorModelModulesMessagesCursorReceiverActor_MarkReceived () {
 @public
  AMPeer *peer_;
  jlong date_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesCursorReceiverActor_MarkReceived, peer_, AMPeer *)

@interface ImActorModelModulesMessagesCursorReceiverActor_$1 : NSObject < AMRpcCallback > {
 @public
  ImActorModelModulesMessagesCursorReceiverActor *this$0_;
  AMPeer *val$peer_;
  jlong val$date_;
}

- (void)onResult:(APResponseVoid *)response;

- (void)onError:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesMessagesCursorReceiverActor:(ImActorModelModulesMessagesCursorReceiverActor *)outer$
                                                            withAMPeer:(AMPeer *)capture$0
                                                              withLong:(jlong)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesCursorReceiverActor_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesCursorReceiverActor_$1, this$0_, ImActorModelModulesMessagesCursorReceiverActor *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesCursorReceiverActor_$1, val$peer_, AMPeer *)

__attribute__((unused)) static void ImActorModelModulesMessagesCursorReceiverActor_$1_initWithImActorModelModulesMessagesCursorReceiverActor_withAMPeer_withLong_(ImActorModelModulesMessagesCursorReceiverActor_$1 *self, ImActorModelModulesMessagesCursorReceiverActor *outer$, AMPeer *capture$0, jlong capture$1);

__attribute__((unused)) static ImActorModelModulesMessagesCursorReceiverActor_$1 *new_ImActorModelModulesMessagesCursorReceiverActor_$1_initWithImActorModelModulesMessagesCursorReceiverActor_withAMPeer_withLong_(ImActorModelModulesMessagesCursorReceiverActor *outer$, AMPeer *capture$0, jlong capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesCursorReceiverActor_$1)

@implementation ImActorModelModulesMessagesCursorReceiverActor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  ImActorModelModulesMessagesCursorReceiverActor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

- (void)performWithAMPeer:(AMPeer *)peer
                 withLong:(jlong)date {
  APOutPeer *outPeer = [self buidOutPeerWithAMPeer:peer];
  if (outPeer == nil) {
    return;
  }
  [self requestWithAPRequest:new_APRequestMessageReceived_initWithAPOutPeer_withLong_(outPeer, date) withAMRpcCallback:new_ImActorModelModulesMessagesCursorReceiverActor_$1_initWithImActorModelModulesMessagesCursorReceiverActor_withAMPeer_withLong_(self, peer, date)];
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelModulesMessagesCursorReceiverActor_MarkReceived class]]) {
    ImActorModelModulesMessagesCursorReceiverActor_MarkReceived *received = (ImActorModelModulesMessagesCursorReceiverActor_MarkReceived *) check_class_cast(message, [ImActorModelModulesMessagesCursorReceiverActor_MarkReceived class]);
    [self moveCursorWithAMPeer:[((ImActorModelModulesMessagesCursorReceiverActor_MarkReceived *) nil_chk(received)) getPeer] withLong:[received getDate]];
  }
  else {
    [super onReceiveWithId:message];
  }
}

@end

void ImActorModelModulesMessagesCursorReceiverActor_initWithImActorModelModulesModules_(ImActorModelModulesMessagesCursorReceiverActor *self, ImActorModelModulesModules *messenger) {
  (void) ImActorModelModulesMessagesCursorActor_initWithLong_withImActorModelModulesModules_(self, ImActorModelModulesUtilsModuleActor_CURSOR_RECEIVED, messenger);
}

ImActorModelModulesMessagesCursorReceiverActor *new_ImActorModelModulesMessagesCursorReceiverActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) {
  ImActorModelModulesMessagesCursorReceiverActor *self = [ImActorModelModulesMessagesCursorReceiverActor alloc];
  ImActorModelModulesMessagesCursorReceiverActor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesCursorReceiverActor)

@implementation ImActorModelModulesMessagesCursorReceiverActor_MarkReceived

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)date {
  ImActorModelModulesMessagesCursorReceiverActor_MarkReceived_initWithAMPeer_withLong_(self, peer, date);
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (jlong)getDate {
  return date_;
}

@end

void ImActorModelModulesMessagesCursorReceiverActor_MarkReceived_initWithAMPeer_withLong_(ImActorModelModulesMessagesCursorReceiverActor_MarkReceived *self, AMPeer *peer, jlong date) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->date_ = date;
}

ImActorModelModulesMessagesCursorReceiverActor_MarkReceived *new_ImActorModelModulesMessagesCursorReceiverActor_MarkReceived_initWithAMPeer_withLong_(AMPeer *peer, jlong date) {
  ImActorModelModulesMessagesCursorReceiverActor_MarkReceived *self = [ImActorModelModulesMessagesCursorReceiverActor_MarkReceived alloc];
  ImActorModelModulesMessagesCursorReceiverActor_MarkReceived_initWithAMPeer_withLong_(self, peer, date);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesCursorReceiverActor_MarkReceived)

@implementation ImActorModelModulesMessagesCursorReceiverActor_$1

- (void)onResult:(APResponseVoid *)response {
  [this$0_ onCompletedWithAMPeer:val$peer_ withLong:val$date_];
}

- (void)onError:(AMRpcException *)e {
  [this$0_ onErrorWithAMPeer:val$peer_ withLong:val$date_];
}

- (instancetype)initWithImActorModelModulesMessagesCursorReceiverActor:(ImActorModelModulesMessagesCursorReceiverActor *)outer$
                                                            withAMPeer:(AMPeer *)capture$0
                                                              withLong:(jlong)capture$1 {
  ImActorModelModulesMessagesCursorReceiverActor_$1_initWithImActorModelModulesMessagesCursorReceiverActor_withAMPeer_withLong_(self, outer$, capture$0, capture$1);
  return self;
}

@end

void ImActorModelModulesMessagesCursorReceiverActor_$1_initWithImActorModelModulesMessagesCursorReceiverActor_withAMPeer_withLong_(ImActorModelModulesMessagesCursorReceiverActor_$1 *self, ImActorModelModulesMessagesCursorReceiverActor *outer$, AMPeer *capture$0, jlong capture$1) {
  self->this$0_ = outer$;
  self->val$peer_ = capture$0;
  self->val$date_ = capture$1;
  (void) NSObject_init(self);
}

ImActorModelModulesMessagesCursorReceiverActor_$1 *new_ImActorModelModulesMessagesCursorReceiverActor_$1_initWithImActorModelModulesMessagesCursorReceiverActor_withAMPeer_withLong_(ImActorModelModulesMessagesCursorReceiverActor *outer$, AMPeer *capture$0, jlong capture$1) {
  ImActorModelModulesMessagesCursorReceiverActor_$1 *self = [ImActorModelModulesMessagesCursorReceiverActor_$1 alloc];
  ImActorModelModulesMessagesCursorReceiverActor_$1_initWithImActorModelModulesMessagesCursorReceiverActor_withAMPeer_withLong_(self, outer$, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesCursorReceiverActor_$1)
