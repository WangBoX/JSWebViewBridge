"use strict";

if (window.bridge == null) {
    window.bridge = {};
}

window.bridge.getQrCode = function (param, fns) {
    var success = 0;
    var cancel = 1;
    var fail = 2;
    window.bridge.invoke("WebView.bridge.GoodsSeat", "scanGetQrCode:CallBack:", function (data) {
        /// data: { type: success|..., data: xxx }
        switch (data.type) {
            case success:
                fns.success(data.data);
                break;
            case fail:
                fns.fail(data.data);
                break;
            case cancel:
                fns.cancel(data.data);
                break;
    }
    }, param);
};

window.bridge.downloadQrCode = function (param, fns) {
    var success = 0;
    var cancel = 1;
    var fail = 2;
    window.bridge.invoke("WebView.bridge.GoodsSeat", "downloadQrCode:CallBack:", function (data) {
                         /// data: { type: success|..., data: xxx }
                         switch (data.type) {
                         case success:
                         fns.success(data.data);
                         break;
                         case fail:
                         fns.fail(data.data);
                         break;
                         case cancel:
                         fns.cancel(data.data);
                         break;
                         }
                         }, param);
};

window.bridge.closeWebView = function (param,fns) {
    var success = 0;
    var cancel = 1;
    var fail = 2;
    window.bridge.invoke("WebView.bridge.GoodsSeat", "popViewControllerCallBack:", function (data) {
                         /// data: { type: success|..., data: xxx }
                         switch (data.type) {
                         case success:
                         fns.success(data.data);
                         break;
                         case fail:
                         fns.fail(data.data);
                         break;
                         case cancel:
                         fns.cancel(data.data);
                         break;
                         }
                         }, param);
};


