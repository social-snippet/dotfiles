for script_name in ~/dotfiles/scripts/install_*env.bash; do
  echo "call: ${script_name}"
  bash "${script_name}"
done
