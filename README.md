![La montagne](http://informations-documents.com/coloriages.dessins/coloriages/coloriage_montagne4.jpg)
   ## Team Grenoble

### Clone notre repo 

- Postionne toi dans le dossier fraichement créé,
- petit `Bundle install` des famille
- `rails db:create db:migrate db:seed`   #en une seule ligne ;-)
#va te créer/remplir la base de donnée nécéssaire au bon fonctionnement
- lance un petit `rails server`
- go ton browser et tape `localhost:3000`

### et c'est parti !

voila, tu est sur nortre super site/appli TGP
les link utiles pour tester :
- `/team`
- `/contact`
si tu veux un msg de bienvenue (comme inddiqué par les consignes ->)
- `/home/ton_pseudo_qui_déchire`




### La "TEAM" !

- Iannis
- Guillaume

- Qentin 



## Details (pris d'un repo de gagants)

L'application est composé de 6 modèles User, City, Gossip, Tag, Join_Table_Tag_Gossip et Message.
* User lié à City avec first_name, last_name, description, email, age, city_id comme attributs ;
* City avec name et zip_code comme attributs ;
* Gossip lié à User avec title et content comme attributs;
* Tag avec title comme attribut;
* Join_Table_Tag_Gossip lié à Gossip et Tag avec gossip_id et tag_id comme attributs;
* Message lié à Recipient et Sender avec Content, recipient_id et sender_id comme attributs.
