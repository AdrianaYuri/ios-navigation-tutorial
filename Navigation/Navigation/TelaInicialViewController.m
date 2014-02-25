//
//  TelaInicialViewController.m
//  Navigation
//
//  Created by Adriana Yuri on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "TelaInicialViewController.h"

@interface TelaInicialViewController ()

@end

@implementation TelaInicialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


    
    -(void) viewDidLoad {
        [super viewDidLoad];
        self.title = @"A";
        UIBarButtonItem *next = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
        self.navigationItem.rightBarButtonItem=next;
        
        UIButton *botao = [UIButton
                           buttonWithType:UIButtonTypeSystem];
        [botao
         setTitle:@"Mostre uma palavra, uma figura e leia a palavra ao apertar um botao"
         forState:UIControlStateNormal];
        [botao sizeToFit];
        botao.center = self.view.center;
        
        [self.view addSubview:botao];
        
        
    }
    
    -(void)next:(id)sender {
        TelaInicialViewController *proximo = [[TelaInicialViewController alloc]
                                         initWithNibName:nil
                                         bundle:NULL];
        [self.navigationController pushViewController:proximo
                                             animated:YES];
        
    }
    
    


@end
