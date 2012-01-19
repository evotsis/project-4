package classes;

/**
 *
 * @author stathis
 */
public class products {

    private float quancafe;
    private float quansugar;
    private float quanwater;

    public products() {
        quancafe = 0;
        quansugar = 0;
        quanwater = 0;
    }

    /**
     * @return prices
     */
    public float getCafe() {
        return quancafe;
    }

    public float getSugar() {
        return quansugar;
    }

    public float getWater() {
        return quanwater;
    }

   
    public void setCafe(float quancafe) {

        this.quancafe = quancafe;
    }

    public void setSugar(float quansugar) {

        this.quansugar = quansugar;

    }

    public void setWater(float quanwater) {

        this.quanwater = quanwater;

    }
}
