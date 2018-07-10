/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.domain;

public class Volunteer extends AbsStaffMember {

    public Volunteer(String name, String address, String phone) throws Exception {
        super(name, address, phone);
   
    }

    @Override
    public void pay() {

    }

}
