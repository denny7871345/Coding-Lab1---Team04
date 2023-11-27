//
// Created by 黃漢軒 on 2023/11/14.
//

#ifndef OOP_REQUIREDSUBJECT_H
#define OOP_REQUIREDSUBJECT_H

#include <string>

#include "Color.h"
#include "Subject.h"

class RequiredSubject : public Subject {
public:
    RequiredSubject(std::string name, std::vector<int> time) : Subject(name, time) {
        this->type = "Required Subject";
    }
    RequiredSubject(std::string name, std::vector<int> time, int speciall_credit) : Subject(name, time) {
        this->type = "Required Subject";
        this->credit = speciall_credit;
    }
    ~RequiredSubject() override = default;
    std::string GetColor() override {
        return Color::YELLOW;
    }
};

#endif // OOP_REQUIREDSUBJECT_H
