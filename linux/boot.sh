#!/bin/bash
java --version 2>/dev/null
java -v 2>/dev/null
java -Xmx4G -Xms4G -jar ./paper-latest.jar nogui
