//
//  ViewController.m
//  firstApp
//
//  Created by Алекс  on 23.04.17.
//  Copyright © 2017 Алекс . All rights reserved.
//

#import "ViewController.h"
#import "DataKeeper.h"

@interface ViewController (){
    UITextField *textField;
}
@property (retain) NSMutableArray* data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addComponents];
    
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) addComponents{
///создание кнопки
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 270, 200, 30)];
    [button setTitle:@"Добавить" forState:UIControlStateNormal ];
    [button setTitleEdgeInsets:(UIEdgeInsetsMake(2, 50, 2, 50))];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor grayColor]];
    button.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    [button addTarget:self action:@selector(addString:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    //Текстовые поля
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 150, 30)];
    [label setText:@"Введите слово:"];
    [label setBackgroundColor:[UIColor blueColor]];
    [label setTextColor:[UIColor blackColor]];
    [self.view addSubview:label];

    textField = [[UITextField alloc] initWithFrame:CGRectMake(200, 200, 200, 30)];
    [textField setBorderStyle:UITextBorderStyleRoundedRect];
    [textField setBackgroundColor:[UIColor whiteColor]];
    [textField setText:@""];
    [self.view addSubview:textField];
    
    
    ///создание кнопки
    UIButton *buttonSort = [[UIButton alloc] initWithFrame:CGRectMake(0, 350, 200, 30)];
    [buttonSort setTitle:@"Sort" forState:UIControlStateNormal ];
    [buttonSort setTitleEdgeInsets:(UIEdgeInsetsMake(2, 50, 2, 50))];
    [buttonSort setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [buttonSort setBackgroundColor:[UIColor grayColor]];
    buttonSort.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    [buttonSort addTarget:self action:@selector(sortMethod:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonSort];
    
  }

- (void) addString:(UIButton*) sender{
    if(_data == nil)//Если массив  еще не создан
        _data = [[NSMutableArray alloc] init];//
    [_data addObject:textField.text];//Добавление элемента в массив
    
    
}

//сортировка массива
- (void) sortMethod: (UIButton*) sender{
    NSArray *sortedArray = [_data sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    for(NSString *string in sortedArray){
        @autoreleasepool {// правильно ли так?
            NSLog(@"%@",string);
        }
    }
    //? почему нельзя так делать?
   // [sortedArray release];// попытка уничтожение массива не увенчалась успехом
   // [_data release];
    
}



@end
    
