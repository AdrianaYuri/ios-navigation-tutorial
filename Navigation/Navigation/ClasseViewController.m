//
//  ClasseTesteViewController.m
//  Navigation
//
//  Created by Adriana Yuri on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "ClasseViewController.h"
#import "Singleton.h"

@interface ClasseViewController ()

@end

@implementation ClasseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        tela = [[[Singleton sharedInstance]retornaArray]objectAtIndex:0];
    }
    return self;
}



-(void) viewDidLoad {
    [super viewDidLoad];
    self.title = [tela retornaPrimeiraLetra];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:@"Palavra"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    
    
    
}
- (id)initWithPalavra :(Objeto*) dicionario {

    self = [super init];
    if (self)
    {
        tela = dicionario;
        
    }
    return self;
}

-(void)next:(id)sender {
    ClasseViewController *proximo = [[ClasseViewController alloc]
                                          initWithNibName:nil
                                          bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
