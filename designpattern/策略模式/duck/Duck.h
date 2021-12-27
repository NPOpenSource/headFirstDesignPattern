//
//  Duck.h
//  策略模式
//
//  Created by glodon on 2021/12/27.
//

#import <Foundation/Foundation.h>
#import "FlyBehavior.h"
#import "QuackBehavior.h"

NS_ASSUME_NONNULL_BEGIN

@interface Duck : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) id<FlyBehavior> flyBehavior;
@property (nonatomic, strong) id<QuackBehavior> quackBehavior;

- (void)swim;
- (void)display;
- (void)performQuack;
- (void)performFly;

@end

NS_ASSUME_NONNULL_END
