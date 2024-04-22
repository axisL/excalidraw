set VERCEL_GIT_COMMIT_SHA=%git rev-parse HEAD%
for /f "delims=" %%i in ('git rev-parse HEAD') do set VERCEL_GIT_COMMIT_SHA=%%i
CALL yarn install
yarn build
rem echo %VERCEL_GIT_COMMIT_SHA%
