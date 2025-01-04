#!/bin/bash


# 获取当前系统时区对应的城市
city=$(timedatectl | grep "Time zone" | awk '{split($3, tz, "/"); print tz[2]}')

# 使用 wttr.in 获取天气信息，添加中文语言支持
weather_info=$(curl -s -H "Accept-Language: zh-CN" "wttr.in/${city}")

echo $weather_info