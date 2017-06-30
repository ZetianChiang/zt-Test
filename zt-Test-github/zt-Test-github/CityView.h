//
//  CityView.h
//  zt-Test-github
//
//  Created by weiche on 2017/6/27.
//  Copyright © 2017年 weiche. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserInfo.h"

@interface CityView : UIView

@property (nonatomic, copy) NSString  *city;
@property (nonatomic, copy) NSArray<UserInfo *> *users;


@end
