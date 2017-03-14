//
//  NSString+EncodeURL.m
//  SmartSchoolForParent
//
//  Created by 徐建东 on 2017/3/6.
//  Copyright © 2017年 徐建东. All rights reserved.
//

#import "NSString+EncodeURL.h"

@implementation NSString (EncodeURL)

- (NSString*)encodeURL
{
    NSString *newString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes( kCFAllocatorDefault, (CFStringRef)self, NULL, CFSTR(":/?#[]@!$ &'()*+,;=\"<>%{}|\\^~`"),kCFStringEncodingUTF8));
    if (newString) {
        return newString;
    }
    return @"";
}

@end
