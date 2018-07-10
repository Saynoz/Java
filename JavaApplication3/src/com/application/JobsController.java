/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.application;

import com.application.dto.StaffDTO;
import com.domain.AbsStaffMember;
import com.domain.Employee;
import com.domain.Volunteer;
import com.persistence.EmployeeRepository;
import java.util.ArrayList;
import java.util.List;

public class JobsController {

    private final EmployeeRepository repository = new EmployeeRepository();

    private final PaymentFactory paystuff = new PaymentFactory();

    public void JobsController() {

    }

    public void createBossEmployee(String name, String address, String phone, double salaryPerMonth) throws Exception {
        Employee boss = new Employee(name, address, phone, salaryPerMonth, PaymentFactory.createPaymentRateBoss());
        repository.addMember(boss);

    }

    public void createEmployee(String name, String address, String phone, double salaryPerMonth) throws Exception {
        Employee Employee = new Employee(name, address, phone, salaryPerMonth, PaymentFactory.createPaymentRateEmployee());
        repository.addMember(Employee);
    }

    public void createManagerEmployee(String name, String address, String phone, double salaryPerMonth) throws Exception {
        Employee Manager = new Employee(name, address, phone, salaryPerMonth, PaymentFactory.createPaymentRateManager());
        repository.addMember(Manager);

    }

    public void createVolunteer(String name, String address, String phone) throws Exception {
        Volunteer Volunteer = new Volunteer(name, address, phone);
        repository.addMember(Volunteer);

    }

    public void destroyEmployee(String name, String address, String phone) throws Exception {

        for (int i = 0; i < repository.getAllMembers().size(); i++) {

            AbsStaffMember member = repository.getAllMembers().get(i);

            if (member.itsYourData(name, address, phone)) {  // existe persona
                repository.destroyMember(member); // sayonara baby
            }

        }
    }

    public List<StaffDTO> getEmployees() throws Exception {
        List<StaffDTO> list = new ArrayList<>();
        for (AbsStaffMember i : repository.getAllMembers()) {
            list.add(new StaffDTO(i));
        }
        return list;
    }


}
