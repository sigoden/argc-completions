_choice_scriptname() {
    if [ -f "$(pwd)/package.json" ]; then
        node -e "Object.keys(require('./package.json').scripts).forEach(v => console.log(v))"
    fi
}