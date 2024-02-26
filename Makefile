default: build

build: CV\ Félix\ Piédallu.pdf CV\ Félix\ Piédallu.en.pdf Dossier\ de\ compétences.pdf

%.pdf: %.tex
	xelatex "$^"

%.pdf: %.md
	pandoc --pdf-engine=xelatex --shift-heading-level-by=-1 \
		"$<" -o "$@"
	rm -f "$@.tmp"
	pdfattach "$@" "$<" "$@.tmp"
	mv "$@.tmp" "$@"

deploy: CV\ Félix\ Piédallu.pdf CV\ Félix\ Piédallu.en.pdf
	rsync -av CV\ Félix\ Piédallu.pdf CV\ Félix\ Piédallu.en.pdf salamandar@salamandar.fr:/tmp
	ssh -t salamandar@salamandar.fr \
		sudo mv -f '/tmp/CV\ Félix\ Piédallu.pdf' '/var/www/my_webapp__2/www/CV_Félix_Piédallu.fr.pdf' \; \
		sudo mv -f '/tmp/CV\ Félix\ Piédallu.en.pdf' '/var/www/my_webapp__2/www/CV_Félix_Piédallu.en.pdf' \; \
		sudo chown my_webapp__2:www-data /var/www/my_webapp__2/www/CV_Félix_Piédallu.fr.pdf /var/www/my_webapp__2/www/CV_Félix_Piédallu.en.pdf
