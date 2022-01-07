#import <Foundation/Foundation.h>

#import "DeComponent.h"
#import "Leaf.h"
#import "Composite.h"
#import "LeafSafe.h"
#import "CompositeSafe.h"
#import "MenuComponent.h"
#import "Menu.h"
#import "MenuItemNew.h"
#import "Waitress.h"

__attribute__((constructor))
static void testMenuMain(void) {
    MenuComponent *pancakeHouseMenuu = [[Menu alloc]initWithName:@"pancake house menu" andDes:@"breadkfast"];
    MenuComponent *cafeMenu = [[Menu alloc]initWithName:@"cafe menu" andDes:@"Dinner"];
    MenuComponent *allMenus = [[Menu alloc]initWithName:@"a" andDes:@"all menus combined"];
    MenuComponent *dingerMenu = [[Menu alloc]initWithName:@"b" andDes:@"lunch"];
    [allMenus add:pancakeHouseMenuu];
    [allMenus add:dingerMenu];
    [allMenus add:cafeMenu];
    [dingerMenu add:[[MenuItemNew alloc]initWithName:@"pasta" des:@"bread" vegetarion:true price:3.89]];
    MenuComponent *dessertMenu = [[Menu alloc]initWithName:@"c" andDes:@"dessert of course"];
    [dingerMenu add:dessertMenu];
    [dessertMenu add:[[MenuItemNew alloc]initWithName:@"d" des:@"apple" vegetarion:true price:1.89]];
    Waitress *waitness = [[Waitress alloc]initWithMenu:allMenus];
    [waitness printMenu];
    NSLog(@"\n================");
    [waitness printVegetarianMenu];

}

//__attribute__((constructor))
static void testSafeModeMain(void){
    CompositeSafe * root = [[CompositeSafe alloc]initWithName:@"root"];

    [root add:[[LeafSafe alloc]initWithName:@"Leaf A in Root"]];
    [root add:[[LeafSafe alloc]initWithName:@"Leaf B in Root"]];

    
    CompositeSafe * branchX = [[CompositeSafe alloc]initWithName:@"branch x in root"];;
    CompositeSafe * branchY = [[CompositeSafe alloc]initWithName:@"branch y in root"];;

    [root add:branchX];
    [root add:branchY];
    
    [branchX add:[[LeafSafe alloc]initWithName:@"Leaf  in branchA"]];

    CompositeSafe * branchZ = [[CompositeSafe alloc]initWithName:@"branch z in branch X"];;
    [branchX add:branchZ];
    
    [branchY add:[[LeafSafe alloc]initWithName:@"Leaf  in branch Y"]];
    [branchZ add:[[LeafSafe alloc]initWithName:@"Leaf  in branch z"]];

    [root display:1];
}


//__attribute__((constructor))
static void testAlphaModeMain(void) {
    DeComponent * root = [Composite new];
    root.name =@"root";
    DeComponent * a = [Leaf new];
    a.name = @"Leaf in Root";
    [root add:a];
    DeComponent * b = [Leaf new];
    b.name = @"Leaf in Root";
    [root add:b];
    
    DeComponent * branchX = [Composite new];
    branchX.name=@"branch x in root";
    [root add:branchX];
    
    DeComponent * branchY = [Composite new];
    branchY.name=@"branch y in root";
    [root add:branchY];
    
    DeComponent * leafA = [Leaf new];
    leafA.name = @"leaf  in Branch X";
    [branchX add:leafA];
    
    DeComponent * branchZ = [Composite new];
    branchZ.name = @"branch z in Branch X";
    [branchX add:branchZ];
    
    DeComponent * leafY = [Leaf new];
    leafY.name = @"leaf in Branch y";
    [branchY add:leafY];
    
    DeComponent * leafz = [Leaf new];
    leafz.name = @"leaf in Branch z";
    [branchZ add:leafz];
    [root display:1];
}
