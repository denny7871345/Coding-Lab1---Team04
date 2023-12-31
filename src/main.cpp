//
// Created by 黃漢軒 on 2023/11/14.
//

#include "../include/ElectiveSubject.h"
#include "../include/RequiredSubject.h"
#include "../include/ScoreSystem.h"

int main() {
    ScoreSystem scoreSystem;

    scoreSystem.AddCourse(std::shared_ptr<Subject>(new ElectiveSubject("ESP",{21,26})));
    scoreSystem.AddCourse(std::shared_ptr<Subject>(new RequiredSubject("Linear Algebra", {3, 8, 14})));
    scoreSystem.AddCourse(std::shared_ptr<Subject>(new RequiredSubject("Object Oriented Programming", {25, 30, 31})));
    scoreSystem.AddCourse(std::shared_ptr<Subject>(new RequiredSubject("Data Structure", {11, 16, 32})));
    scoreSystem.AddCourse(std::shared_ptr<Subject>(new ElectiveSubject("Network Programming", {23, 28, 33})));



    scoreSystem.Print();
    std::cout << "RequireCredit:" << scoreSystem.GetRequiredCredit() << std::endl << "Eletive:" << scoreSystem.GetElectiveCredit() << std::endl ;
}
