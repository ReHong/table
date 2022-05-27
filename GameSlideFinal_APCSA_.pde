Table table;
ArrayList<Game> gameList = new ArrayList<Game>();
int change = 1;
void setup() {
  size(1200,600);
  table = loadTable("https://raw.githubusercontent.com/ReHong/table/main/playstation_4_games.csv", "header");

  println(table.getRowCount() + " total rows in table");
  //loops all things in the gameList into the array
  for (int i = 0; i < table.getRowCount();i++){
    gameList.add(new Game(i));
  }
  drawGame();
}

void draw(){
  //draws the stuff
}

public void keyPressed(){
    //flip to next
    if ((key =='a') && (change >0)){
      change -=1;
      
      
    }
    //flip backwards
    if ((key =='d')&& (change < table.getRowCount())){
      change +=1;
      
  }
  drawGame();
}

public void drawGame(){
  //actually updates the setup
  background(200,69,157);
  gameList.get(change).printData();
}
