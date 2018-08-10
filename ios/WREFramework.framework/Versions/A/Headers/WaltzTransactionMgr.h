//
//  WaltzTransactionMgr.h
//  Waltz SDK
//
//  Created by Waltz-Admin on 2017-09-18.
//  Copyright © 2017 Waltz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WltzResponseConstants.h"

@protocol WltzTransactionMgrDelegate <NSObject>
- (void) didFinishWaltzTransactionWithErrorCode:(WltzTransactionResponseCodes)errorCode;
@end

@interface WaltzTransactionMgr : NSObject

+ (WaltzTransactionMgr *_Nonnull) sharedManager;
- (void) beginTransactionWithLicenseKey:(nonnull NSString *)licenseKey;
@property (weak,nonatomic,nullable) id <WltzTransactionMgrDelegate> delegate;

@end
