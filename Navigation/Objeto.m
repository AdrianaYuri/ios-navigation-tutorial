//
//  Objeto.m
//  Navigation
//
//  Created by Adriana Yuri on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Objeto.h"

@implementation Objeto

@synthesize palavra, imagem;

-(Objeto*) initWithPalavra: (NSString*)p andImagem: (NSString*)i{
    self = [super init];
    if (self)
    {
        palavra = p;
        imagem = i;
    }
    return self;
}


- (NSString*) retornaPrimeiraLetra
{
return [[[self palavra] substringToIndex: 1 ]capitalizedString];
}

@end
