const bcrypt = require('bcryptjs');

async function testAdminPassword() {
  const password = 'admin123';
  const hash = await bcrypt.hash(password, 10);
  
  console.log('Password:', password);
  console.log('Generated Hash:', hash);
  
  // Test if the hash works
  const isValid = await bcrypt.compare(password, hash);
  console.log('Hash validation:', isValid);
  
  // Test with the old hash from database
  const oldHash = '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi';
  const isValidOld = await bcrypt.compare(password, oldHash);
  console.log('Old hash validation:', isValidOld);
  
  // Test what password the old hash actually represents
  const testPasswords = ['admin123', 'password', 'admin', '123456', 'admin@123'];
  for (const testPass of testPasswords) {
    const isValidTest = await bcrypt.compare(testPass, oldHash);
    if (isValidTest) {
      console.log(`Old hash matches password: ${testPass}`);
      break;
    }
  }
}

testAdminPassword().catch(console.error);
