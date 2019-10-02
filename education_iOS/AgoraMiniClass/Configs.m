//
//  Configs.m
//  AgoraSmallClass
//
//  Created by yangmoumou on 2019/6/13.
//  Copyright © 2019 yangmoumou. All rights reserved.
//

#import <Foundation/Foundation.h>




#define kAgoraAppid  @"aab8b8f5a8cd4469a63042fcfafe7063"

#define RCColorWithValue(v,a)         [UIColor colorWithRed:(((v) >> 16) & 0xff)/255.0f green:(((v) >> 8) & 0xff)/255.0f blue:((v) & 0xff)/255.0f alpha:a]

#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define WEAK(object) __weak typeof(object) weak##object = object;

#define kBaseUrl           @"https://webdemo.agora.io/"
#define kGetServerRtmIdUrl  [kBaseUrl stringByAppendingString:@"/edu_control/sentry"]
#define kGetWhiteBoardUuid [kBaseUrl stringByAppendingString:@"/edu_whiteboard/v1/room"]
#define kGetWhiteBoardRoomToken  [kBaseUrl stringByAppendingString:@"/edu_whiteboard/v1/room/join"]
