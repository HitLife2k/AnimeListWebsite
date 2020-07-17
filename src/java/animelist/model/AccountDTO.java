package animelist.model;

import java.io.Serializable;
import java.sql.Date;

/**
 *
 * @author Quan Duc Loc CE140037 (SE1401)
 */
public class AccountDTO implements Serializable {
    private int id;
    private int roleID;
    private String username;
    private String password;
    private String fullName;
    private String avatar;
    private String email;
    private int gender;
    private Date created_at;
    private Date deleted_at;

    public AccountDTO() {
    }

    public AccountDTO(int id, int roleId, String username, String password, String fullName, String avatar, String email, int gender, Date created_at, Date deleted_at) {
        this.id = id;
        this.roleID = roleId;
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.avatar = avatar;
        this.email = email;
        this.gender = gender;
        this.created_at = created_at;
        this.deleted_at = deleted_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getDeleted_at() {
        return deleted_at;
    }

    public void setDeleted_at(Date deleted_at) {
        this.deleted_at = deleted_at;
    }
    
    
}