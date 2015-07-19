//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/Contacts.java
//

#ifndef _ImActorModelModulesContacts_H_
#define _ImActorModelModulesContacts_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"

@class DKActorRef;
@class ImActorModelModulesModules;
@protocol AMCommand;
@protocol DKListEngine;

@interface ImActorModelModulesContacts : ImActorModelModulesBaseModule

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (id<AMCommand>)addContactWithInt:(jint)uid;

- (id<AMCommand>)findUsersWithNSString:(NSString *)query;

- (id<DKListEngine>)getContacts;

- (DKActorRef *)getContactSyncActor;

- (jboolean)isUserContactWithInt:(jint)uid;

- (void)markContactWithInt:(jint)uid;

- (void)markNonContactWithInt:(jint)uid;

- (void)onPhoneBookChanged;

- (id<AMCommand>)removeContactWithInt:(jint)uid;

- (void)resetModule;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesContacts)

FOUNDATION_EXPORT void ImActorModelModulesContacts_initWithImActorModelModulesModules_(ImActorModelModulesContacts *self, ImActorModelModulesModules *modules);

FOUNDATION_EXPORT ImActorModelModulesContacts *new_ImActorModelModulesContacts_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesContacts)

#endif // _ImActorModelModulesContacts_H_
