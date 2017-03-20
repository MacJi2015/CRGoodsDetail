//
//  CRProtocolManager.h
//  CRProtocolManager
//
//  Created by 郭嘉 on 2017/3/20.
//  Copyright © 2017年 郭嘉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;
@end
