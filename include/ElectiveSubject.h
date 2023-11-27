//
// Created by 黃漢軒 on 2023/11/14.
//

#ifndef OOP_ELECTIVESUBJECT_H
#define OOP_ELECTIVESUBJECT_H

#include <string>

#include "Color.h"
#include "Subject.h"

class ElectiveSubject : public Subject {
private:
public:
    ElectiveSubject(std::string name, std::vector<int> time) : Subject(name, time) {
        this->type = "Elective Subject";
    }
    std::string GetColor() override {
        return Color::BLUE;
    }
};

#endif // OOP_ELECTIVESUBJECT_H
