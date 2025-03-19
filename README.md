# tpNote
Dans ce TP, j'ai mis en place un pipeline CI/CD complet en utilisant GitHub Actions, Docker, et Kubernetes avec Minikube

voici les étapes suivies:
Un dépôt GitHub a été créé et lié à notre machine locale.
Ajout des fichiers nécessaires:
       .github/workflows/ci.yml (pipeline GitHub Actions)
        Dockerfile (fichier de construction Docker)
        deployment.yml (fichier de déploiement Kubernetes)
        service.yml (fichier de service Kubernetes)
        index.html (fichier pour Nginx)
        README.md (document explicatif)

j'ai utilisé un conteneur Nginx et copié un fichier index.html dans le répertoire du serveur.
Construction et Push de l’image sur Docker Hub 

 Mise en place du pipeline ci.yml :

Build de l’image Docker
Push sur Docker Hub
Déploiement automatique sur Kubernetes avec Minikube

Déploiement avec kubectl apply -f deployment.yml

j'ai rencontré une erreur persistante lors du déploiement avec kubectl apply -f deployment.yml :
 
 Run kubectl apply --validate=false -f deployment.yml
E0319 14:32:25.339144    5969 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused"
error: unable to recognize "deployment.yml": Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
Error: Process completed with exit code 1.


Minikube ne fonctionne pas correctement sur GitHub Actions.
kubectl essaie de se connecter à localhost:8080, mais aucun serveur Kubernetes n'écoute sur ce port.