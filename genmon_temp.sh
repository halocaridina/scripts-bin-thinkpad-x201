#!/usr/bin/env bash

# Optional icon to display before the text
# Insert the absolute path of the icon
# Recommended size is 24x24 px
readonly TEMP_ICON="/etc/icons/sensors-temperature-symbolic.svg"

# Kernel values
readonly TEMP="`/usr/bin/sensors | /usr/bin/grep -E 'CPU' | /usr/bin/awk '{print $2}'`"
readonly SENSORS="`/usr/bin/sensors | grep -v -e 'temp[2-8]'`"

# Panel
  INFO="<img>${TEMP_ICON}</img>"
  INFO+="<txt><span foreground='#FFFFFF'> ${TEMP}</span></txt>"
  MORE_INFO="<tool>"
  MORE_INFO+="${SENSORS}"
  MORE_INFO+="</tool>"

# Panel Print
echo -e "${INFO}"

# Tooltip Print
echo -e "${MORE_INFO}"

