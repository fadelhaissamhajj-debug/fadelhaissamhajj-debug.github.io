# Node.js Installation Guide

## Why You Need Node.js

The "failed to fetch" error occurs because your frontend can't connect to the backend server. The backend server needs Node.js to run.

## Quick Fix Options

### Option 1: Install Node.js (Recommended)

1. **Download Node.js** from [https://nodejs.org/](https://nodejs.org/)
2. **Choose the LTS version** (Long Term Support - more stable)
3. **Run the installer** and follow the setup wizard
4. **Restart your computer** or at least restart your terminal/PowerShell
5. **Verify installation**:
   ```bash
   node --version
   npm --version
   ```

### Option 2: Use the Mock API (Temporary Solution)

I've created a mock API system that works without a backend. You can test the login functionality right now:

**Test Accounts Available:**
- **Admin**: `admin@martialzone.com` / `admin123`
- **User**: `user@example.com` / `password123`

The app will automatically detect if the backend is available and switch to mock mode if needed.

## After Installing Node.js

1. **Open a new terminal/PowerShell** (important!)
2. **Navigate to your project**:
   ```bash
   cd E:\MartialSite\backend
   ```
3. **Install dependencies**:
   ```bash
   npm install
   ```
4. **Start the backend server**:
   ```bash
   npm start
   ```
5. **You should see**:
   ```
   🚀 Server running on port 3000
   📊 Database: JSON file
   🔗 API URL: http://localhost:3000/api
   👤 Admin Login: admin@martialzone.com / admin123
   ```

## Testing the Login

1. **With Backend Running**: Use the real admin account
2. **Without Backend**: The app automatically uses mock API
3. **Google Sign-in**: Works in both modes

## Troubleshooting

### If npm install fails:
- Make sure you have a stable internet connection
- Try running PowerShell as Administrator
- Check if your antivirus is blocking npm

### If the server won't start:
- Check if port 3000 is already in use
- Make sure you're in the correct directory (`backend` folder)
- Check the console for error messages

### If you still get "failed to fetch":
- Make sure the backend is running on port 3000
- Check that you're using the correct URL in your frontend
- Verify CORS settings in the backend

## Next Steps

Once Node.js is installed and the backend is running:
1. The admin login will work with the correct password hash
2. You can test both authentication methods
3. The database will be automatically created with proper admin credentials
4. You can remove the mock API and test accounts from production code
