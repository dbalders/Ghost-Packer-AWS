include_recipe 'apt'
include_recipe 'nginx'
# include_recipe 'nodejs'
# include_recipe 'ghost-blog'

# {
#   "nodejs": {
#     "version": "6.12.2",
#     "engine": "node",
#     "install_method": "binary",
#     "binary": {
#       "checksum": {
#         "linux_x64": "05c29ffd17a4d5e0c1c6d4a09244e43e7af7a70ec11e67eecbffdf5ec1e1b45a"
#       }
#     },
#     "npm_packages": [
#       {
#         "name": "ghost-cli"
#       }
#     ]
#   }
# }