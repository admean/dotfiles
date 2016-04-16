run_segment() {
    local -r command_mode=$'\uf141' 
    local -r insert_mode=$'\uf120' 
    echo "#{?client_prefix,$command_mode,$insert_mode}"
}
