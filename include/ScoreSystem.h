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

    int GetRequiredCredit(){
        int score=0;
        for(int i=0;i<this->courses.size();i++){
            if(courses[i]->GetType() == "Required Subject"){
                score += courses[i]->GetCredit();
            }
        }
        return score;
    }

    int GetElectiveCredit(){
        int score=0;
        for(int i=0;i<this->courses.size();i++){
            if(courses[i]->GetType() == "Elective Subject"){
                score += courses[i]->GetCredit();
            }
        }
        return score;
    }


};

#endif // OOP_SCORESYSTEM_H
