//
//  CurrentConditionsDisplayNew.h
//  观察者模式
//
//  Created by glodon on 2021/12/27.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "DisplayElement.h"
#import "Observerable.h"

NS_ASSUME_NONNULL_BEGIN

@interface CurrentConditionsDisplayNew : NSObject<Observer, DisplayElement>

- (instancetype)initWithObserverable:(Observerable *)oberserable;

@end

NS_ASSUME_NONNULL_END
