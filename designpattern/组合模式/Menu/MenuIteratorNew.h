//
//  MenuIteratorNew.h
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MenuComponent;
NS_ASSUME_NONNULL_BEGIN

@protocol MenuIteratorNew <NSObject>

- (bool)hasNext;
- (MenuComponent *)next;

@end

NS_ASSUME_NONNULL_END
