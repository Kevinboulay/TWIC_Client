package com.twic_client.Beans;

import lombok.Data;
@Data
public class VilleModel {
    private String codeINSEE;
    private String commune;
    private String codePostal;
    private String libelleAcheminement;
    private String ligne5;
    private String longitude;
    private String latitude;

    public VilleModel() {
    }

}
