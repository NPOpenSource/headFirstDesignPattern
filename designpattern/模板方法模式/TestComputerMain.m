#import <Foundation/Foundation.h>
#import "AMDComputer.h"

//__attribute__((constructor))
static void beforeMain(void) {
    Computer * computer = [AMDComputer new];
    [computer play];
}
