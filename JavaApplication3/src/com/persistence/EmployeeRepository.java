/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.persistence;

import java.util.ArrayList;
import java.util.List;

import com.domain.AbsStaffMember;

public class EmployeeRepository {

    private static final List<AbsStaffMember> members = new ArrayList<>();

    public EmployeeRepository() {

    }

    public List<AbsStaffMember> getAllMembers() {
        return new ArrayList<>(EmployeeRepository.members);
    }

    public void addMember(AbsStaffMember member) throws Exception {
        if (member == null) {
            throw new Exception();
        }
        EmployeeRepository.members.add(member);
        // this.members.toString();
    }

    public void destroyMember(AbsStaffMember member) throws Exception {
        if (member == null) {
            throw new Exception();
        }
        EmployeeRepository.members.remove(member);
        // this.members.toString();
    }

}
