//
//  SecondViewController.h
//  zt-Test-github
//
//  Created by weiche on 2017/6/27.
//  Copyright © 2017年 weiche. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, TestType) {
    TestTypeA,
    TestTypeB,
    TestTypeC,
};

@interface SecondViewController : UIViewController

@property (nonatomic, assign) TestType   ttype;
@property (nonatomic, assign) NSUInteger carNum;
@property (nonatomic, assign) NSUInteger yaoCount;
@property (nonatomic, copy)   NSString   *carName;

@end
