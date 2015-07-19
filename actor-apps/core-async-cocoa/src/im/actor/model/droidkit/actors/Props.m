//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/droidkit/actors/Props.java
//


#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/droidkit/actors/MailboxCreator.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "java/lang/Exception.h"

@interface DKProps () {
 @public
  IOSClass *aClass_;
  IOSObjectArray *args_;
  id<DKActorCreator> creator_;
  id<DKMailboxCreator> mailboxCreator_;
  NSString *dispatcher_;
}

- (instancetype)initWithIOSClass:(IOSClass *)aClass
               withNSObjectArray:(IOSObjectArray *)args
                    withNSString:(NSString *)dispatcher
              withDKActorCreator:(id<DKActorCreator>)creator
            withDKMailboxCreator:(id<DKMailboxCreator>)mailboxCreator;

@end

J2OBJC_FIELD_SETTER(DKProps, aClass_, IOSClass *)
J2OBJC_FIELD_SETTER(DKProps, args_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(DKProps, creator_, id<DKActorCreator>)
J2OBJC_FIELD_SETTER(DKProps, mailboxCreator_, id<DKMailboxCreator>)
J2OBJC_FIELD_SETTER(DKProps, dispatcher_, NSString *)

__attribute__((unused)) static void DKProps_initWithIOSClass_withNSObjectArray_withNSString_withDKActorCreator_withDKMailboxCreator_(DKProps *self, IOSClass *aClass, IOSObjectArray *args, NSString *dispatcher, id<DKActorCreator> creator, id<DKMailboxCreator> mailboxCreator);

__attribute__((unused)) static DKProps *new_DKProps_initWithIOSClass_withNSObjectArray_withNSString_withDKActorCreator_withDKMailboxCreator_(IOSClass *aClass, IOSObjectArray *args, NSString *dispatcher, id<DKActorCreator> creator, id<DKMailboxCreator> mailboxCreator) NS_RETURNS_RETAINED;

@implementation DKProps

- (instancetype)initWithIOSClass:(IOSClass *)aClass
               withNSObjectArray:(IOSObjectArray *)args
                    withNSString:(NSString *)dispatcher
              withDKActorCreator:(id<DKActorCreator>)creator
            withDKMailboxCreator:(id<DKMailboxCreator>)mailboxCreator {
  DKProps_initWithIOSClass_withNSObjectArray_withNSString_withDKActorCreator_withDKMailboxCreator_(self, aClass, args, dispatcher, creator, mailboxCreator);
  return self;
}

- (id)create {
  return [((id<DKActorCreator>) nil_chk(creator_)) create];
}

- (DKMailbox *)createMailboxWithDKMailboxesQueue:(DKMailboxesQueue *)queue {
  if (mailboxCreator_ != nil) {
    return [mailboxCreator_ createMailboxWithDKMailboxesQueue:queue];
  }
  else {
    return new_DKMailbox_initWithDKMailboxesQueue_(queue);
  }
}

- (NSString *)getDispatcher {
  return dispatcher_;
}

- (DKProps *)changeDispatcherWithNSString:(NSString *)dispatcher {
  return new_DKProps_initWithIOSClass_withNSObjectArray_withNSString_withDKActorCreator_withDKMailboxCreator_(aClass_, args_, dispatcher, creator_, mailboxCreator_);
}

+ (DKProps *)createWithIOSClass:(IOSClass *)clazz
             withDKActorCreator:(id<DKActorCreator>)creator {
  return DKProps_createWithIOSClass_withDKActorCreator_(clazz, creator);
}

+ (DKProps *)createWithIOSClass:(IOSClass *)clazz
             withDKActorCreator:(id<DKActorCreator>)creator
           withDKMailboxCreator:(id<DKMailboxCreator>)mailboxCreator {
  return DKProps_createWithIOSClass_withDKActorCreator_withDKMailboxCreator_(clazz, creator, mailboxCreator);
}

@end

void DKProps_initWithIOSClass_withNSObjectArray_withNSString_withDKActorCreator_withDKMailboxCreator_(DKProps *self, IOSClass *aClass, IOSObjectArray *args, NSString *dispatcher, id<DKActorCreator> creator, id<DKMailboxCreator> mailboxCreator) {
  (void) NSObject_init(self);
  self->aClass_ = aClass;
  self->args_ = args;
  self->creator_ = creator;
  self->mailboxCreator_ = mailboxCreator;
  self->dispatcher_ = dispatcher;
}

DKProps *new_DKProps_initWithIOSClass_withNSObjectArray_withNSString_withDKActorCreator_withDKMailboxCreator_(IOSClass *aClass, IOSObjectArray *args, NSString *dispatcher, id<DKActorCreator> creator, id<DKMailboxCreator> mailboxCreator) {
  DKProps *self = [DKProps alloc];
  DKProps_initWithIOSClass_withNSObjectArray_withNSString_withDKActorCreator_withDKMailboxCreator_(self, aClass, args, dispatcher, creator, mailboxCreator);
  return self;
}

DKProps *DKProps_createWithIOSClass_withDKActorCreator_(IOSClass *clazz, id<DKActorCreator> creator) {
  DKProps_initialize();
  return new_DKProps_initWithIOSClass_withNSObjectArray_withNSString_withDKActorCreator_withDKMailboxCreator_(clazz, nil, nil, creator, nil);
}

DKProps *DKProps_createWithIOSClass_withDKActorCreator_withDKMailboxCreator_(IOSClass *clazz, id<DKActorCreator> creator, id<DKMailboxCreator> mailboxCreator) {
  DKProps_initialize();
  return new_DKProps_initWithIOSClass_withNSObjectArray_withNSString_withDKActorCreator_withDKMailboxCreator_(clazz, nil, nil, creator, mailboxCreator);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKProps)
