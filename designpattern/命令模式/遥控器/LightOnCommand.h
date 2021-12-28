//
//  LightOnCommand.h
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Light.h"
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface LightOnCommand : NSObject<Command>

- (instancetype)initWithLight:(Light *)light;

@end

NS_ASSUME_NONNULL_END
