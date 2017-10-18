//
//  reactnativeomnitureapi.m
//  reactnativeomnitureapi
//
//  Created by Vivek Parekh on 11/2/16.
//  Copyright © 2016 Vivek Parekh. All rights reserved.
//

#import "reactnativeomnitureapi.h"
#import "ADBMobile.h"

@implementation reactnativeomnitureapi

RCT_EXPORT_MODULE();


RCT_EXPORT_METHOD(trackAction:(NSString *)page contextData:(NSDictionary *)contextData)
{
    NSLog(@"Calling Track Action %@", contextData);
    ADBMobile.debugLogging = true;
    [ADBMobile trackAction:page data:contextData];
}

RCT_EXPORT_METHOD(trackState:(NSString *)page contextData:(NSDictionary *)contextData)
{
    NSLog(@"Calling Track State %@", page);
    [ADBMobile trackState:page data:contextData];
}

RCT_EXPORT_METHOD(mediaOpenWithSettings:(nullable NSString *)name
                  length:(double)length
                  playerName:(nullable NSString *)playerName
                  playerID:(nullable NSString *)playerID)
{
    NSLog(@"Calling mediaCreateSettingsWithName %@", name);
    ADBMediaSettings *mediaSettings = [ADBMobile mediaCreateSettingsWithName:name
                                    length:length
                                playerName:playerName
                                  playerID:playerID];
    mediaSettings.milestones = @"25,50,75";
    mediaSettings.segmentByMilestones = YES;
    mediaSettings.offsetMilestones = @"60,120";
    mediaSettings.segmentByOffsetMilestones = YES;
    mediaSettings.trackSeconds = 30;
    NSLog(@"Calling mediaOpenWithSettings %@", mediaSettings);
    [ADBMobile mediaOpenWithSettings:mediaSettings
                            callback:nil];
}

RCT_EXPORT_METHOD(mediaPlay:(nullable NSString *)name
                  offset:(double)offset)
{
    NSLog(@"Calling mediaPlay %@", name);
    [ADBMobile mediaPlay:name
                  offset:offset];
}

RCT_EXPORT_METHOD(mediaStop:(nullable NSString *)name
                  offset:(double)offset)
{
    NSLog(@"Calling mediaStop %@", name);
    [ADBMobile mediaStop:name
                  offset:offset];
}

RCT_EXPORT_METHOD(mediaClose:(nullable NSString *)name)
{
    NSLog(@"Calling mediaClose %@", name);
    [ADBMobile mediaClose:name];
}

@end
