package store.dto;

public class LaptopDTO {

    private String brand;
    private String prise;
    private int id;

    public LaptopDTO() {
    }

    public LaptopDTO(String brand, String prise, int id) {
        this.brand = brand;
        this.prise = prise;
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getPrise() {
        return prise;
    }

    public void setPrise(String prise) {
        this.prise = prise;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
