//
//  Beverage.h
//  designpattern
//
//  Created by glodon on 2021/12/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Beverage : NSObject

@property (nonatomic, strong) NSString *desc;
- (double)cost;

@end

NS_ASSUME_NONNULL_END
