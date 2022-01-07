//
//  SoldOutState.h
//  designpattern
//
//  Created by glodon on 2022/1/7.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"
@class GumbalMachine;

NS_ASSUME_NONNULL_BEGIN

@interface SoldOutState : NSObject<State>

- (instancetype)initWithMachine:(GumbalMachine *)machine;

@end

NS_ASSUME_NONNULL_END
