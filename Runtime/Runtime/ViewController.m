//
//  ViewController.m
//  Runtime
//
//  Created by 纪高飞 on 16/11/7.
//  Copyright © 2016年 纪高飞. All rights reserved.
//

#import "ViewController.h"
#import <objc/message.h>
#import "Person.h"
#define  kScreenW  [UIScreen mainScreen].bounds.size.width
#define kScreenH  [UIScreen mainScreen].bounds.size.height
#define kScaleW   [UIScreen mainScreen].bounds.size.width  / 375
#define kScaleH    [UIScreen mainScreen].bounds.size.height / 667
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     *runtime的使用
     runtime:必须要导入头文件 <objc/message.h>
     任何方法调用本质:发送一个消息,用runtime发送消息.OC底层实现通过runtime实现
     
     验证:方法调用,是否真的是转换为消息机制
     
     runtime都有一个前缀,谁的事情使用谁
     */
    
    /**
     *runtime的相关机制
     // 类方法本质:类对象调用[NSObject class]
     // id:谁发送消息
     // SEL:发送什么消息
     // ((NSObject *(*)(id, SEL))(void *)objc_msgSend)([NSObject class], @selector(alloc));
     // xcode6之前,苹果运行使用objc_msgSend.而且有参数提示
     // xcode6苹果不推荐我们使用runtime
     
     // 解决消息机制方法提示步骤
     // 查找build setting -> 搜索msg
     // 最终生成消息机制,编译器做的事情
     // 最终代码,需要把当前代码重新编译,用xcode编译器,clang
     // clang -rewrite-objc main.m 查看最终生成代码
     */
    
    /**
     *runtime的使用场景
     需要用到runtime,消息机制
     1.装逼
     2.不得不用runtime消息机制,可以帮我调用私有方法.
     */
    
    
    /**
     *面试相关内容
     // 方法调用流程
     // 怎么去调用eat方法 ,对象方法:类对象的方法列表 类方法:元类中方法列表
     // 1.通过isa去对应的类中查找
     // 2.注册方法编号
     // 3.根据方法编号去查找对应方法
     // 4.找到只是最终函数实现地址,根据地址去方法区调用对应函数
     */
    self.view.backgroundColor = [UIColor redColor]; 
    
    Person *p = objc_msgSend(objc_getClass("Person"), sel_registerName("alloc"));
    
    p = objc_msgSend(p, sel_registerName("init"));
    [p eat];
    

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
