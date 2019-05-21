//
//  NSBundle+PGDatePicker.m
//
//  Created by piggybear on 2017/11/4.
//  Copyright © 2017年 piggybear. All rights reserved.
//

#import "NSBundle+PGDatePicker.h"
#import "PGDatePicker.h"

@implementation NSBundle (PGDatePicker)

+ (instancetype)safeBundle {
    static NSBundle *bundle = nil;
    if (bundle == nil) {
//        NSBundle *curBundle = [NSBundle bundleForClass:[PGDatePicker class]];
//        NSString *curBundleName = curBundle.infoDictionary[@"CFBundleName"];
        bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[PGDatePicker class]] pathForResource:@"ZFDatePicker" ofType:@"bundle"]];
        bundle = [NSBundle bundleWithPath:[bundle pathForResource:@"PGDatePicker" ofType:@"bundle"]];
    }
    return bundle;
}

+ (NSString *)localizedStringForKey:(NSString *)key {
    return [self localizedStringForKey:key value:nil];
}

+ (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value {
    static NSBundle *bundle = nil;
    if (bundle == nil) {
        NSString *language = [NSLocale preferredLanguages].firstObject;
        if ([language hasPrefix:@"en"]) {
            language = @"en";
        } else if ([language hasPrefix:@"zh"]) {
            if ([language rangeOfString:@"Hans"].location != NSNotFound) {
                language = @"zh-Hans";
            } else { 
                language = @"zh-Hant";
            }
        } else {
            language = @"zh-Hans";
        }
        bundle = [NSBundle bundleWithPath:[[NSBundle safeBundle] pathForResource:language ofType:@"lproj"]];
    }
    value = [bundle localizedStringForKey:key value:value table:nil];

    return [[NSBundle mainBundle] localizedStringForKey:key value:value table:nil];
}
@end