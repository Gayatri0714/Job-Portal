@echo off
echo ========================================================
echo Pushing your Job Portal project to GitHub...
echo ========================================================
echo.

echo 1. Adding all files...
git add .

echo.
echo 2. Committing files...
git commit -m "Initial commit of Job Portal"

echo.
echo 3. Setting main branch...
git branch -M main

echo.
echo 4. Adding GitHub remote URL...
git remote add origin https://github.com/Gayatri0714/Job-Portal.git
:: If origin already exists, we can try to set its URL to be safe
git remote set-url origin https://github.com/Gayatri0714/Job-Portal.git

echo.
echo 5. Pushing to GitHub...
git push -u origin main

echo.
echo ========================================================
echo DONE! Please read the messages above to see if it worked.
echo If there are no errors above, your code is now on GitHub!
echo ========================================================
pause
