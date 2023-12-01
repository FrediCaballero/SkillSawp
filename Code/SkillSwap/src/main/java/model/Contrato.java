package model;

import java.sql.Date;

/**
 *
 * @author AlexanderCaballero
 */
public class Contrato {
    private int idUserOffer;
    private int idUserReceive;
    private int idServicio;
    private Date contractDate;
    private String address;
    private String description;
    private double price;
    private String hour;
    private Date conInitial;

    public Contrato() {
    }

    public Contrato(int idUserOffer, int idUserReceive, int idServicio, Date contractDate, String address, String description, double price, String hour, Date conInitial) {
        this.idUserOffer = idUserOffer;
        this.idUserReceive = idUserReceive;
        this.idServicio = idServicio;
        this.contractDate = contractDate;
        this.address = address;
        this.description = description;
        this.price = price;
        this.hour = hour;
        this.conInitial = conInitial;
    }

    public int getIdUserOffer() {
        return idUserOffer;
    }

    public void setIdUserOffer(int idUserOffer) {
        this.idUserOffer = idUserOffer;
    }

    public int getIdUserReceive() {
        return idUserReceive;
    }

    public void setIdUserReceive(int idUserReceive) {
        this.idUserReceive = idUserReceive;
    }

    public int getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(int idServicio) {
        this.idServicio = idServicio;
    }

    public Date getContractDate() {
        return contractDate;
    }

    public void setContractDate(Date contractDate) {
        this.contractDate = contractDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getHour() {
        return hour;
    }

    public void setHour(String hour) {
        this.hour = hour;
    }

    public Date getConInitial() {
        return conInitial;
    }

    public void setConInitial(Date conInitial) {
        this.conInitial = conInitial;
    }
    
    
    
    
}
