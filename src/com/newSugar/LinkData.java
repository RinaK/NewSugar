package com.newSugar;
 
import java.net.URL;
import java.util.Date;
 
import javax.jdo.annotations.*;
 
@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class LinkData {
    @PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
    private Long id;
     
    @Persistent
    private String shohin;
     
    @Persistent
    private String price;
     
    //@Persistent
    //private String comment;
     
    @Persistent
    private Date datetime;
 
    public LinkData(String shohin, String price, /*String comment,*/ Date datetime) {
        super();
        this.shohin = shohin;
        this.price = price;
        //this.comment = comment;
        this.datetime = datetime;
    }
 
    public Long getId() {
        return id;
    }
 
    public void setId(Long id) {
        this.id = id;
    }
 
    public String getShohin() {
        return shohin;
    }
 
    public void setShohin(String shohin) {
        this.shohin = shohin;
    }
 
    public String getPrice() {
        return price;
    }
 
    public void setPrice(String price) {
        this.price = price;
    }
 
    /*public String getComment() {
        return comment;
    }
 
    public void setComment(String comment) {
        this.comment = comment;
    }*/
 
    public Date getDatetime() {
        return datetime;
    }
 
    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }
}