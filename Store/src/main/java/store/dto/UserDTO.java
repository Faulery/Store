package store.dto;

public class UserDTO {

    private String name;
    private String serName;
    private int id;

    public UserDTO() {
    }

    public UserDTO(String name, String serName, int id) {
        this.name = name;
        this.serName = serName;
        this.id = id;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}

