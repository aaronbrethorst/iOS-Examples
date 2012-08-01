//
//  main.m
//  TableViewExample
//
//  Created by Aaron Brethorst on 8/1/12.
//  Copyright (c) 2012 Cocoa Controls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCSampleTableViewController : UITableViewController

@end

@implementation CCSampleTableViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HelloWorld"];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"HelloWorld"];
    }
    
    cell.textLabel.text = [indexPath description];
    
    return cell;
}

@end

@interface CCAppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property(strong,nonatomic) CCSampleTableViewController *controller;
@end

@implementation CCAppDelegate
@synthesize controller;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.controller = [[CCSampleTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    self.window.rootViewController = self.controller;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end

int main(int argc, char *argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([CCAppDelegate class]));
    }
}
