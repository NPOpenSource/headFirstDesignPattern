//
//  TestFactoryExample.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "SongFactory.h"

//__attribute__((constructor))
static void beforeSimpleFactory(void) {
    SongFactory * factory=[[SongFactory alloc]init];
    id<Song> song = [factory getSongType:SongAType];
    [song sing];
    song = [factory getSongType:SongBType];
    [song sing];
    song = [factory getSongType:SongCType];
    [song sing];
}

#import "SongFactoryA.h"
#import "SongFactoryB.h"
#import "SongFactoryC.h"
//__attribute__((constructor))
static void beforeFactory(void) {
    id<MySongFactory> factory=[SongFactoryA new];
    id<Song> song = [factory getSong];
     [song sing];
    factory=[SongFactoryB new];
    song = [factory getSong];
    [song sing];
    factory=[SongFactoryC new];
    song = [factory getSong];
    [song sing];
}

#import "PersionNeedsA.h"
#import "PersionNeedsB.h"
#import "PersionNeedsC.h"

__attribute__((constructor))
static void beforeabstractFactory(void) {
    id<PersionNeeds> persionNeeds = [PersionNeedsA new];
    id<audio> audio = [persionNeeds getAudio];
    id<Microphone> microphone = [persionNeeds getMicrophone];
    [audio audio];
    [microphone song];
    
    
    persionNeeds = [PersionNeedsB new];
    audio = [persionNeeds getAudio];
    microphone = [persionNeeds getMicrophone];
    [audio audio];
    [microphone song];
    
    persionNeeds = [PersionNeedsC new];
    audio = [persionNeeds getAudio];
    microphone = [persionNeeds getMicrophone];
    [audio audio];
    [microphone song];
}
