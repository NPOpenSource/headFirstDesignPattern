//
//  CurrentConditionsDisplay.h
//  观察者模式
//
//  Created by glodon on 2021/12/27.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "DisplayElement.h"
#import "Subject.h"

NS_ASSUME_NONNULL_BEGIN

@interface CurrentConditionsDisplay : NSObject<Observer, DisplayElement>

- (instancetype)initWithSubject:(id<Subject>)subject;

@end

NS_ASSUME_NONNULL_END
