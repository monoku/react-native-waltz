//
//  ReactNativeWaltz.m
//
//  Created by Monoku S.A.S.
//  Copyright © 2018 Monoku S.A.S. All rights reserved.
//

#import <React/RCTBridgeModule.h>

@interface ReactNativeWaltz : NSObject <RCTBridgeModule>
@end

@implementation ReactNativeWaltz

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(startTransaction:(NSString *)name location:(NSString *)location)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
        // [[NSNotificationCenter defaultCenter] postNotificationName:@"RNWStartTransaction" object:self];
    });
}

@end
