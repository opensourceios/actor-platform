//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/utils/RandomUtils.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/modules/utils/RandomUtils.h"
#include "java/util/Random.h"

static JavaUtilRandom *ImActorModelModulesUtilsRandomUtils_RANDOM_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesUtilsRandomUtils, RANDOM_, JavaUtilRandom *)

J2OBJC_INITIALIZED_DEFN(ImActorModelModulesUtilsRandomUtils)

@implementation ImActorModelModulesUtilsRandomUtils

+ (jlong)nextRid {
  return ImActorModelModulesUtilsRandomUtils_nextRid();
}

- (instancetype)init {
  ImActorModelModulesUtilsRandomUtils_init(self);
  return self;
}

+ (void)initialize {
  if (self == [ImActorModelModulesUtilsRandomUtils class]) {
    ImActorModelModulesUtilsRandomUtils_RANDOM_ = new_JavaUtilRandom_init();
    J2OBJC_SET_INITIALIZED(ImActorModelModulesUtilsRandomUtils)
  }
}

@end

jlong ImActorModelModulesUtilsRandomUtils_nextRid() {
  ImActorModelModulesUtilsRandomUtils_initialize();
  @synchronized(ImActorModelModulesUtilsRandomUtils_class_()) {
    return [((JavaUtilRandom *) nil_chk(ImActorModelModulesUtilsRandomUtils_RANDOM_)) nextLong];
  }
}

void ImActorModelModulesUtilsRandomUtils_init(ImActorModelModulesUtilsRandomUtils *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesUtilsRandomUtils *new_ImActorModelModulesUtilsRandomUtils_init() {
  ImActorModelModulesUtilsRandomUtils *self = [ImActorModelModulesUtilsRandomUtils alloc];
  ImActorModelModulesUtilsRandomUtils_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUtilsRandomUtils)
