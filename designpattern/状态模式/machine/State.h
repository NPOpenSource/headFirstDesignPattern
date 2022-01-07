//
//  State.h
//  designpattern
//
//  Created by glodon on 2022/1/7.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol State <NSObject>

- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnCrank;
- (void)dispense;

@end

NS_ASSUME_NONNULL_END
