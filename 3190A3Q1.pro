parent(marg,johnAnderson).
parent(jonina,marg).
parent(olofOlafsson,jonina).
parent(olafurOlafsson,olofOlafsson).
parent(kristinSveinsdottir,olafurOlafsson).
parent(sveinGudmundsson,kristinSveinsdottir).
parent(gudmundurGudmunsson,sveinGudmundsson).
parent(ingunnPalsdottir,gudmundurGudmunsson).
parent(pallArngrimsson,ingunnPalsdottir).
parent(arngrimurHrolfsson,pallArngrimsson).
parent(hrolfurSigurdsson,arngrimurHrolfsson).
parent(sigurthurHrolfsson,hrolfurSigurdsson).
parent(hrolfurBjarnason,sigurthurHrolfsson).
parent(bjarniSkulasson,hrolfurBjarnason).
parent(skuliGudmundsson,bjarniSkulasson).
parent(guthmundurSkulasson,skuliGudmundsson).
parent(skuliLoftsson,guthmundurSkulasson).
parent(lofturRikiGuttormsson,skuliLoftsson).
parent(guttormurOrmsson,lofturRikiGuttormsson).
parent(ormurSnorrason,guttormurOrmsson).
parent(snorriNarfasson,ormurSnorrason).
parent(narfiSnorrason2,snorriNarfasson).
parent(skardsSnorriNarfasson,narfiSnorrason2).
parent(narfiSnorrason1,skardsSnorriNarfasson).
parent(snorriHunbogason,narfiSnorrason1).
parent(hunbogiThorgilsson,snorriHunbogason).
parent(thorgilsGellisson,hunbogiThorgilsson).
parent(gellirThorkelsson,thorgilsGellisson).
parent(thorkellEyjolfsson,gellirThorkelsson).
parent(eyjolfurGraiThordarson,thorkellEyjolfsson).
parent(thordurGellirOlafsson,eyjolfurGraiThordarson).
parent(olafurFeilanThorsteinsson,thordurGellirOlafsson).
parent(thorsteinnRaudiOlafsson,olafurFeilanThorsteinsson).
parent(audurKetilsdottir,thorsteinnRaudiOlafsson).
parent(olofHvitiIngjaldsson,thorsteinnRaudiOlafsson).
parent(ingjaldHvitiHelgasson,olofHvitiIngjaldsson).
parent(thoraSigurdsdottir,ingjaldHvitiHelgasson).
parent(sigurdSnakeInTheEye,thoraSigurdsdottir).
parent(aslaugSigurdsdottir,sigurdSnakeInTheEye).
parent(ragnarLothbrok,sigurdSnakeInTheEye).
parent(brynhildrTheValkyrie,aslaugSigurdsdottir).
parent(olovGudrodsson,olofHvitiIngjaldsson).
parent(gudrodJagtkongeHalfdansson,olovGudrodsson).
parent(halvdanOysteinssondenGavmilde,gudrodJagtkongeHalfdansson).
parent(oysteinHalvdansson,halvdanOysteinssondenGavmilde).
parent(olafWoodcutterIngjaldsson,oysteinHalvdansson).
parent(ingjaldTheCunningOmundsson,olafWoodcutterIngjaldsson).
parent(onundBrautIngvarsson,ingjaldTheCunningOmundsson).
parent(ingvarTheTallEysteinsson,onundBrautIngvarsson).
parent(eysteinAdilsson,ingvarTheTallEysteinsson).
parent(adilsAthilsOttarsson,eysteinAdilsson).
parent(ottarVendilkrakaEgilsson,adilsAthilsOttarsson).
parent(egilAunsson,ottarVendilkrakaEgilsson).
parent(aunJorundssonDenGamle,egilAunsson).
parent(jorundYngvasson,aunJorundssonDenGamle).
parent(yngveAlreksson,jorundYngvasson).
parent(alrekAgneson,yngveAlreksson).
parent(agneDagsson,alrekAgneson).
parent(dagDyggveson,agneDagsson).
parent(dygveDomarson,dagDyggveson).
parent(domarDomaldeson,dygveDomarson).
parent(domaldeVanlandassanl,domarDomaldeson).
parent(visburVanlandasson,domaldeVanlandassanl).
parent(vanlandeSvegdassal,visburVanlandasson).
parent(sveigdeFjolnfarssen,vanlandeSvegdassal).
parent(fjolnirYngviFreysson,sveigdeFjolnfarssen).
parent(yngviFrey,fjolnirYngviFreysson).
parent(njord,yngviFrey).
parent(odin,njord).

%greatCount(X, Y, N)
greatCount(X, X, 0).
greatCount(X, Y, N) :- parent(X, Z), greatCount(Z, Y, M), N is M + 1.

/* 
Tests

?- greatCount(ragnarLothbrok, johnAnderson, X).
X = 38 ;
false.

?- greatCount(brynhildrTheValkyrie, johnAnderson, X).
X = 39 ;
false.

?- greatCount(odin, johnAnderson, X).
X = 62 ;
false.

?- greatCount(odin,njord,X). 
X = 1 ;
false.

?- greatCount(marg, X, Y).
X = marg,
Y = 0 ;
X = johnAnderson,
Y = 1 ;
false.

*/