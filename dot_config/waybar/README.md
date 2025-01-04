## 功能

### 左侧

用户信息  
工作区  
窗口标题 

### 中间

时间
天气

### 右侧

音量  
背光  
网络  

硬盘  
内存  
CPU  
温度传感器   
电量  
程序坞托盘  

## 依赖

### 依赖库

|                  | 安装                                | url                                                                                                      | 备注                   |
| ---------------- | ----------------------------------- | -------------------------------------------------------------------------------------------------------- | ---------------------- |
| noto-fonts-emoji | paru -S noto-fonts-emoji            |                                                                                                          | emoji字体              |
| hyprpaper        | paru -S hyprpaper                   | [github](https://github.com/hyprwm/hyprpaper) [wiki](https://wiki.hyprland.org/Hypr-Ecosystem/hyprpaper) | hyrpland的壁纸切换后端 |
| waypaper         | paru -S waypaper                    | https://github.com/anufrievroman/waypaper                                                                | wayland壁纸前端        |
| brightnessctl    | paru -S brightnessctl               | https://github.com/Hummer12007/brightnessctl                                                             | 显示器背光控制         |
| monitor-control  | [monitor-control](#monitor-control) | https://github.com/lilydjwg/monitor-control                                                              | 外接显示器背光控制     |
| pavucontrol      | paru -S pavucontrol                 |                                                                                                          | 声卡管理GUI            |

### monitor-control

``` shell
git clone git@github.com:lilydjwg/monitor-control.git
cd monitor-control
cargo build --release
sudo ln ./target/release/monitor-control /usr/bin/
```

## 需要修改

### 显示器背光

> 如果是intel且外接显示器为`HDMI-A-1` 则可以略过

./module/backlight.json 修改device为对应自己硬件的驱动.(intel为intel_backlight)
./module/backlight.sh 修改monitor为自己的外接显示器,使用`hyprctl monitors`查看,结果为Monitor后面的名称