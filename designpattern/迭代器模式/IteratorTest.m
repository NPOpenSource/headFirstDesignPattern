#import <Foundation/Foundation.h>
#import "Persion.h"
#import "DinerMenu.h"
#import "PancakeHouseMenu.h"

//__attribute__((constructor))
static void testAppleIteratorMain(void) {
    Persion *per=  [Persion new];
    while (per.appleIterator.hasNext) {
        NSLog(@"洗 %@",[per.appleIterator next])   ;
    };
}

__attribute__((constructor))
static void testMenuIteratorMain(void) {
    DinerMenu *per=  [DinerMenu new];
    id<MenuIterator> iterator = [per createIterator];
    while (iterator.hasNext) {
        MenuItem *item = iterator.next;
        NSLog(@"%@",item.name);
    }
    PancakeHouseMenu *pan=  [PancakeHouseMenu new];
    iterator = [pan createIterator];
    while (iterator.hasNext) {
        MenuItem *item = iterator.next;
        NSLog(@"%@",item.name);
    }
}
