//
//  TestRemote.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LightOnCommand.h"
#import "Light.h"
#import "SimpleRemoteControl.h"
#import "GarageDoorOpenCommand.h"

//__attribute__((constructor))
static void beforeMain(void) {
    SimpleRemoteControl *control = [SimpleRemoteControl new];
    Light *light = [Light new];
    id<Command> command = [[LightOnCommand alloc]initWithLight:light];
    [control setCommand:command];
    [control buttonWaPressed];
    command = [[GarageDoorOpenCommand alloc]initWithGarageDoor:[GarageDoor new]];
    [control setCommand:command];
    [control buttonWaPressed];
    
}

#import "OpenTV.h"
#import "CloseTV.h"
#import "Remote.h"

//__attribute__((constructor))
static void beforeRemoteMain(void) {
    TV * tv= [TV new];
    Remote * remote = [Remote new];
    OpenTV *openTV = [OpenTV new];
    openTV.tv =tv;
    CloseTV * closeTV = [CloseTV new];
    closeTV.tv = tv;
    [remote setCommand:openTV];
    [remote invokeCommand];
    [remote setCommand:closeTV];
    [remote invokeCommand];
    
}
