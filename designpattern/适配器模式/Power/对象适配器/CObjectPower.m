//
//  CObjectPower.m
//  结构型设计模式-适配器模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "CObjectPower.h"

@implementation CObjectPower
-(void)twoStep{
    [[APower new] threeStep];
}
@end
