include .env
start:
	@echo "elo ${PROJECT_NAME} $1"
opa: 
	@echo "opa"
remove_submodule:
#Delete the relevant section from the .gitmodules file.
	/bin/rm -rf .gitmodules
	> .gitmodules 
#Stage the .gitmodules changes git add .gitmodules 
	git add .gitmodules
#Delete the relevant section from .git/config.
# ^(\[submodule)(.+(\n))+(?=\[)
# sed -e "s/^(\[submodule)(.+(\\n))+(?=\[)/gm"
	@echo "Delete the relevant section from .git/config"
#Run git rm --cached path_to_submodule
	git rm -rf --cached ${PATH} || true
#Run rm -rf .git/modules/path_to_submodule
	/bin/rm -rf .git/modules/${PATH}
#Commit git commit -m "Removed submodule"
	git add .
#rm -rf path_to_submodule
	/bin/rm -rf ${PATH}