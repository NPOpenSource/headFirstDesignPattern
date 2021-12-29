//
//  Computer.h
//  行为型设计模式-模板方法模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayGame.h"
@interface Computer : NSObject<PlayGame>
-(void)play;
@end
