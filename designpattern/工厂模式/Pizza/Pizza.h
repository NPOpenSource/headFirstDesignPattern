//
//  Pizza.h
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dough.h"
#import "Sauce.h"
NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableArray *toppings;
@property (nonatomic, strong) id<Dough> dough;
@property (nonatomic, strong) id<Sauce> souce;

- (void)prepare;

- (void)bake;
- (void)cut;
- (void)box;

@end

NS_ASSUME_NONNULL_END
