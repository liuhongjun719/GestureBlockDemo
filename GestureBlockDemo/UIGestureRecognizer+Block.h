//
//  UIGestureRecognizer+Block.h
//  GestureBlockDemo
//
//  Created by 123456 on 16/4/18.
//  Copyright © 2016年 123456. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^GestureRecognizerBlock)(UIGestureRecognizer *gesture);
@interface UIGestureRecognizer (Block)
+ (instancetype)hj_gestureRecognizerWithActionBlock:(GestureRecognizerBlock)block;
@end
