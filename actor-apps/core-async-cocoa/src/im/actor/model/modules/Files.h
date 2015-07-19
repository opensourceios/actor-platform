//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/Files.java
//

#ifndef _ImActorModelModulesFiles_H_
#define _ImActorModelModulesFiles_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"

@class AMFileReference;
@class DKActorRef;
@class ImActorModelModulesModules;
@protocol AMFileCallback;
@protocol AMUploadFileCallback;
@protocol DKKeyValueEngine;

@interface ImActorModelModulesFiles : ImActorModelModulesBaseModule

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (void)bindFileWithAMFileReference:(AMFileReference *)fileReference
                        withBoolean:(jboolean)isAutostart
                 withAMFileCallback:(id<AMFileCallback>)callback;

- (void)bindUploadFileWithLong:(jlong)rid
      withAMUploadFileCallback:(id<AMUploadFileCallback>)uploadFileCallback;

- (void)cancelDownloadingWithLong:(jlong)fileId;

- (void)cancelUploadWithLong:(jlong)rid;

- (NSString *)getDownloadedDescriptorWithLong:(jlong)fileId;

- (id<DKKeyValueEngine>)getDownloadedEngine;

- (void)pauseUploadWithLong:(jlong)rid;

- (void)requestStateWithLong:(jlong)fileId
          withAMFileCallback:(id<AMFileCallback>)callback;

- (void)requestUploadWithLong:(jlong)rid
                 withNSString:(NSString *)descriptor
                 withNSString:(NSString *)fileName
               withDKActorRef:(DKActorRef *)requester;

- (void)requestUploadStateWithLong:(jlong)rid
          withAMUploadFileCallback:(id<AMUploadFileCallback>)callback;

- (void)resetModule;

- (void)resumeUploadWithLong:(jlong)rid;

- (void)run;

- (void)startDownloadingWithAMFileReference:(AMFileReference *)location;

- (void)unbindFileWithLong:(jlong)fileId
        withAMFileCallback:(id<AMFileCallback>)callback
               withBoolean:(jboolean)cancel;

- (void)unbindUploadFileWithLong:(jlong)rid
        withAMUploadFileCallback:(id<AMUploadFileCallback>)callback;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFiles)

FOUNDATION_EXPORT void ImActorModelModulesFiles_initWithImActorModelModulesModules_(ImActorModelModulesFiles *self, ImActorModelModulesModules *modules);

FOUNDATION_EXPORT ImActorModelModulesFiles *new_ImActorModelModulesFiles_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFiles)

#endif // _ImActorModelModulesFiles_H_
