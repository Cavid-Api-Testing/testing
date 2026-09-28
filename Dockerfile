# Postman və Newman üçün rəsmi yüngül Alpine Linux imici
FROM postman/newman:5.3.1-alpine

# Konteyner daxilində işçi qovluğu
WORKDIR /etc/newman

# HTML hesabatlar üçün htmlextra plugin-ini yükləyirik
RUN npm install -g newman-reporter-htmlextra

# Əsas icraçı əmr
ENTRYPOINT ["newman"]