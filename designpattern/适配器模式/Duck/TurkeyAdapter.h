//
//  TurkeyAdapter.h
//  designpattern
//
//  Created by glodon on 2021/12/29.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Turkey.h"
#import "DuckA.h"

NS_ASSUME_NONNULL_BEGIN

@interface TurkeyAdapter : NSObject<DuckA>

- (instancetype)initWithTurkey:(id<Turkey>)turkey;

@end

NS_ASSUME_NONNULL_END
