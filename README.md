# Enhanced Courier Tracking System

## Features

### Agent Features
- Login with username/password
- Add new couriers with complete details
- Update courier tracking status from any agent panel
- Upload delivery images (max 1MB) when marking as delivered
- Generate and download PDF tickets for customers
- Real-time activity tracking

### Admin Features
- Complete dashboard with statistics
- View all couriers from all agents
- Advanced reporting with filters
- Export reports to PDF (Excel export replaced with PDF)
- View all delivery images with agent details
- Real-time activity monitoring
- Update courier tracking status

### Key Enhancements
1. **Agent Updates**: Any agent can update courier tracking via courier ID
2. **PDF Export**: Replaced Excel export with PDF export functionality
3. **Real-time Data**: Dashboard shows live courier data and recent activity
4. **Delivery Images**: Agents can upload delivery photos under 1MB
5. **Ticket Generation**: PDF tickets with courier details for customer reference
6. **Enhanced Forms**: Added To Party Name, From Party Name, Courier ID, Date fields
7. **Indian Timezone**: All timestamps in Bombay/Kolkata/Delhi time

## Installation on Hostinger

1. Upload all files to your hosting directory
2. Import the `database.sql` file into your MySQL database via PHPMyAdmin
3. Update `config/database.php` with your Hostinger database credentials
4. Install Composer dependencies: `composer install`
5. Create uploads directory: `mkdir uploads/delivery_images`
6. Set proper permissions: `chmod 777 uploads/delivery_images`

## Database Configuration

Update these values in `config/database.php`:
```php
$host = 'your_hostinger_db_host';
$dbname = 'your_database_name';
$username = 'your_db_username';
$password = 'your_db_password';
```

## Default Login Credentials

- **Admin**: username: `admin`, password: `admin123`
- **Agent**: username: `agent1`, password: `agent123`

## File Structure

- `config/` - Database and session configuration
- `uploads/delivery_images/` - Uploaded delivery images
- `vendor/` - Composer dependencies (TCPDF)
- Main PHP files for different functionalities

## Requirements

- PHP 7.4+
- MySQL 5.7+
- Composer
- TCPDF library (installed via Composer)

## Security Features

- Password hashing
- SQL injection prevention
- File upload validation
- Session management
- Role-based access control