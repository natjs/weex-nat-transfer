package com.nat.weex;

import com.nat.transfer.ModuleResultListener;
import com.nat.transfer.TransferModule;

import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.common.WXModule;

/**
 * Created by Daniel on 17/2/17.
 * Copyright (c) 2017 Nat. All rights reserved.
 */

public class Transfer extends WXModule {

    @JSMethod
    public void upload(String str, final JSCallback jsCallback){
        TransferModule.getInstance().upload(str, new ModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }

    @JSMethod
    public void download(String str, final JSCallback jsCallback){
        TransferModule.getInstance().download(str, new ModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invokeAndKeepAlive(o);
            }
        });
    }
}
