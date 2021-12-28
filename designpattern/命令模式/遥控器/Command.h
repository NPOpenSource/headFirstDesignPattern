//
//  Command.h
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Command <NSObject>

- (void)execute;

@end

NS_ASSUME_NONNULL_END
