//
//  CCDGoodSeatPlugin.h
//  JSWebViewBridge
//
//  Created by WangBo on 2018/11/18.
//  Copyright © 2018 wangbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCTWebViewPlugin.h"


NS_ASSUME_NONNULL_BEGIN

@interface CCDGoodSeatPlugin : NSObject  <OCTWebViewPlugin>

@property (copy, nonatomic, readonly) NSString *identifier;
@property (copy, nonatomic, readonly) NSString *javascriptCode;




@end

NS_ASSUME_NONNULL_END
