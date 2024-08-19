kompo_storis = 5;
detales_storis = 10;
eink_storis = 7;

aukstis = 90;
plotis = 50;


kp = 345;
mp = 289;
atitraukimas = (kp-mp)/2;

difference() {
    cube([detales_storis, plotis,aukstis]);

    translate([(detales_storis-kompo_storis)/2,5,5]) {
      cube([kompo_storis,plotis+5,aukstis]);
    }
    
    translate([5.5, 11, 9]) {
      cube([5,plotis+5,aukstis]);
    }
}

rotate(15)
mirror([0,1,0])
difference() {
    cube([detales_storis,plotis,aukstis]);

    translate([(detales_storis-eink_storis)/2,5,5+atitraukimas]) {
      cube([eink_storis,plotis+5,aukstis]);
    }
    
    translate([5.5, 25, 20+atitraukimas]) {
      cube([5,plotis+5,aukstis]);
    }
}