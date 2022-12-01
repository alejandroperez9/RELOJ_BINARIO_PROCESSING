void setup(){
  
  size(220,220);
  noStroke();
  smooth();
  textAlign(CENTER);
  
}


void draw(){
  background(0);
  int a=0;
  int s = second();
  int m = minute();
  int h = hour();
  
  String b = nf(int(binary(h)),6)+nf(int(binary(m)),6)+nf(int(binary(s)),6);
  
  for(int y=0;y<3;y++){
    for(int x=0;x<6;x++){
      fill(b.charAt(a)=='0'?128:255);
      if(a!=0) ellipse(35+30*x,80+30*y,20,20);
      a++;
    }
  }
  
  println(nf(int(binary(h)),6)+nf(int(binary(m)),6)+nf(int(binary(s)),6));
  fill(255);
  text(b, width/2, 200);
  
}
