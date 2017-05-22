//
//  NSBundle+Language.h
//  RTL
//
//  Created by Arash on 5/21/17.
//  Copyright © 2017 Arash Z. Jahangiri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (Language)
- (void)setLanguage:(NSString *)language;
- (BOOL)isLanguageRTL:(NSString *)languageCode;
@end
