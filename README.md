# Docker-Practice

### Installation
<pre>
cd /home
git clone https://github.com/phoresis92/Docker-Practice/
cd Docker-Practice
</pre>
###Run
<pre>
# Login For private Docker repository
docker login
docker pull husheart/docker-practice
docker run -p 80:80 -v /home/Docker-Practice/Project:/var/www/html husheart/docker-practice
</pre>
