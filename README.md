# POS and Inventory Management System

This is a comprehensive Point of Sale (POS) and inventory management system built with the Laravel framework. It is designed to help businesses manage their sales, purchases, products, customers, and more.

## Features

*   **Sales Management:** Create and manage sales, handle payments, and print receipts.
*   **Purchase Management:** Track purchases from suppliers.
*   **Product Management:** Manage products, categories, brands, and variants.
*   **Inventory Control:** Keep track of stock levels across multiple warehouses, manage stock counts, and handle product transfers.
*   **Customer and Supplier Management:** Maintain a directory of customers and suppliers.
*   **User and Role Management:** Control access to the system with a flexible role and permission system.
*   **Reporting:** (Assumed feature) Generate reports on sales, purchases, and inventory.
*   **Multi-Warehouse Support:** Manage inventory in different locations.
*   **Payment Integration:** Supports various payment methods including cash, credit card, PayPal, and gift cards.

## Technologies Used

*   **Backend:** PHP, Laravel 8
*   **Frontend:** Blade with Javascript
*   **Database:** MySQL
*   **Key Packages:**
    *   `spatie/laravel-permission` for roles and permissions.
    *   `maatwebsite/excel` for Excel and CSV operations.
    *   `milon/barcode` for generating barcodes.
    *   `stripe/stripe-php` & `srmklive/paypal` for payment processing.
    *   `laravelcollective/html` for form and HTML generation.

## Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/alfin06/POS-Inventory-Management-System.git
    cd POS-Inventory-Management-System
    ```

2.  **Install dependencies:**
    ```bash
    composer install
    npm install
    ```

3.  **Environment Configuration:**
    *   Copy the `.env.example` file to `.env`:
        ```bash
        copy .env.example .env
        ```
    *   Generate an application key:
        ```bash
        php artisan key:generate
        ```
    *   Configure your database and other environment variables in the `.env` file.

4.  **Database Migration:**
    ```bash
    php artisan migrate
    ```

5.  **Database Seeding (optional):**
    If seeders are available, you can populate the database with initial data.
    ```bash
    php artisan db:seed
    ```

6.  **Compile Assets:**
    ```bash
    npm run dev
    ```
    or for production:
    ```bash
    npm run prod
    ```

7.  **Run the development server:**
    ```bash
    php artisan serve
    ```

The application should now be running at `http://127.0.0.1:8000`.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.