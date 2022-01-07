//
//  Menu.h
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface Menu : MenuComponent

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, strong) NSMutableArray *menuComponents;

- (instancetype)initWithName:(NSString *)name andDes:(NSString *)desc;

-(id<MenuIteratorNew>)createIterator;

@end

NS_ASSUME_NONNULL_END
