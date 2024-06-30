#!/bin/bash

# Function to remove all stopped containers
clean_containers() {
    echo "Removing all stopped containers..."
    docker container prune -f
}

# Function to remove all unused images
clean_images() {
    echo "Removing all unused images..."
    docker image prune -a -f
}

# Function to remove all unused networks
clean_networks() {
    echo "Removing all unused networks..."
    docker network prune -f
}

# Function to remove all dangling build cache
clean_volumes() {
    echo "Removing all unused volumes..."
    docker volume prune -f
}

# Function to remove all dangling build cache
clean_build_cache() {
    echo "Removing all dangling build cache..."
    docker builder prune -f
}

# Execute the cleanup functions
clean_containers
clean_images
clean_networks
clean_volumes
clean_build_cache

echo "Docker cleanup completed."
