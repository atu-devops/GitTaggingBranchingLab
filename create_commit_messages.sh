#!/bin/bash

# Declare an array of commit messages
commit_messages=(
    "Fix a bug in the login process"
    "Update the README file"
    "Add new feature: user registration"
    "Refactor the database schema"
    "Implement error handling for file uploads"
    "Merge pull request #123"
    "Add unit tests for the authentication module"
    "Optimize database queries for better performance"
    "Update dependencies to the latest versions"
    "Fix formatting issues in the codebase"
    "Add documentation for API endpoints"
    "Implement user profile page"
    "Remove unused code"
    "Fix security vulnerability"
    "Update CSS styles"
    "Add validation for user input"
    "Refactor the user authentication logic"
    "Merge feature branch 'feature-xyz'"
    "Fix broken links in the documentation"
    "Add support for multiple languages"
    "Implement password reset functionality"
    "Update third-party libraries"
    "Improve error messages"
    "Add a new API endpoint for user preferences"
    "Optimize frontend rendering"
    "Add integration tests for the shopping cart"
    "Fix memory leak issue"
    "Implement user roles and permissions"
    "Remove deprecated API endpoints"
    "Refactor the code for better code organization"
    "Update the logo and branding"
    "Fix accessibility issues"
    "Add pagination to the product list"
    "Update the database migration scripts"
    "Fix authentication token expiration bug"
    "Implement a new caching mechanism"
    "Add a feature toggle for experimental functionality"
    "Merge feature branch 'feature-abc'"
    "Fix localization issues"
    "Improve performance of image uploads"
    "Add a changelog file"
    "Update error messages for better user experience"
    "Refactor the search algorithm"
    "Update copyright information"
    "Implement single sign-on (SSO)"
    "Fix cross-browser compatibility issues"
    "Add support for dark mode"
    "Optimize SQL queries for faster data retrieval"
    "Merge pull request #456"
)

# Create a text file to store commit messages
touch commit_messages.txt

# Generate a random number between 0 and 49
random_number=$((RANDOM % 50))

# Initialize a new Git repository
git init

# Generate commits and append commit messages to the text file
for i in "${!commit_messages[@]}"; do
    message="${commit_messages[i]}"

    # Randomly decide to append "here is the error" message
    if [ "$random_number" -eq "$i" ]; then
        echo "here is the error" >> commit_messages.txt
    fi

    echo "$message" >> commit_messages.txt

    # Add and commit the changes to the Git repository
    git add commit_messages.txt
    git commit -m "$message"
done

# Display the commit history
git log --oneline
