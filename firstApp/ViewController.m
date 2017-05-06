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
    DataKeeper * dk;
    UITextField *textField;
}
@property NSMutableArray* data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addButton];
    
     dk = [[DataKeeper alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


///создание кнопки
- (void) addButton{
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(40, 300, 200, 30)];
    [button setTitle:@"logOut" forState:UIControlStateNormal ];
    [button setTitleEdgeInsets:(UIEdgeInsetsMake(2, 50, 2, 50))];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor grayColor]];
    button.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    [button addTarget:self action:@selector(playAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    //Текстовые поля
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(40, 200, 200, 30)];
    [label setText:@"Hello"];
    [label setBackgroundColor:[UIColor whiteColor]];
    [label setTextColor:[UIColor blackColor]];
    [self.view addSubview:label];

    textField = [[UITextField alloc] initWithFrame:CGRectMake(40, 250, 200, 30)];
    [textField setBorderStyle:UITextBorderStyleRoundedRect];
    [textField setBackgroundColor:[UIColor whiteColor]];
    [textField setText:@"sample"];
    [self.view addSubview:textField];
    // text
  }

-(void) playAction:(UIButton*) sender{
    [_data addObject:textField.text];
}

@end
    
