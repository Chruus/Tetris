public class TetrominoO extends Tetromino{
    
    public TetrominoO(int row_, int col_, int scale_, Grid grid_, int rotation_) {
        super(row_, col_, scale_, grid_);
        ghost = true;
        color clr = color(245, 245, 0);
        blocks[0] = new Block(row, col, scale, clr);
        blocks[1] = new Block(row - 1, col, scale, clr);
        blocks[2] = new Block(row, col + 1, scale, clr);
        blocks[3] = new Block(row - 1, col + 1, scale, clr);
        
        while(rotation != rotation_)
            rotate(true);
    }
    
    public TetrominoO(int row_, int col_, int scale_, Grid grid_) {
        super(row_, col_, scale_, grid_);
        color clr = color(245, 245, 0);
        blocks[0] = new Block(row, col, scale, clr);
        blocks[1] = new Block(row - 1, col, scale, clr);
        blocks[2] = new Block(row, col + 1, scale, clr);
        blocks[3] = new Block(row - 1, col + 1, scale, clr);
    }
    
    public TetrominoO(int scale_, Grid grid_) {
        super(1, 4, scale_, grid_);
        row = 1;
        col = 4;
        color clr = color(245, 245, 0);
        blocks[0] = new Block(row, col, scale, clr);
        blocks[1] = new Block(row - 1, col, scale, clr);
        blocks[2] = new Block(row, col + 1, scale, clr);
        blocks[3] = new Block(row - 1, col + 1, scale, clr);
    }
    
    public boolean rotate(boolean clockwise) {
        return true;
    }
    
    public boolean canRotate(boolean clockwise, Grid grid_) {
        return true;
    }
    
    public void reset() {
        row = 1;
        col = 4;
        rotation = 0;
        blocks[0].setPos(row, col);
        blocks[1].setPos(row - 1, col);
        blocks[2].setPos(row, col + 1);
        blocks[3].setPos(row - 1, col + 1);
    }
    
    public void displayGhost() {
        Tetromino ghost = new TetrominoO(row, col, scale, grid, rotation);
        ghost.setPos(row, col);
        while(ghost.canMove("down"))
            ghost.move("down");
        ghost.display(70 - (row * 3));
    }
    
    public TetrominoO clone() {
        return new TetrominoO(row, col, scale, grid);
    }
}