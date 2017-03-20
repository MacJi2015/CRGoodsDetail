//
//  CRGoodsDetailServiceProtoco.h
//  CRGoodsDetailServiceProtocol
//
//  Created by 郭嘉 on 2017/3/20.
//  Copyright © 2017年 郭嘉. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CRGoodsDetailServiceProtoco <NSObject>

@required;

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString*)goodsId goodsName:(NSString *)goodsName;

@end
