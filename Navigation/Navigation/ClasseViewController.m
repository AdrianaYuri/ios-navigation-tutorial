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


-(void) viewDidLoad {
    [super viewDidLoad];
    
  
  [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]]];
    
    self.title = [palavraTela retornaPrimeiraLetra];
    
    if (indice < [[[Singleton sharedInstance] retornaArray] count]-1) {
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    }
    else{
        UIBarButtonItem*voltar = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(voltar:)];
    self.navigationItem.rightBarButtonItem=voltar;
    }
    
    
    
    UIImageView *img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[palavraTela imagem]]];
    [self.view addSubview: img];
    img.center = self.view.center;
    [img.layer setBorderColor: [[UIColor blueColor] CGColor]];
    [img.layer setBorderWidth: 5.0];

    
    
    //mudar x e tamanho retangulo para centralizar
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 295, 320, 100)];
    [label setFont:[UIFont fontWithName:@"Verdana-Bold" size: 30]];
    [label setTextColor:[UIColor blueColor]];
    label.textAlignment = UITextAlignmentCenter;
    
    label.text = [palavraTela palavra];
    [self.view addSubview:label];
    
    
    UIButton *botaoVoz = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    botaoVoz.frame = CGRectMake(0, 335, 320, 100);
    [botaoVoz setImage:[UIImage imageNamed:@"iconVoz.png"] forState:UIControlStateNormal];
    	[botaoVoz addTarget:self action:@selector(falar:) forControlEvents:UIControlEventTouchUpInside];
     [self.view addSubview:botaoVoz];

    
    
    
//    
//    [botao setTitle:@"Palavra" forState:UIControlStateNormal];
//    [botao sizeToFit];
//    botao.center = self.img.center;
    
    
//    self.window.backgroundColor = [UIColor purpleColor];
    
    
    
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        indice = 0;
        palavraTela = [[[Singleton sharedInstance]retornaArray]objectAtIndex:indice];
    }
    return self;
}


- (id)initWithPalavra :(Objeto*) palavraAtual {

    self = [super init];
    if (self)
    {
        palavraTela = palavraAtual;
        indice = [[[Singleton sharedInstance]retornaArray]indexOfObject:palavraAtual];
    }
    return self;
}

-(void)next:(id)sender {
    Objeto *proximaPalavra;
    proximaPalavra = [[[Singleton sharedInstance] retornaArray] objectAtIndex:indice+1];
    ClasseViewController *proximo = [[ClasseViewController alloc] initWithPalavra:proximaPalavra];
                                      
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}

-(void)voltar:(id)sender {
    
    
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)falar:(id)sender{
    
    AVSpeechUtterance *palavraFalada = [AVSpeechUtterance speechUtteranceWithString: [palavraTela palavra]];
    palavraFalada.rate = AVSpeechUtteranceMinimumSpeechRate;
    palavraFalada.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    
    AVSpeechSynthesizer *voz = [[AVSpeechSynthesizer alloc] init];
    
    [voz speakUtterance:palavraFalada];

}
@end
