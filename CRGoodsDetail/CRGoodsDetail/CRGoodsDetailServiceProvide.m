//
//  CRGoodsDetailServiceProvide.m
//  CRGoodsDetail
//
//  Created by 郭嘉 on 2017/3/20.
//  Copyright © 2017年 郭嘉. All rights reserved.
//

#import "CRGoodsDetailServiceProvide.h"
#import <CRGoodsDetailServiceProtocol/CRGoodsDetailServiceProtoco.h>
#import <CRProtocolManager/CRProtocolManager.h>
#import "CRGoodsDetailViewController.h"

@interface CRGoodsDetailServiceProvide()

@end
@implementation CRGoodsDetailServiceProvide

+(void)load{
    [CRProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(CRGoodsDetailServiceProtoco)];
}

-(UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName
{
    CRGoodsDetailViewController *goodsDetailVC = [[CRGoodsDetailViewController alloc] initWithGoodsId:goodsId goodsName:goodsName];
    return goodsDetailVC;
}
@end
