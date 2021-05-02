#!bin/sh
directoriesToCopy=( arena builder src .gitignore pom.xml README.md)

mkdir -p $1
for directory in "${directoriesToCopy[@]}"
do
	cp -r $directory $1
done


filesToReplace=( pom.xml builder/*.cfg /src/main/java/fr/mperez/template/Player.java)
for file in "${filesToReplace[@]}"
do
	sed -i "s/template/$2/g" $1/$file
done

mv $1/src/main/java/fr/mperez/template $1//src/main/java/fr/mperez/$2
