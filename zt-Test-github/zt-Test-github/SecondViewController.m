//
//  SecondViewController.m
//  zt-Test-github
//
//  Created by weiche on 2017/6/27.
//  Copyright © 2017年 weiche. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    NSLog(@"view did load");
    NSLog(@"mergeTest");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"view will appear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"view did appear");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)setTtype:(TestType)ttype {
    _ttype = ttype;
    NSLog(@"type");
}

- (void)setCarNum:(NSUInteger)carNum {
    _carNum = carNum;
    NSLog(@"carnum");
}

- (void)setYaoCount:(NSUInteger)yaoCount {
    _yaoCount = yaoCount;
    NSLog(@"yao");
}

- (void)setCarName:(NSString *)carName {
    _carName = carName;
    NSLog(@"carname");
}

@end
