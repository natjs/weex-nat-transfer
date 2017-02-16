//
//  NatWeexTransfer.h
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Nat. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <WeexSDK/WeexSDK.h>


@protocol NatWeexTransferPro <WXModuleProtocol>
- (void)download:(NSDictionary *)params :(WXModuleCallback)callback;
- (void)upload:(NSDictionary *)params :(WXModuleCallback)callback;

@end


@interface NatWeexTransfer : NSObject<NatWeexTransferPro>

@end
