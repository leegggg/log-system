mdc=/mnt/c/Users/yizho/pandoc-2.1.2/bin/pandoc

all : target/log-system.docx

target/log-system.html : 01_绪论.md 02_微服务日志管理技术概述.md 03_日志系统设计.md 04_日志系统的实现.md 05_日志系统的测试.md 06_总结.md
	$(mdc) 01_绪论.md 02_微服务日志管理技术概述.md 03_日志系统设计.md 04_日志系统的实现.md 05_日志系统的测试.md 06_总结.md -o target/log-system.html

target/log-system.docx : target/log-system.html 
	$(mdc) target/log-system.html -o target/log-system.docx

clean :
	@rm target/*
