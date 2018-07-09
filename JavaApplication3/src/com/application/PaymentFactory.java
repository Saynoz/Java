/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.application;

import com.domain.IPaymentRate;
import com.persistence.EmployeeRepository;

public class PaymentFactory {

    public static IPaymentRate createPaymentRateBoss() {

        return new IPaymentRate() {
            @Override
            public double pay(double salaryPerMonth) {
                return salaryPerMonth * 1.5;
            }
        };
    }

    public static IPaymentRate createPaymentRateEmployee() {
        return new IPaymentRate() {
            @Override
            public double pay(double salaryPerMonth) {
                return salaryPerMonth -= salaryPerMonth * 0.15;//todo 
            }
        };
    }

    public static IPaymentRate createPaymentRateManager() {
        return new IPaymentRate() {
            @Override
            public double pay(double salaryPerMonth) {
                return salaryPerMonth * 1.1;//todo 
            }
        };
    }

    public void payAllEmployeers() {
        EmployeeRepository repository = new EmployeeRepository();
        for (int i = 0; i < repository.getAllMembers().size(); i++) {
            repository.getAllMembers().get(i).pay();
        }
    }
}
