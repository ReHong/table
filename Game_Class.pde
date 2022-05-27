public class Game{
  private String PSGame;
  private int rYear;
  private String genre;
  
  
  public Game(int index){
    //updates the variables
    PSGame = table.getString(index, 2);
    rYear = table.getInt(index, 4);
    genre = table.getString(index, 6);
    
    }
  
  
  public void printData(){
    
    background(0,55,145);
    textSize(20);
    //prints the game name on canvas
    text("PSGame: " + PSGame, 100, 50);
    //prints the release year on canvas
    text("Release Year: " + rYear, 100, 150);
    //prints the genre on canvas
    text("Genre: " + genre, 100, 250);
  
    
  }
}
