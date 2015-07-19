//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/viewmodel/GroupVM.java
//


#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/MainThreadProvider.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/Group.h"
#include "im/actor/model/mvvm/BaseValueModel.h"
#include "im/actor/model/mvvm/MVVMEngine.h"
#include "im/actor/model/mvvm/ModelChangedListener.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/mvvm/generics/AvatarValueModel.h"
#include "im/actor/model/mvvm/generics/BooleanValueModel.h"
#include "im/actor/model/mvvm/generics/StringValueModel.h"
#include "im/actor/model/viewmodel/GroupVM.h"
#include "java/lang/Boolean.h"
#include "java/lang/Integer.h"
#include "java/lang/Runnable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"

@interface AMGroupVM () {
 @public
  jint id__;
  jint creatorId_;
  AMAvatarValueModel *avatar_;
  AMStringValueModel *name_;
  AMBooleanValueModel *isMember__;
  AMValueModel *members_;
  AMValueModel *presence_;
  JavaUtilArrayList *listeners_;
}

- (void)notifyChange;

@end

J2OBJC_FIELD_SETTER(AMGroupVM, avatar_, AMAvatarValueModel *)
J2OBJC_FIELD_SETTER(AMGroupVM, name_, AMStringValueModel *)
J2OBJC_FIELD_SETTER(AMGroupVM, isMember__, AMBooleanValueModel *)
J2OBJC_FIELD_SETTER(AMGroupVM, members_, AMValueModel *)
J2OBJC_FIELD_SETTER(AMGroupVM, presence_, AMValueModel *)
J2OBJC_FIELD_SETTER(AMGroupVM, listeners_, JavaUtilArrayList *)

__attribute__((unused)) static void AMGroupVM_notifyChange(AMGroupVM *self);

@interface AMGroupVM_$1 : NSObject < JavaLangRunnable > {
 @public
  AMGroupVM *this$0_;
}

- (void)run;

- (instancetype)initWithAMGroupVM:(AMGroupVM *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(AMGroupVM_$1)

J2OBJC_FIELD_SETTER(AMGroupVM_$1, this$0_, AMGroupVM *)

__attribute__((unused)) static void AMGroupVM_$1_initWithAMGroupVM_(AMGroupVM_$1 *self, AMGroupVM *outer$);

__attribute__((unused)) static AMGroupVM_$1 *new_AMGroupVM_$1_initWithAMGroupVM_(AMGroupVM *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMGroupVM_$1)

@implementation AMGroupVM

- (instancetype)initWithAMGroup:(AMGroup *)rawObj {
  AMGroupVM_initWithAMGroup_(self, rawObj);
  return self;
}

- (jint)getId {
  return id__;
}

- (jint)getCreatorId {
  return creatorId_;
}

- (jint)getMembersCount {
  return [((JavaUtilHashSet *) nil_chk([((AMValueModel *) nil_chk(members_)) get])) size];
}

- (AMStringValueModel *)getNameModel {
  return name_;
}

- (AMAvatarValueModel *)getAvatarModel {
  return avatar_;
}

- (AMBooleanValueModel *)isMemberModel {
  return isMember__;
}

- (AMValueModel *)getMembersModel {
  return members_;
}

- (AMValueModel *)getPresenceModel {
  return presence_;
}

- (void)updateValuesWithId:(AMGroup *)rawObj {
  jboolean isChanged = [((AMStringValueModel *) nil_chk(name_)) changeWithValue:[((AMGroup *) nil_chk(rawObj)) getTitle]];
  isChanged |= [((AMAvatarValueModel *) nil_chk(avatar_)) changeWithValue:[rawObj getAvatar]];
  isChanged |= [((AMBooleanValueModel *) nil_chk(isMember__)) changeWithValue:JavaLangBoolean_valueOfWithBoolean_([rawObj isMember])];
  isChanged |= [((AMValueModel *) nil_chk(members_)) changeWithValue:new_JavaUtilHashSet_initWithJavaUtilCollection_([rawObj getMembers])];
  if (isChanged) {
    AMGroupVM_notifyChange(self);
  }
}

- (void)subscribeWithListener:(id<AMModelChangedListener>)listener {
  AMMVVMEngine_checkMainThread();
  if ([((JavaUtilArrayList *) nil_chk(listeners_)) containsWithId:listener]) {
    return;
  }
  [listeners_ addWithId:listener];
  [((id<AMModelChangedListener>) nil_chk(listener)) onChanged:self];
}

- (void)unsubscribeWithListener:(id<AMModelChangedListener>)listener {
  AMMVVMEngine_checkMainThread();
  [((JavaUtilArrayList *) nil_chk(listeners_)) removeWithId:listener];
}

- (void)notifyChange {
  AMGroupVM_notifyChange(self);
}

@end

void AMGroupVM_initWithAMGroup_(AMGroupVM *self, AMGroup *rawObj) {
  (void) AMBaseValueModel_initWithId_(self, rawObj);
  self->listeners_ = new_JavaUtilArrayList_init();
  self->id__ = [((AMGroup *) nil_chk(rawObj)) getGroupId];
  self->creatorId_ = [rawObj getAdminId];
  self->name_ = new_AMStringValueModel_initWithNSString_withNSString_(JreStrcat("$I$", @"group.", self->id__, @".title"), [rawObj getTitle]);
  self->avatar_ = new_AMAvatarValueModel_initWithNSString_withAMAvatar_(JreStrcat("$I$", @"group.", self->id__, @".avatar"), [rawObj getAvatar]);
  self->isMember__ = new_AMBooleanValueModel_initWithNSString_withJavaLangBoolean_(JreStrcat("$I$", @"group.", self->id__, @".isMember"), JavaLangBoolean_valueOfWithBoolean_([rawObj isMember]));
  self->members_ = new_AMValueModel_initWithName_withValue_(JreStrcat("$I$", @"group.", self->id__, @".members"), new_JavaUtilHashSet_initWithJavaUtilCollection_([rawObj getMembers]));
  self->presence_ = new_AMValueModel_initWithName_withValue_(JreStrcat("$I$", @"group.", self->id__, @".presence"), JavaLangInteger_valueOfWithInt_(0));
}

AMGroupVM *new_AMGroupVM_initWithAMGroup_(AMGroup *rawObj) {
  AMGroupVM *self = [AMGroupVM alloc];
  AMGroupVM_initWithAMGroup_(self, rawObj);
  return self;
}

void AMGroupVM_notifyChange(AMGroupVM *self) {
  [((id<AMMainThreadProvider>) nil_chk(AMMVVMEngine_getMainThreadProvider())) postToMainThreadWithRunnable:new_AMGroupVM_$1_initWithAMGroupVM_(self)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMGroupVM)

@implementation AMGroupVM_$1

- (void)run {
  {
    IOSObjectArray *a__ = [this$0_->listeners_ toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[((JavaUtilArrayList *) nil_chk(this$0_->listeners_)) size] type:AMModelChangedListener_class_()]];
    id<AMModelChangedListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<AMModelChangedListener> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<AMModelChangedListener> l = *b__++;
      [((id<AMModelChangedListener>) nil_chk(l)) onChanged:this$0_];
    }
  }
}

- (instancetype)initWithAMGroupVM:(AMGroupVM *)outer$ {
  AMGroupVM_$1_initWithAMGroupVM_(self, outer$);
  return self;
}

@end

void AMGroupVM_$1_initWithAMGroupVM_(AMGroupVM_$1 *self, AMGroupVM *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

AMGroupVM_$1 *new_AMGroupVM_$1_initWithAMGroupVM_(AMGroupVM *outer$) {
  AMGroupVM_$1 *self = [AMGroupVM_$1 alloc];
  AMGroupVM_$1_initWithAMGroupVM_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMGroupVM_$1)
