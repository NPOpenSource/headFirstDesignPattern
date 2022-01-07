//
//  CompositeIterator.h
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MenuIteratorNew.h"

NS_ASSUME_NONNULL_BEGIN

@interface CompositeIterator : NSObject<MenuIteratorNew>

- (instancetype)initWithIterator:(id<MenuIteratorNew>)iterator;

@end

NS_ASSUME_NONNULL_END
