//
//  WeexNatTransfer.m
//
//  Created by Acathur on 18/2/12.
//  Copyright © 2017 Instapp. All rights reserved.
//


#import "WeexNatTransfer.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import <NatTransfer/NatTransfer.h>

@implementation WeexNatTransfer

WX_PlUGIN_EXPORT_MODULE(nat/transfer, WeexNatTransfer)
WX_EXPORT_METHOD(@selector(download::))
WX_EXPORT_METHOD(@selector(upload::))

- (void)download:(NSDictionary *)params :(WXModuleKeepAliveCallback)callback{
    [[[NatTransfer alloc] init] download:params :^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error, false);
            } else {
                BOOL keepAlive = result[@"progress"];
                callback(result, keepAlive);
            }
        }
    }];
}

- (void)upload:(NSDictionary *)params :(WXModuleKeepAliveCallback)callback{
    [[[NatTransfer alloc] init] upload:params :^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error, false);
            } else {
                BOOL keepAlive = result[@"progress"];
                callback(result, keepAlive);
            }
        }
    }];
}

@end
