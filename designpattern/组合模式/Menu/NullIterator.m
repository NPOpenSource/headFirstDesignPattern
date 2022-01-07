//
//  NullIterator.m
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "NullIterator.h"

@implementation NullIterator

- (bool)hasNext {
    return NO;
}
- (MenuComponent *)next {
    return nil;
}
@end
