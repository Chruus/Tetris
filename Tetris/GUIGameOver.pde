public class GUIGameOver extends GUI{
    Button playAgain, returnToMain;
    
    public GUIGameOver(int scale_, color textColor, color backgroundColor) {
        super(scale_);
        playAgain = new Button("Play Again", textColor, width / 2, 13 * scale, 10 * scale, 3 * scale, backgroundColor);
        returnToMain = new Button("Return to Menu", textColor, width / 2, 17 * scale, 10 * scale, 3 * scale, backgroundColor);
    }
    
    public void display() {//Need to access score, linesCleared, and level
        int score = 0, linesCleared = 0, level = 0;
        pushStyle();
        pushMatrix();
        
        playAgain.display();
        returnToMain.display();
        
        textAlign(CENTER);
        textSize(scale);
        fill(255);
        
        text("Score:", width / 2, 3 * scale);
        text(score, width / 2, 4.25 * scale);
        text("Lines:", width / 2, 6 * scale);
        text(linesCleared, width / 2, 7.25 * scale);
        text("Level:", width / 2, 9 * scale);
        text(level, width / 2, 10.25 * scale);
        
        popMatrix();
        popStyle();        
    }
    
    public String goTo() {
        if (playAgain.hasBeenPressed())
            return "new game";
        if (returnToMain.hasBeenPressed())
            return "main";
        return "";
    }
    
    public void mousePressed() {
        playAgain.mousePressed();
        returnToMain.mousePressed();
    }
    
    public void mouseReleased() {        
        playAgain.mouseReleased();
        returnToMain.mouseReleased();
    }
}