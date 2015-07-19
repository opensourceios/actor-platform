//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/droidkit/actors/mailbox/ActorEndpoint.java
//

#ifndef _DKActorEndpoint_H_
#define _DKActorEndpoint_H_

#include "J2ObjC_header.h"

@class DKActorScope;
@class DKMailbox;

@interface DKActorEndpoint : NSObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)path;

- (void)connectWithDKMailbox:(DKMailbox *)mailbox
            withDKActorScope:(DKActorScope *)scope;

- (DKMailbox *)getMailbox;

- (NSString *)getPath;

- (DKActorScope *)getScope;

- (jboolean)isDisconnected;

@end

J2OBJC_EMPTY_STATIC_INIT(DKActorEndpoint)

FOUNDATION_EXPORT void DKActorEndpoint_initWithNSString_(DKActorEndpoint *self, NSString *path);

FOUNDATION_EXPORT DKActorEndpoint *new_DKActorEndpoint_initWithNSString_(NSString *path) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(DKActorEndpoint)

typedef DKActorEndpoint ImActorModelDroidkitActorsMailboxActorEndpoint;

#endif // _DKActorEndpoint_H_
