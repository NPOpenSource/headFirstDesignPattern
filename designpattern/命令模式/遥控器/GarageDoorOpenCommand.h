//
//  GarageDoorOpenCommand.h
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GarageDoor.h"
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface GarageDoorOpenCommand : NSObject<Command>

- (instancetype)initWithGarageDoor:(GarageDoor *)garageDoor;

@end

NS_ASSUME_NONNULL_END
