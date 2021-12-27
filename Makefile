KOTLIN_FILES	= *.kt

JAVA_FILE		= compile.jar

FLAGS			= -include-runtime -d

GREEN			=	\033[0;32m
YELLOW			=	\033[0;33m
NORMAL			=	\033[0m


WORD_COMPILING	=	░█████╗░░█████╗░███╗░░░███╗██████╗░██╗░░░░░██╗███╗░░██╗██╗░██████╗░░░░░░░░░░\n\
					██╔══██╗██╔══██╗████╗░████║██╔══██╗██║░░░░░██║████╗░██║██║██╔════╝░░░░░░░░░░\n\
					██║░░╚═╝██║░░██║██╔████╔██║██████╔╝██║░░░░░██║██╔██╗██║██║██║░░██╗░░░░░░░░░░\n\
					██║░░██╗██║░░██║██║╚██╔╝██║██╔═══╝░██║░░░░░██║██║╚████║██║██║░░╚██╗░░░░░░░░░\n\
					╚█████╔╝╚█████╔╝██║░╚═╝░██║██║░░░░░███████╗██║██║░╚███║██║╚██████╔╝██╗██╗██╗\n\
					░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚═╝░░░░░╚══════╝╚═╝╚═╝░░╚══╝╚═╝░╚═════╝░╚═╝╚═╝╚═╝\n

WORD_SUCCESS	=	░██████╗██╗░░░██╗░█████╗░░█████╗░███████╗░██████╗░██████╗██╗\n\
					██╔════╝██║░░░██║██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝██║\n\
					╚█████╗░██║░░░██║██║░░╚═╝██║░░╚═╝█████╗░░╚█████╗░╚█████╗░██║\n\
					░╚═══██╗██║░░░██║██║░░██╗██║░░██╗██╔══╝░░░╚═══██╗░╚═══██╗╚═╝\n\
					██████╔╝╚██████╔╝╚█████╔╝╚█████╔╝███████╗██████╔╝██████╔╝██╗\n\
					╚═════╝░░╚═════╝░░╚════╝░░╚════╝░╚══════╝╚═════╝░╚═════╝░╚═╝\n

WORD_CLEANING	=	░█████╗░██╗░░░░░███████╗░█████╗░███╗░░██╗██╗███╗░░██╗░██████╗░░░░░░░░░░\n\
					██╔══██╗██║░░░░░██╔════╝██╔══██╗████╗░██║██║████╗░██║██╔════╝░░░░░░░░░░\n\
					██║░░╚═╝██║░░░░░█████╗░░███████║██╔██╗██║██║██╔██╗██║██║░░██╗░░░░░░░░░░\n\
					██║░░██╗██║░░░░░██╔══╝░░██╔══██║██║╚████║██║██║╚████║██║░░╚██╗░░░░░░░░░\n\
					╚█████╔╝███████╗███████╗██║░░██║██║░╚███║██║██║░╚███║╚██████╔╝██╗██╗██╗\n\
					░╚════╝░╚══════╝╚══════╝╚═╝░░╚═╝╚═╝░░╚══╝╚═╝╚═╝░░╚══╝░╚═════╝░╚═╝╚═╝╚═╝\n


all:
	@echo "${YELLOW} ${WORD_COMPILING}${NORMAL}"
	@kotlinc ${KOTLIN_FILES} ${FLAGS} ${JAVA_FILE}
	@echo "${GREEN} ${WORD_SUCCESS}${NORMAL}"
	@java -jar ${JAVA_FILE}

clean:
	@echo "${YELLOW} ${WORD_CLEANING}${NORMAL}"
	@rm -rf ${JAVA_FILE}
	@echo "${GREEN} ${WORD_SUCCESS}${NORMAL}"