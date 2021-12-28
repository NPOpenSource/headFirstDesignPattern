//
//  CondimentDecorator.h
//  designpattern
//
//  Created by glodon on 2021/12/27.
//

#import "Beverage.h"

NS_ASSUME_NONNULL_BEGIN

@interface CondimentDecorator : Beverage

@property (nonatomic, strong) Beverage *beverage;

- (instancetype)initWithBeverage:(Beverage *)beverage;

@end

NS_ASSUME_NONNULL_END
