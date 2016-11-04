//
//  ViewController.m
//  算法
//
//  Created by 纪高飞 on 16/10/30.
//  Copyright © 2016年 纪高飞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 快速排序
    /**
     *1.先从数列中取出一个数作为基准数
     *2.分区过程 ，将比这个数大的数全放到它的右边，小于或等于它的数全放到左边
     *3.再对左右重复第二步，直到各区间只有一个数
     */
    /**
     *1.continue:跳出此次循环，直接下一循环
     *2.break：跳出整个循环
     *3.return:跳出函数
     */
    
    // 简单插入排序：1.将某一元素插入到一个有序排列的数组中，要求插入元素后数组依然有序
    
    /**思路
     *1.元素A依次对比数组元素
     *2.如果元素A当前数组元素跳出此次循环，元素A再去对比数组下一个元素
     *3.如果元素A==当前数组元素，直接终止循环
     *4.如果元素A<当前数组元素，则插入元素A并终止 循环
     */
    
   
    
  //  [self function1];
    
    
     // 简单插入排序：2.将一个数据插入到已经排好序的有序数据中，从而得到一个新的，个数加一的有序数据
    /*
     实现思路(升序):
     1- 对于一组数据5,3,2,6,1,7,4
     2- 先排列好前两个数"3,5",将2插入到前面排好的有序数列中去,变为"2,3,5"
     3- 再将6插入到"2,3,5"中,依次插入即可
     */
    [self function2];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - 简单插入排序1
-(void)function1
{
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"1",@"5",@"8",@"9",@"12", nil];
    
    int element = 6;
    
    for (int i = 0; i < arr.count; i++)
    {
        if (element > [arr[i] intValue])
        {
            NSLog(@"元素大于数组中元素%@,继续循环",arr[i]);
            continue;
        }
        else if(element == [arr[i] intValue])
        {
            NSLog(@"元素等于数组元素%@,终止循环",arr[i]);
            break;
        }
        else
        {
            [arr insertObject:[NSString stringWithFormat:@"%d",element] atIndex:i];
            break;
        }
    }
    
    NSLog(@"循环结束后的数组内容为%@",arr);
}
#pragma mark - 插入排序2
-(void)function2
{
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"5",@"3",@"2",@"6",@"1",@"7",@"4",nil];
    
    for (int i = 1; i < arr.count; i ++)
    {
        int temp = [arr[i] intValue];
        
        for (int j = i - 1; j >= 0 && temp < [arr[j] intValue]; j --)
        {
            NSLog(@"循环时,temp值是%d,arr[j]是%d",temp,[arr[j] intValue]);
            arr[j + 1] = arr[j];
            arr[j] = [NSNumber numberWithInt:temp];
            NSLog(@"循环时,数组是%@",arr);
        }
        
        
    }
    NSLog(@"插入排序后：%@",arr);
}

/**
 *"我的音乐"项目需求 :
 将你喜欢的歌曲,添加到"我的歌单",防止重复添加,如果"我的歌单"中存在这首歌,则不予加入并提示用户,若"我的歌单"中不存在这首歌,则加入
 */
-(void)function3
{
    //初始化数组
    NSMutableArray *arr = [[NSMutableArray alloc] initWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"userDefaultsArr"]];
    if( !arr )
    {
        arr = [[NSMutableArray alloc] init];
    }
    
    //将元素str加入数组,若数组无元素,直接加入即可,若数组有元素,需要一一对比,若相同则返回,都不相同则加入
    NSString *str = @"8";
    if(arr)
    {
        if(arr.count == 0)
        {
            [arr addObject:str];
            [[NSUserDefaults standardUserDefaults] setObject:arr forKey:@"userDefaultsArr"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        else
        {
            for (int i = 0; i < arr.count; i++)
            {
                if ([str isEqualToString:[arr objectAtIndex:i]])
                {
                    NSLog(@"已存在");
                    break;
                }
                if (i == arr.count - 1)
                {
                    [arr addObject:str];
                    [[NSUserDefaults standardUserDefaults] setObject:arr forKey:@"userDefaultsArr"];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                }
                
            }
            
        }
        
        NSLog(@"完后数组内容为%@",arr);
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
