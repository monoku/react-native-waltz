//
//  RNWViewController.m
//
//  Created by Monoku S.A.S.
//  Copyright © 2018 Monoku S.A.S. All rights reserved.
//

#import "RNWViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface RNWViewController ()
@end

@implementation RNWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self requestCameraPermission];
}

- (void) requestCameraPermission {
    if ([AVCaptureDevice respondsToSelector:@selector(requestAccessForMediaType: completionHandler:)]) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            if (granted) {}
            else {}
        }];
    } else {
    }
}

- (void)startTransaction {
    [[WaltzTransactionMgr sharedManager] beginTransactionWithLicenseKey:@""];
    [WaltzTransactionMgr sharedManager].delegate = self;
}

- (void) didFinishWaltzTransactionWithErrorCode:(WltzTransactionResponseCodes)errorCode{
    NSLog(@"The application quit with error code %u",errorCode);
}

@end
