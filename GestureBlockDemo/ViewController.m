//
//  ViewController.m
//  GestureBlockDemo
//
//  Created by 123456 on 16/4/18.
//  Copyright © 2016年 123456. All rights reserved.
//

#import "ViewController.h"
#import "UIGestureRecognizer+Block.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addGestureRecognizer:[UITapGestureRecognizer hj_gestureRecognizerWithActionBlock:^(UIGestureRecognizer *gesture) {
        NSLog(@"tap me......");
    }]];
    
    [self.view addGestureRecognizer:[UILongPressGestureRecognizer hj_gestureRecognizerWithActionBlock:^(UIGestureRecognizer *gesture) {
        NSLog(@"Long press......");
    }]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
