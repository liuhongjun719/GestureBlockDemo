//
//  UIGestureRecognizer+Block.m
//  GestureBlockDemo
//
//  Created by 123456 on 16/4/18.
//  Copyright © 2016年 123456. All rights reserved.
//

#import "UIGestureRecognizer+Block.h"
#import <objc/runtime.h>


static const int associated_object_key;
@implementation UIGestureRecognizer (Block)

+ (instancetype)hj_gestureRecognizerWithActionBlock:(GestureRecognizerBlock)block {
    return [[self alloc] initWithActionBlock:block];
}

- (instancetype)initWithActionBlock:(GestureRecognizerBlock)block {
    self = [self init];
    [self addActionBlock:block];
    [self addTarget:self action:@selector(actoion:)];
    return self;
}

- (void)addActionBlock:(GestureRecognizerBlock)block {
    if (block) {
        objc_setAssociatedObject(self, &associated_object_key, block, OBJC_ASSOCIATION_RETAIN);
    }
}
- (void)actoion:(id)sender {
    GestureRecognizerBlock block = objc_getAssociatedObject(self, &associated_object_key);
    if (block) {
        block(sender);
    }
}
@end
