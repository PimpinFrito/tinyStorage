# README

TEST DOCKER IMAGE TO MAKE SURE IT WORKS
DEPLOY TO AWS TO FARGATE THEN CONNECT TO PRIVATE RDS

Urgent:
    Add tests for controllers:
        FileController
        PagesController

FEATURES:
    ADD PAGINATION
    PREVENT UNAUTHORIZED USERS WITH LINKS FROM VIEWING DATA
    ADD SHAREABLE LINKS
    ADD TIME LIMITS TO SHAREABLE LINKS
    ADD PREVIEW FOR IMAGES AND DOCS??
    FILE SIZE LIMITS
    SEARCH FUNCTION

    
    Permission-based access (e.g., share with specific users or groups)
    ADD FOLDERS AND NAVIGATION
    
    



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Absolutely! Here’s a professional README, a strong resume description, and feature ideas to make your project stand out.

---

# README.md

```markdown
# FileVault: Secure User File Management Platform

FileVault is a modern Ruby on Rails web application that enables users to securely upload, view, download, and manage their personal files. Built with Devise authentication, Active Storage, Amazon S3 for file storage, and Amazon RDS for the database, FileVault provides a robust, scalable, and user-friendly experience.

## Features

- **User Authentication:** Secure sign-up, login, and session management with Devise.
- **File Uploads:** Users can upload files of any type and size (subject to S3 limits).
- **File Listing:** Users see a list of their uploaded files with filenames and actions.
- **File Viewing/Downloading:** View or download files directly from S3.
- **File Deletion:** Remove files with confirmation and instant feedback.
- **Modern UI:** Responsive, accessible, and visually appealing interface.

## Tech Stack

- **Backend:** Ruby on Rails 7, Active Storage
- **Authentication:** Devise
- **Storage:** Amazon S3 (for file attachments)
- **Database:** Amazon RDS (PostgreSQL, MySQL, or your choice)
- **Frontend:** Tailwind CSS, ERB templates
- **Testing:** Minitest, Fixtures

## Getting Started

1. **Clone the repository:**
    ```
    git clone https://github.com/yourusername/filevault.git
    cd filevault
    ```

2. **Install dependencies:**
    ```
    bundle install
    yarn install
    ```

3. **Set up environment variables:**
    - Configure your S3 and RDS credentials in `.env` or `config/storage.yml` and `config/database.yml`.

4. **Set up the database:**
    ```
    rails db:setup
    ```

5. **Run the server:**
    ```
    rails server
    ```

6. **Run tests:**
    ```
    rails test
    ```

## Deployment

- Deploy to AWS, Heroku, or your preferred platform.
- Ensure S3 and RDS credentials are securely managed in your deployment environment.

## Screenshots

![File List](screenshots/file-list.png)
![Upload Page](screenshots/upload-page.png)

## License

MIT License

---

# Resume Description

**FileVault – Secure File Management Web Application**  
*Ruby on Rails, AWS S3, AWS RDS, Devise, Tailwind CSS*

- Developed a full-stack web application enabling authenticated users to securely upload, view, download, and manage personal files.
- Integrated Amazon S3 for scalable, reliable file storage and Amazon RDS for robust relational data management.
- Implemented user authentication with Devise, and built a responsive, modern UI with Tailwind CSS.
- Engineered RESTful endpoints and comprehensive test coverage using Minitest, ensuring reliability and maintainability.
- Designed and deployed infrastructure leveraging AWS services, demonstrating cloud-native application development skills.

---

# Feature Ideas to Make Your Project Stand Out

1. **File Sharing:**  
   Allow users to share files via unique, expiring links or with other registered users.

2. **Folders & Organization:**  
   Enable users to create folders, move files, and organize their uploads.

3. **File Previews:**  
   Support in-browser previews for images, PDFs, and text files.

4. **Versioning:**  
   Keep track of file versions and allow users to revert to previous uploads.

5. **Activity Log:**  
   Show users a history of uploads, downloads, and deletions for transparency.

6. **Bulk Upload/Download:**  
   Support uploading and downloading multiple files at once.

7. **Search & Filtering:**  
   Add search and filter capabilities for large file collections.

8. **Storage Quotas & Usage Dashboard:**  
   Display how much storage a user has used and enforce quotas.

9. **Admin Dashboard:**  
   Admins can view usage statistics, manage users, and moderate content.

10. **Notifications:**  
    Email or in-app notifications for successful uploads, downloads, or shared files.

---
Tiny Storage - Cloud File Sharing Platform
Ruby on Rails, AWS S3/RDS, Tailwind CSS, Stimulus.js
Developed a modern file sharing web application featuring secure user authentication, cloud-based file storage, and an intuitive drag-and-drop interface. Implemented RESTful API endpoints for file operations, integrated AWS S3 for scalable storage with custom key generation, and designed a responsive UI with real-time JavaScript interactions. Features include user management via Devise, PostgreSQL database on AWS RDS, and a cyberpunk-inspired interface built with Tailwind CSS.
Key Achievements:

Built secure file upload system with S3 integration and unique key generation
Implemented responsive UI with Stimulus.js for dynamic user interactions
Deployed full-stack application using AWS cloud services (S3, RDS)
Designed modern, mobile-first interface with Tailwind CSS


Recommended Feature Enhancements
To make this project even more impressive for your portfolio:
High-Impact Features

File Sharing Links - Generate secure, expirable URLs for sharing files
Storage Analytics - Dashboard showing usage statistics and file insights
Folder Organization - Create hierarchical file structure
File Search & Filtering - Advanced search with tags and metadata
Bulk Operations - Select multiple files for batch delete/download

Technical Improvements

Real-time Upload Progress - WebSocket-based progress bars
File Validation - Size limits, type restrictions, virus scanning
Image Processing - Thumbnail generation, image optimization
API Endpoints - RESTful API for mobile app integration
Background Jobs - Sidekiq for async file processing

User Experience

File Previews - In-browser preview for documents, images, videos
Keyboard Shortcuts - Power user functionality
Dark/Light Theme Toggle - User preference system
File Versioning - Keep track of file updates
Collaborative Features - Comments, file sharing permissions

Enterprise Features

User Roles & Permissions - Admin panel, team management
Storage Quotas - Per-user limits with upgrade paths
Audit Logging - Track all file operations
SSO Integration - SAML/OAuth for enterprise users
Data Encryption - Client-side encryption before upload