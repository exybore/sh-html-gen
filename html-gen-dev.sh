echo "Langue - Language :
1) Français
2) English"
echo -n "Votre choix | Your choice: "
read lang
if [ $lang = 1 ] && [ -n $lang ]; then
  lang=("Bienvenue dans le générateur de fichier HTML par Exybore !" "Nom du fichier (par défaut: index.html): " "Auteur: " "URL: " "Titre: " "Description: " "Votre fichier a bien été généré dans $PWD !")
  locale="fr"
else
  lang=("Welcome to the HTML file generator by Exybore !" "File name (default: index.html): " "Author: " "URL: " "Title: " "Description: " "Your file has been generated in $PWD !")
  locale="en"
fi
echo ${lang[0]}
echo -n ${lang[1]}
read file

if [ -z $file ]
then
  file="index.html"
fi

# echo -n ${lang[2]}
# read author

# if [ -n $author ]
# then
#   author_meta="<meta name=\"author\" content=\"$author\" />"
# else
#   author_meta=""
# fi

# echo -n ${lang[3]}
# read url

# if [ -n $url ]
# then
#   url_meta="<meta property=\"og:url\" content=\"$url\""
#   url_title="<a href=\"$url\">$url</a>"
# else
#   url_meta=""
#   url_title=""
# fi

echo -n ${lang[4]}
read title

if [ -n $title ]
then
  title_meta="<meta property=\"og:title\" content=\"$title\" />"
#   title_title="<h1>$title</h1>"
else
  title_meta=""
#   title_title=""
fi

# echo -n ${lang[5]}
# read description

# if [ -n $description ]
# then
#   description_meta="<meta property=\"og:description\" content=\"$description\""
#   description_title="<p>$description</p>"
# else
#   description_meta=""
#   description_title=""
# fi

echo '' >> $file
echo "<!--
  File was generated by the Exybore's HTML generator 0.1
  https://github.com/Exybore/sh-html-generator
  Contact: @exybore on Twitter | @Exybore@mstdn.io on Mastodon
-->
<!DOCTYPE html>
<html lang=\"$locale\">
<head>
  <title>$title</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  $title_meta
</head>
<body>

</body>
</html>" >> $file
echo ${lang[6]}