//
//  Singleton.m
//  Navigation
//
//  Created by Adriana Yuri on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"
#import "Objeto.h"

@implementation Singleton

@synthesize dados;

-(id) init{
    self = [super init];
    
    if(self){
        dados = [[NSMutableArray alloc]init];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Avião" andImagem:@"aviao.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Bola" andImagem:@"bola.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Carro" andImagem:@"carro.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Dado" andImagem:@"dado.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Elefante" andImagem:@"elefante.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Foca" andImagem:@"foca.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Gato" andImagem:@"gato.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Hipopótamo" andImagem:@"hipopotamo.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Igreja" andImagem:@"igreja.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Janela" andImagem:@"janela.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Leão" andImagem:@"leao.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Macaco" andImagem:@"macaco.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Navio" andImagem:@"navio.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Ovo" andImagem:@"ovo.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Peixe" andImagem:@"peixe.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Queijo" andImagem:@"queijo.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Rádio" andImagem:@"radio.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Sapo" andImagem:@"sapo.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Torre" andImagem:@"torre.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Uva" andImagem:@"uva.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Vassoura" andImagem:@"vassoura.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Xicara" andImagem:@"xicara.png"]];
        [dados addObject:[[Objeto alloc] initWithPalavra:@"Zebra" andImagem:@"zebra.png"]];
        



    }
    return self;
}

+(id)alloc
{
@throw @"Erro!";
}

+(id) allocWithZone:(struct _NSZone *)zone{
    return [self sharedInstance];
}
+(id) sharedInstance{
    static Singleton *instancia = nil;
    if (!instancia) {
        instancia = [[super allocWithZone:nil] init];
    }
    return instancia;
}

- (NSMutableArray*) retornaArray{
    NSSortDescriptor *referencia =[[NSSortDescriptor alloc]initWithKey:@"palavra" ascending:YES];
    NSArray *arrayReferencia = @[referencia];
    [dados sortUsingDescriptors:arrayReferencia];

    return dados;
}


@end
