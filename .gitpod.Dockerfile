FROM gitpod/workspace-full

# Go
ENV GO_VERSION=1.16.15
ENV GOPATH=$HOME/go-packages
ENV GOROOT=$HOME/go
ENV PATH=$GOROOT/bin:$GOPATH/bin:$PATH
RUN curl -fsSL https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz | tar xzs     && printf '%s\n' 'export GOPATH=/workspace/go'                       'export PATH=$GOPATH/bin:$PATH' > $HOME/.bashrc.d/300-go

# NPM
RUN npm install -g npm@7.10.0