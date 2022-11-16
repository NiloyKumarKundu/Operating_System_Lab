#include<bits/stdc++.h>
using namespace std;

class Job {
public:
    int arrival_time;
    int burst_time;
    void assign_data(int a_time, int b_time) {
        this->arrival_time = a_time;
        this->burst_time = b_time;
    }
};


int main()
{
    int arrival_time[4] = {3, 8, 14, 0};
    int burst_time[4] = {5, 6, 8, 2};
    Job jobs[4];
    jobs[0].assign_data(3, 5);
    jobs[1].assign_data(8, 6);
    jobs[2].assign_data(14, 3);
    jobs[3].assign_data(0, 2);

    int num_jobs=4;
    for (int i = 0; i < num_jobs; i++) {
        for (int j = i; j < num_jobs; j++) {
            if (jobs[i].arrival_time > jobs[j].arrival_time) {
                Job temp = jobs[i];
                jobs[i] = jobs[j];
                jobs[j] = temp;
            }
        }
    }

    for (int i = 0; i < num_jobs; i++) {
        printf("%d %d\n", jobs[i].arrival_time, jobs[i].burst_time);
    }

}
