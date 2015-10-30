//
//  ViewController.m
//  Day04_4_GCD_Once
//
//  Created by jiyingxin on 15/10/13.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (int i=0; i<10; i++) {
        NSLog(@"i %d", i);
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            NSLog(@"---------------");
        });
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end





