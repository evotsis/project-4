package classes;

/**
 *
 * @author Stathis
 */
public class prices {
      private float pricecafe;
      private float pricesugar;
      private float pricewater;
      private float sum;
    public prices(){
        pricecafe=0;
        pricesugar=0;
        pricewater=0;
        sum=0;
    }

    /**
     * @return prices
     */
    public float getCafe() {
        return pricecafe;
    }
    public float getSugar() {
        return pricesugar;
    }
    public float getwater() {
        return pricewater;
    }
    public float getSum(){
        return pricecafe + pricesugar + pricewater;
    }

  
    public void setCafe(float quancafe) {
        double price = quancafe*18.5;
        pricecafe = (float)price;
    }
    public void setSugar(float quansugar) {
        double price = quansugar*6.95;
        pricesugar = (float)price;
    }
    public void setWater(float quanwater) {
        double price = quanwater*1.29;
        pricewater = (float)price;
    }

    
}
