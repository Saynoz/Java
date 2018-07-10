/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.domain;

public class Employee extends AbsStaffMember {

    protected double salaryPerMonth;
    protected IPaymentRate paymentRate;


    public double getSalaryPerMonth() {
        return salaryPerMonth;
    }

    public void setSalaryPerMonth(double salaryPerMonth) {
        this.salaryPerMonth = salaryPerMonth;
    }

    public Employee(String name, String address, String phone, double salaryPerMonth, IPaymentRate paymentRate) throws Exception {
        super(name, address, phone);

        if (salaryPerMonth < 0) {
            throw new Exception();
        }
        if (paymentRate == null) {
            throw new Exception();
        }

        this.salaryPerMonth = salaryPerMonth;
        this.paymentRate = paymentRate;

    }

    public Employee(String name, String address, String phone) throws Exception {
        super(name, address, phone);
        //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void pay() {
        this.totalPaid = this.paymentRate.pay(salaryPerMonth);
    }

}
