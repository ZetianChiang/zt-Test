//
//  CityView.m
//  zt-Test-github
//
//  Created by weiche on 2017/6/27.
//  Copyright © 2017年 weiche. All rights reserved.
//

#import "CityView.h"
#import "StatusView.h"
#import "HaveButtonView.h"
#import "NoButtonView.h"

@implementation CityView

- (void)setCity:(NSString *)city {
    _city = city;
}

- (void)setUsers:(NSArray<UserInfo *> *)users {
    for (UserInfo *info in users) {
        StatusView *status = [[StatusView alloc] init];
        status.yaohaoId = info.yaohaoId;
        //status.y
    }
    
    
    
    
    
    
    
    
}

@end
