//
//  Observerable.h
//  行为型设计模式-观察者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverNew.h"
@protocol ObserverableNew <NSObject>

-(void)registerObserver:(id<ObserverNew>)observer;
-(void)removeObserver:(id<ObserverNew>)observer;
-(void)notifyObserver;

@end
