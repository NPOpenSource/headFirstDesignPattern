//
//  MenuIterator.h
//  designpattern
//
//  Created by glodon on 2022/1/5.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuItem.h"

NS_ASSUME_NONNULL_BEGIN

@protocol MenuIterator <NSObject>

- (bool)hasNext;
- (MenuItem *)next;

@end

NS_ASSUME_NONNULL_END
