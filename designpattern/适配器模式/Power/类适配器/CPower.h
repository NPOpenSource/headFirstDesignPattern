//
//  CPower.h
//  结构型设计模式-适配器模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChinaPower.h"
#import "APower.h"
@interface CPower :APower <ChinaPower>

@end
