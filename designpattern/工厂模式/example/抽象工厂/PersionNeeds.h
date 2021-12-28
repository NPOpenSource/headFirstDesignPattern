
//
//  PersionNeeds.h
//  创建型模式-工厂模式
//
//  Created by 温杰 on 2018/4/3.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Microphone.h"
#import "audio.h"
@protocol PersionNeeds <NSObject>
-(id<Microphone>)getMicrophone;
-(id<audio>)getAudio;
@end
