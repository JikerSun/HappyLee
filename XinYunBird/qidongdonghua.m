//
//  qidongdonghua.m
//
//  Created by MS on 15-9-7.
//  Copyright (c) 2015年 lcc. All rights reserved.
//

#import "qidongdonghua.h"
#import "BirdFlyViewController.h"
@interface qidongdonghua ()

@end

@implementation qidongdonghua
{
//    定义一个全局变量定时器
    NSTimer *animationTimer;
//    定义一个全局的数字
    int n;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    启动动画的方法调用
    [self startDongHua];
    
}
//启动动画的方法
-(void)startDongHua
{
    UIImage *image1=[UIImage imageNamed:@"超人素材2"];
    UIImage *image2=[UIImage imageNamed:@"超人素材3"];
    NSArray *arr=@[image1,image2];
    UIImageView *start=[[UIImageView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    start.animationImages=arr;
    start.image=[arr firstObject];
    [self.view addSubview:start];
    
    
//    设置动画的频率是0.2
    start.animationDuration=0.2;
    [start startAnimating];

    //    设置定时器每1秒就调用一次go方法 (sleep不行滴   好像只能让真得启动页沉睡)
     animationTimer =[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(go) userInfo:nil repeats:YES];
    
}
//定时器的方法每1秒调用一次
-(void)go
{
//    每一秒n加1
    n++;
    
//    如果n加到5 就跳转到游戏的VC类(4秒后   n从0开始加)
    if (n==3) {
        

            BirdFlyViewController *birdFly = [[BirdFlyViewController alloc] init];
            [self presentViewController:birdFly animated:YES completion:nil];

    }



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)prefersStatusBarHidden
{

    return YES;
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
