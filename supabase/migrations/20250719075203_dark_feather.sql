@@ .. @@
-- Delivery images table
CREATE TABLE IF NOT EXISTS delivery_images (
    id INT AUTO_INCREMENT PRIMARY KEY,
    courier_id VARCHAR(50) NOT NULL,
    image_path VARCHAR(255) NOT NULL,
    uploaded_by INT NOT NULL,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (courier_id) REFERENCES couriers(courier_id) ON DELETE CASCADE,
    FOREIGN KEY (uploaded_by) REFERENCES users(id) ON DELETE CASCADE
);

+-- Selfie images table for delivery confirmation
+CREATE TABLE IF NOT EXISTS selfie_images (
+    id INT AUTO_INCREMENT PRIMARY KEY,
+    courier_id VARCHAR(50) NOT NULL,
+    image_path VARCHAR(255) NOT NULL,
+    uploaded_by INT NOT NULL,
+    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
+    FOREIGN KEY (courier_id) REFERENCES couriers(courier_id) ON DELETE CASCADE,
+    FOREIGN KEY (uploaded_by) REFERENCES users(id) ON DELETE CASCADE
+);
+
-- Activity logs table for real-time updates