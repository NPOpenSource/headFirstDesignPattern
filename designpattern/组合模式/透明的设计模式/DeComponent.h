//
//  Component.h
//  结构型设计模式-组合模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DeComponent : NSObject
@property (nonatomic,strong) NSString *name;
-(void)add:(DeComponent *)component;
-(void)remove:(DeComponent *)component;
-(void)display:(int)level;
@end
