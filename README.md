# Docker images for building Clojurescript apps with deps and shadow-cljs

## Example usage
    
    # in your Dockerfile
    
    COPY shadow-cljs.edn package.json package-lock.json ./
    RUN npm install
    RUN npx shadow-cljs

    COPY src src
    COPY resources/public/index.html resources/public/index.html
    COPY public/css public/css

    RUN clj -A:shadow-cljs release app

