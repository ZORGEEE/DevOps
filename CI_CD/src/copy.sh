#!/bin/bash

scp /home/gitlab-runner/builds/wThzu-43/0/students/DO6_CICD.ID_356283/posidons_student.21_school.ru/DO6_CICD-1/artifacts/s21_cat posidons@10.10.0.2:/usr/local/bin
scp /home/gitlab-runner/builds/wThzu-43/0/students/DO6_CICD.ID_356283/posidons_student.21_school.ru/DO6_CICD-1/artifacts/s21_grep posidons@10.10.0.2:/usr/local/bin
ssh posidons@10.10.0.2 ls -lah /usr/local/bin