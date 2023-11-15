//
// Created by 黃漢軒 on 2023/11/14.
//

#ifndef OOP_SCORESYSTEM_H
#define OOP_SCORESYSTEM_H

#include <string>

#include "TablePrinter.h"
#include "Subject.h"

class ScoreSystem {
private:
    std::vector<std::shared_ptr<Subject>> courses;

public:
    void AddCourse(const std::shared_ptr<Subject>& course){
        courses.push_back(course);
    }

    void Print(){
        TablePrinter tablePrinter(courses);
        tablePrinter.Print();
    }
};

#endif // OOP_SCORESYSTEM_H