//
//  CRGoodsDetailViewController.m
//  CRGoodsDetail
//
//  Created by 郭嘉 on 2017/3/20.
//  Copyright © 2017年 郭嘉. All rights reserved.
//

#import "CRGoodsDetailViewController.h"

@interface CRGoodsDetailViewController ()

@property(nonatomic,copy)NSString *goodsId;
@property(nonatomic,copy)NSString *goodsName;

@property(nonatomic,strong)UILabel *statusLabel;
@property(nonatomic,strong)UIButton *buyButton;
@end

@implementation CRGoodsDetailViewController

-(instancetype)initWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName
{
    self=[super init];
    if (self) {
        _goodsId = goodsId;
        _goodsName = goodsName;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title=self.title;
    
    [self.view addSubview:self.statusLabel];
    [self.view addSubview:self.buyButton];
}

-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.statusLabel.frame = CGRectMake(0, 0, 100, 20);
    self.statusLabel.center = self.view.center;
    
    self.buyButton.frame = CGRectMake(0, self.view.frame.size.height-45, self.view.frame.size.width, 45);
}
#pragma mark - event
-(void)didClickBuyButton:(UIButton *)button
{
    
}
#pragma mark - getters
-(UILabel *)statusLabel{
    if (_statusLabel == nil) {
        _statusLabel = [[UILabel alloc]init];
        _statusLabel.textColor = [UIColor redColor];
        _statusLabel.font = [UIFont systemFontOfSize:15.f];
        _statusLabel.textAlignment = NSTextAlignmentCenter;
        _statusLabel.text = @"暂未购买";
    }
    return _statusLabel;
}
-(UIButton *)buyButton{
    if (_buyButton == nil) {
        _buyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_buyButton setTitle:@"立即购买" forState:UIControlStateNormal];
        [_buyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_buyButton setBackgroundColor:[UIColor redColor]];
        [_buyButton addTarget:self action:@selector(didClickBuyButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _buyButton;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
