# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/
pkg_name=keepalived
pkg_origin=qubitrenegade
pkg_version="1.4.4"
pkg_maintainer="qubitrenegade <qubitrenegade@gmail.com>"
pkg_license=("MPL-2.0")
pkg_source="http://www.keepalived.org/software/${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum="147c2b3b782223128551fd0a1564eaa30ed84a94b68c50ec5087747941314704"
pkg_deps=(core/glibc core/openssl)
pkg_build_deps=(core/make core/gcc core/openssl core/linux core/linux-headers/4.13.1/20180418221713 paytmlabs/libnl3/3.2.21/20160812015658)
# pkg_lib_dirs=(lib)
# pkg_include_dirs=(include)
# pkg_bin_dirs=(bin)
# pkg_pconfig_dirs=(lib/pconfig)

pkg_svc_user="root"
pkg_svc_group="$pkg_svc_user"

# Optional.
# An associative array representing configuration data which should be gossiped to peers. The keys
# in this array represent the name the value will be assigned and the values represent the toml path
# to read the value.
# pkg_exports=(
#   [host]=srv.address
#   [port]=srv.port
#   [ssl-port]=srv.ssl.port
# )

# Optional.
# An array of `pkg_exports` keys containing default values for which ports that this package
# exposes. These values are used as sensible defaults for other tools. For example, when exporting
# a package to a container format.
# pkg_exposes=(port ssl-port)

# Optional.
# An associative array representing services which you depend on and the configuration keys that
# you expect the service to export (by their `pkg_exports`). These binds *must* be set for the
# Supervisor to load the service. The loaded service will wait to run until it's bind becomes
# available. If the bind does not contain the expected keys, the service will not start
# successfully.
# pkg_binds=(
#   [database]="port host"
# )

# Optional.
# Same as `pkg_binds` but these represent optional services to connect to.
# pkg_binds_optional=(
#   [storage]="port host"
# )

pkg_description="Keepalived"
pkg_upstream_url="http://www.keepalived.org/"
