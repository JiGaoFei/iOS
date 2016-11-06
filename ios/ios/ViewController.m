//
//  ViewController.m
//  ios
//
//  Created by 纪高飞 on 16/10/22.
//  Copyright © 2016年 纪高飞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor orangeColor];
    /*
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(0, 20, 100, 50)];
    textField.backgroundColor = [UIColor whiteColor];
    // 这句是设置光标的颜色
    textField.tintColor = [UIColor greenColor];
    [self.view addSubview:textField];
     */
    
    
    /*
     1. button的系统类型点击会有高亮状态
     2.在使用UITableView控件的时候  只要取cell的时候用forindexPath的时候都要注册；
     3.在做广告页面的时候 ，倒计时要给个定时器，定时器要及时的移除。
     4.在只有点击效果的时候能用手势解决的不要使用创建button，因为用button的时候需要设置尺寸。
     5.系统提供的有侧滑返回  系统的只是边缘进行处理  需要自定义手势 进行替换。
     6.越复杂的界面越要封装
     7.一个view从xib中加载需要重新固定尺寸
     8.在开发中在ViewDidLayoutSubviews中布局子控件
     9. textField.tintColor = [UIColor greenColor]; 这个是设置光标的颜色
     
     */
    
    
// 跳转界面push显示网页
    /*
     1.safari openURL 自带好多功能（前进，后退，刷新）必须要跳出当前应用
     2.UIWebView 没有功能，在当前的应用内打开网页 并且有safari，自己实现不能显示进度条
     3.SFariViewController：专门用来展示网页，需求想要在当前应用内展示网页，又想要safari功能的
     4.使用wk，
     */
    
    
//  设置透明色
    UIView *titleView = [[UIView alloc]initWithFrame:CGRectMake(0, 20, 320,40)];
    /*
    titleView.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.5];
    titleView.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
     子控件会继承自父控件的透明度 ，要作透明度的时候不要给父控件设置透明度，这样影响子控件的透明度的
     */
    
   
    /**按钮的状态
     *1.UIControlStateNormal
      1>除开 UIControlStateHighlighted  UIControlStateDisabled  UIControlStateSelected 以外 其它情况都是nomoral状态
      2>这种状态下的按钮是可以接受点击事件的
     
     *2.UIControlStateHighlighted
     1>当按住按钮不松开或者highlighted = YES时就能达到这种状态
     2>这种状态下按钮是可以接收点击事件的
     
     *3.UIControlStateDisabled
     1>button.enabled = NO 时就能达到这种状态
     2>这种状态下的按钮是无法接收点击事件的
     
     *4 UIControlStateSelected
     1>button.selected = YES 时就能达到这种状态
     2>这种状态下的按钮是可以接收点击事件的
    */
    
    
    /**让按钮无法点击的2种方法
     1.button.enabled = NO; 此时会进入UIControlStateDisabled
     2.button.userInterctionEnabled = NO;此时不会进入UIControlStateDisabled，继续保持当前的状态
     
     */
    
    
    /**
     *带有subscript 基本上都是集合
     */
    /**
     *tableView的重要属性
     *1.contentSize.height:所有内容的高度
     *2.contentInset:在内容周围额外增加的间距（内边距），始终粘着内容
     *3.contentOffset:内容距离frame矩形框，偏移多少
     */

    
    [self.view addSubview:titleView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
