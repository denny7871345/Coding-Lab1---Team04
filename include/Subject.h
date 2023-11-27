//
// Created by 黃漢軒 on 2023/11/14.
//

#ifndef OOP_SUBJECT_H
#define OOP_SUBJECT_H
#include <vector>
#include <string>

class Subject {
private:
    std::string name;

    std::string color;
    std::vector<int> time;
protected:
    int credit;
    std::string type;
public:
    Subject(std::string name, std::vector<int> time){
        this->name = name;
        this->time = time;
        this->credit = time.size();
    }
    virtual ~Subject() = default;
    std::string GetName(){
        return name;
    }
    int GetCredit(){
        return credit;
    }
    std::vector<int> GetTime(){
        return time;
    }


    std::string GetType(){
        return this->type;
    }
    virtual std::string GetColor(){
        return "\033[0m";
    }
};

#endif // OOP_SUBJECT_H
