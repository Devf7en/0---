# Use Microsoft's universal development container as base
FROM mcr.microsoft.com/devcontainers/universal:2-linux

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install additional tools
RUN apt-get update && apt-get install -y \
    # Additional development tools
    curl \
    wget \
    git \
    vim \
    nano \
    tree \
    jq \
    htop \
    # Network tools
    net-tools \
    iputils-ping \
    # Build tools
    build-essential \
    # Clean up
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install additional development tools via package managers
# Node.js global packages
RUN npm install -g \
    yarn \
    pnpm \
    typescript \
    ts-node \
    nodemon

# Python packages
RUN pip3 install --no-cache-dir \
    black \
    flake8 \
    pytest \
    requests \
    fastapi \
    uvicorn

# Set working directory
WORKDIR /workspace

# Create a non-root user (codespace user already exists in universal image)
# The universal image already has the 'codespace' user configured

# Set default shell
SHELL ["/bin/bash", "-c"]

# Add any custom configurations or scripts here
# Example: Copy custom dotfiles, install additional tools, etc.

# Set the default command
CMD ["/bin/bash"]