



#import "AppDelegate.h"
#import "BirdFlyViewController.h"
#import "qidongdonghua.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  
    
    
//    自定义一个启动动画的VC类
    qidongdonghua *qidh=[[qidongdonghua alloc]init];
    
    self.window.rootViewController=qidh;

    
    

    
    [self startDongHua];
//    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}
//启动动画的方法(作为背景)
-(void)startDongHua
{
    UIImage *image1=[UIImage imageNamed:@"超人素材2"];
    UIImage *image2=[UIImage imageNamed:@"超人素材3"];
    NSArray *arr=@[image1,image2];
    UIImageView *start=[[UIImageView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    start.animationImages=arr;
    start.image=[arr firstObject];
    
//    qidongdonghua *qidh=[[qidongdonghua alloc]init];

    [self.window addSubview:start];
    
//    动画的频率
    start.animationDuration=0.2;
    [start startAnimating];
   
   

}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
