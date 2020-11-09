main(){
  double endVol =5.0; //User input
  double pLiquid = 70; // user input
  double endPerc = 4; // User input
  double startPerc = 0.0;
  double endLiquidVol = 0.0;
  while (endPerc > startPerc){
    startPerc = ((endLiquidVol*(pLiquid/100))/endVol)*100; // *100
    endLiquidVol += 0.05;
  }
  print("You need romove $endLiquidVol from $endVol! And add $endLiquidVol with 9%");
}//main
