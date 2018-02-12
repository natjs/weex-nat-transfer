//
//  WeexNatTransfer.h
//
//  Created by Acathur on 18/2/12.
//  Copyright © 2017 Instapp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>

@protocol WeexNatTransferPro <WXModuleProtocol>

- (void)download:(NSDictionary *)params :(WXModuleKeepAliveCallback)callback;
- (void)upload:(NSDictionary *)params :(WXModuleKeepAliveCallback)callback;

@end

@interface WeexNatTransfer : NSObject<WeexNatTransferPro>

@end
