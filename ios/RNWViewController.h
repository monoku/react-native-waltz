//
//  RNWViewController.h
//
//  Created by Monoku S.A.S.
//  Copyright © 2018 Monoku S.A.S. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WREFramework/WaltzTransactionMgr.h>

@interface RNWViewController : UIViewController<WltzTransactionMgrDelegate>

- (void)startTransaction;

@end
