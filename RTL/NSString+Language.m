//
//  NSString+Language.m
//  RTL
//
//  Created by Arash on 5/21/17.
//  Copyright © 2017 Arash Z. Jahangiri. All rights reserved.
//

#import "NSString+Language.h"
#import "NSBundle+Language.h"
@implementation NSString (Language)

- (NSString *)localize{
    NSString *bundle = [[NSBundle mainBundle]pathForResource:[self currentLanguage] ofType:@"lproj"];
    NSBundle *langBundle = [[NSBundle alloc]initWithPath:bundle];
    return NSLocalizedStringFromTableInBundle(self, nil, langBundle, @"");
}

- (NSString *)currentLanguage{
    NSArray *array = [[NSUserDefaults standardUserDefaults]objectForKey:@"AppleLanguages"];
    NSString *language = array[0];
    return language;
}

@end
