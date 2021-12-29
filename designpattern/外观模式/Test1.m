#import <Foundation/Foundation.h>
#import "Patient.h"

//__attribute__((constructor))
static void beforeMain(void) {
    Receptionist * receptionist= [Receptionist new];
    Patient * patients= [[Patient alloc]init];
    patients.receptionist =receptionist;
    [patients.receptionist seeDoctor];
}

