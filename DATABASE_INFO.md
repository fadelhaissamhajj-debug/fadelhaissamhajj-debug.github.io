# 🗄️ MartialZone Database Information

## 📊 **Database Type**
**JSON File Database** - No external database required!

**Location:** `backend/data/database.json`

## 👤 **Admin Credentials**
```
Email: admin@martialzone.com
Password: admin123
Role: admin
```

## 🛍️ **Sample Products**
The database includes 8 martial arts products:
- Premium Boxing Gloves ($89.99)
- Martial Arts Gi ($45.99)
- Training Headgear ($65.99)
- Protein Powder ($34.99)
- Training Belt ($12.99)
- Focus Mitts ($28.99)
- MMA Shorts ($39.99)
- Shin Guards ($55.99)

## 🚀 **How to Start**

### 1. **Start Backend Server**
```bash
cd backend
npm start
```
**Server runs on:** http://localhost:3000

### 2. **Start Frontend**
```bash
npm run dev
```
**Frontend runs on:** http://localhost:5175

## 🔧 **API Endpoints**

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user

### Products
- `GET /api/products` - Get all products
- `GET /api/products/:id` - Get single product
- `POST /api/products` - Create product (admin)
- `PUT /api/products/:id` - Update product (admin)
- `DELETE /api/products/:id` - Delete product (admin)

### Orders
- `GET /api/orders/user/:userId` - Get user orders
- `POST /api/orders` - Create new order
- `PUT /api/orders/:id/status` - Update order status (admin)

## 📁 **Database Structure**
```json
{
  "users": [
    {
      "id": "1",
      "username": "admin",
      "email": "admin@martialzone.com",
      "password": "hashed_password",
      "role": "admin",
      "createdAt": "2024-01-01T00:00:00.000Z"
    }
  ],
  "products": [
    {
      "id": "1",
      "name": "Product Name",
      "description": "Product description",
      "price": 89.99,
      "category": "equipment",
      "image": "image_url",
      "stock": 50,
      "rating": 4.5
    }
  ],
  "orders": []
}
```

## 🎯 **Features**
- ✅ **No MongoDB required** - Uses local JSON file
- ✅ **Admin panel access** - Full CRUD operations
- ✅ **User authentication** - JWT tokens
- ✅ **Shopping cart** - Add/remove items
- ✅ **Order management** - Create and track orders
- ✅ **Product categories** - Equipment, Clothing, Accessories, Supplements
- ✅ **Search & Filter** - Find products easily
- ✅ **Stock management** - Automatic stock updates

## 🔐 **Security**
- Passwords are hashed using bcrypt
- JWT tokens for authentication
- Role-based access control (admin/user)

## 🛠️ **Troubleshooting**
- If the database file doesn't exist, it will be created automatically
- All data is stored locally in `backend/data/database.json`
- No external dependencies or installations required

## 🌟 **Ready to Use!**
Your MartialZone e-commerce website is now fully functional with:
- Modern, responsive design
- Complete shopping experience
- Admin panel for product management
- Local JSON database (no external setup needed)

**Just start the backend and frontend, and you're ready to go!** 🚀
