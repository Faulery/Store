package store.entity;

import javax.persistence.*;
import java.util.LinkedHashSet;
import java.util.Set;

@Entity
public class Laptop {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToMany
    @JoinTable(name = "user_laptop",
            joinColumns = {@JoinColumn(name = "laptop_id")},
            inverseJoinColumns = {@JoinColumn(name = "user_id")})
    private Set<User> users = new LinkedHashSet<User>();

    private String brand;
    private String prise;
    private String description;
    private String rating;
    private String color;
    private String availability;
    private String quantity;

    public Laptop() {
    }

    public Laptop(String brand, String prise, String description, String rating, String color, String availability, String quantity) {
        this.brand = brand;
        this.prise = prise;
        this.description = description;
        this.rating = rating;
        this.color = color;
        this.availability = availability;
        this.quantity = quantity;
    }

    public Laptop(String brand, String prise, String quantity) {
        this.brand = brand;
        this.prise = prise;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
}
