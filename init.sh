echo "输入项目名："
read projName
mkdir -p $projName && cd $projName
yarn init -y
yarn add webpack webpack-cli webpack-dev-server html-webpack-plugin \ 
	clean-webpack-plugin vue-style-loader css-loader html-loader eslint \ 
	babel-loader @babel/core @babel/preset-env url-loader -D
jq '.scripts.start="webpack serve"' package.json > package.tmp && mv -f package.tmp package.json
cp ../webpack-init/webpack.config.js ./
mkdir src && cd src
touch index.html index.js index.css
npx eslint --init
