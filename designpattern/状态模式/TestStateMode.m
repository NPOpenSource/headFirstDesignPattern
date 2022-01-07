#import <Foundation/Foundation.h>

#import "Celling.h"
#import "BuyState.h"
#import "ShipmentState.h"
#import "ChoosingState.h"
#import "GumbalMachine.h"

//__attribute__((constructor))
static void testStateModeMain(void) {
    Celling * celling = [Celling new];
    [celling choose];
    celling.state = [ChoosingState new];
    [celling choose];
    celling.state = [BuyState new];
    [celling buy];
    celling.state = [ShipmentState new];
    [celling shipment];
}

__attribute__((constructor))
static void testMachineMain(void) {
    GumbalMachine *m = [[GumbalMachine alloc]initCount:5];
    [m insertQuarter];
    [m turnCrank];
    
    [m insertQuarter];
    [m ejectQuarter];
    [m turnCrank];
    
    [m insertQuarter];
    [m turnCrank];
    [m insertQuarter];
    [m turnCrank];
    [m ejectQuarter];
    
    [m insertQuarter];
    [m insertQuarter];
    [m turnCrank];
    [m insertQuarter];
    [m  turnCrank];
    [m insertQuarter];
    [m turnCrank];
}
