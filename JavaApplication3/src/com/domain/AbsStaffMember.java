/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.domain;

public abstract class AbsStaffMember {

    protected int id;
    protected String name;
    protected String address;
    protected String phone;
    protected double totalPaid;

    private static int COUNTER_MEMBERS = 1;

    public AbsStaffMember(String name, String address, String phone) throws Exception {

        if (name.equals("")) {
            throw new Exception();
        }
        if (address.equals("")) {
            throw new Exception();
        }
        if (phone.equals("")) {
            throw new Exception();
        }

        this.name = name;
        this.address = address;
        this.phone = phone;
        id = COUNTER_MEMBERS;
        COUNTER_MEMBERS++;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public double getTotalPaid() {
        return this.totalPaid;
    }

    public boolean itsYourData(String name, String address, String phone) {
        return name.contentEquals(this.getName())
                && address.contentEquals(this.getAddress())
                && phone.contentEquals(this.getPhone());
    }

    public abstract void pay();
}
