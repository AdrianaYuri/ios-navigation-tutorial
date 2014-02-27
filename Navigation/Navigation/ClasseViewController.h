//
//  ClasseTesteViewController.h
//  Navigation
//
//  Created by Adriana Yuri on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objeto.h"
#import <AVFoundation/AVFoundation.h>

@interface ClasseViewController : UIViewController{
    Objeto *palavraTela;
    NSInteger indice;
}

@property Objeto *palavraTela;
@property NSInteger indice;
@property (strong, nonatomic) AVSpeechSynthesizer *fala;
@property (strong, nonatomic) AVSpeechUtterance *som;


- (id)initWithPalavra :(Objeto*) dicionario ;

@end
