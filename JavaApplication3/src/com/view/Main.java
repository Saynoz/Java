/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.view;

import com.application.JobsController;
import com.application.PaymentFactory;
import com.application.dto.StaffDTO;
import com.domain.AbsStaffMember;
import java.util.List;

public class Main {

    public static double generalSalary = 1500;
    private static final JobsController controller = new JobsController();
    private static final PaymentFactory paymentFactory = new PaymentFactory();

    public static void main(String[] args) throws Exception {

        controller.createBossEmployee("Pepe Boss", "Dirección molona", "666666666", generalSalary);
        controller.createEmployee("Pedro Employee", "Dirección molona 2", "665266666", generalSalary);
        controller.createEmployee("Laura Employee", "Dirección molona 3", "625266666", generalSalary);
        controller.createVolunteer("Juan Volunteer", "Dirección molona 4", "614266666");
        controller.createManagerEmployee("Pedro Employee", "Dirección molona 2", "665226666", generalSalary);

        paymentFactory.payAllEmployeers();

        controller.destroyEmployee("Pedro Employee", "Dirección molona 2", "665266666");
        //controller.destroyEmployee("Juan Volunteer", "Dirección molona 4", "614266666");

        System.out.println("EMPLOYEES: \n");

        printStaff();

    }

    public static void printStaff() throws Exception {
        for (StaffDTO i : controller.getEmployees()) {
            System.out.print(FormatString(i));
        }
    }

    public static String FormatString(StaffDTO i) {
        String result = String.format("%s\t||\t%s\t||\t%s\t||\t%.2f\t\n", i.getName(), i.getPhone(), i.getAddress(), i.getTotalPaid());
        return result;
    }

}
