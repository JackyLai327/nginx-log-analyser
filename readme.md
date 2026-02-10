# Nginx Log Analyser

## Description

This is a bash script that analyses the Nginx access log and prints the top 5 IP addresses with the most requests, the top 5 most requested paths, the top 5 response status codes, and the top 5 user agents. I completed this project for: 1) my personal learning purposes, 2) finishing this project from [roadmap.sh](https://roadmap.sh/projects/nginx-log-analyser)

## Usage

```bash
./nginx-log-analyser.sh <count>
```

where `<count>` is the number of top results to print.

## Example

```bash
./nginx-log-analyser.sh 5
```

## Output

```txt
Top 10 IP addresses with the most requests:
IP:  178.128.94.113   |  count:  1087
IP:  142.93.136.176   |  count:  1087
IP:  138.68.248.85    |  count:  1087
IP:  159.89.185.30    |  count:  1086
IP:  86.134.118.70    |  count:  277
IP:  176.241.18.250   |  count:  198
IP:  184.144.78.143   |  count:  186
IP:  172.104.4.17     |  count:  173
IP:  194.140.197.94   |  count:  120
IP:  223.236.148.200  |  count:  108

Top 10 most requested paths:
endpoint:  /v1-health                                                         |  requested  count:  4560
endpoint:  /                                                                  |  requested  count:  270
endpoint:  /v1-me                                                             |  requested  count:  232
endpoint:  /v1-list-workspaces                                                |  requested  count:  127
endpoint:  /v1-list-timezone-teams                                            |  requested  count:  75
endpoint:  /v1-list-my-timezones                                              |  requested  count:  74
endpoint:  /.env                                                              |  requested  count:  55
endpoint:  /v1-upsert-timezones                                               |  requested  count:  53
endpoint:  /v1-list-pomodoro-history?startDate=2024-10-04&endDate=2024-10-05  |  requested  count:  53
endpoint:  /v1-complete-pomodoro                                              |  requested  count:  43

Top 10 response status codes:
status  code:  200  |  count:  5740
status  code:  404  |  count:  937
status  code:  304  |  count:  621
status  code:  400  |  count:  260
status  code:  403  |  count:  23
status  code:  405  |  count:  22
status  code:  301  |  count:  2
status  code:  499  |  count:  1

Top 10 user agents:
Agent:  DigitalOcean  |  Count:  4347
Agent:  Mozilla/5.0   |  Count:  2354
Agent:  curl/7.54.0   |  Count:  162
Agent:  Mozilla/4.0   |  Count:  17
Agent:  Expanse,      |  Count:  14
Agent:  Opera/9.80    |  Count:  4
Agent:  Mozilla/6.0   |  Count:  4
Agent:  Opera/8.51    |  Count:  2
Agent:  More          |  Count:  2
Agent:  Dalvik/2.1.0  |  Count:  2

```
