//
//  UserInfo.h
//  zt-Test-github
//
//  Created by weiche on 2017/6/27.
//  Copyright © 2017年 weiche. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfo : NSObject

@property (nonatomic, copy) NSString *yaohaoNumber;
@property (nonatomic, copy) NSString *yaohaoName;
@property (nonatomic, copy) NSString *yaohaoId;
@property (nonatomic, copy) NSString *yaohaoStatus;
@property (nonatomic, copy) NSString *yaohaoTimes;
@property (nonatomic, copy) NSString *yaohaoMultiple;
@property (nonatomic, copy) NSString *deadline;
@property (nonatomic, assign) NSUInteger isNeedLogin;
@property (nonatomic, copy) NSString *zhongqianDate;

@end
