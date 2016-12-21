package store.entity;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.*;

@Entity
public class User implements UserDetails{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String email;
    private String name;
    private String serName;
    private String password;

    private String pathImage;

    @ManyToMany
    @JoinTable(name = "user_laptop",
            joinColumns = {@JoinColumn(name = "user_id")},
            inverseJoinColumns = {@JoinColumn(name = "laptop_id")})
    private Set<Laptop> laptops;

    @Enumerated
    private Role role;

    public User() {
    }

    public User(String email, String name, String serName, String password) {
        this.email = email;
        this.name = name;
        this.serName = serName;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSerName() {
        return serName;
    }

    public void setSerName(String serName) {
        this.serName = serName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Set<Laptop> getLaptops() {
        return laptops;
    }

    public void setLaptops(Set<Laptop> laptops) {
        this.laptops = laptops;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getPathImage() {
        return pathImage;
    }

    public void setPathImage(String pathImage) {
        this.pathImage = pathImage;
    }

    // For security

    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

    public String getUsername() {
        return String.valueOf(id);
    }

    public boolean isAccountNonExpired() {
        return true;
    }

    public boolean isAccountNonLocked() {
        return true;
    }

    public boolean isCredentialsNonExpired() {
        return true;
    }

    public boolean isEnabled() {
        return true;
    }
}
