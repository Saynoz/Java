package com.application.dto;

import com.domain.AbsStaffMember;
import com.domain.Employee;

public class StaffDTO {

    protected int id;
    protected String name;
    protected String address;
    protected String phone;
    protected double totalPaid;
    protected double salaryPerMonth;

    public StaffDTO(AbsStaffMember staff) throws Exception {
        
         if (staff==null) {
            throw new Exception();
        }
        
        this.name = staff.getName();
        this.address = staff.getAddress();
        this.phone = staff.getPhone();

        if (staff instanceof Employee) {
            this.salaryPerMonth = ((Employee) staff).getSalaryPerMonth();
            this.totalPaid = ((Employee) staff).getTotalPaid();
        }
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
        return totalPaid;
    }

    public double getSalaryPerMonth() {
        return salaryPerMonth;
    }

}
