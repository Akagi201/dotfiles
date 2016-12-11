##############################################################################
# @file ellipsis.sh
# @date 2016-11-05
# @author Akagi201 <akagi201@gmail.com>
# @license MIT
##############################################################################

# Minimal ellipsis version
ELLIPSIS_VERSION_DEP='1.9.0'

# Package dependencies (informational/not used!)
ELLIPSIS_PKG_DEPS=''

##############################################################################

pkg.link() {
    fs.link_files common

    case $(os.platform) in
        cygwin)
            fs.link_files platform/cygwin
            ;;
        osx)
            fs.link_files platform/osx
            ;;
        freebsd)
            fs.link_files platform/freebsd
            ;;
        linux)
            fs.link_files platform/linux
            ;;
    esac
}

git-configured() {
    for key in user.name user.email github.user; do
        if [ -z "$(git config --global $key | cat)"  ]; then
            return 1
        fi
    done
    return 0
}

##############################################################################

pkg.install() {
    git.add_include '~/.gitinclude'

    git.configured || cat <<\EOF
You should set your email, name and github user for git with `git config`:
    git config --global user.name "Akagi201"
    git config --global user.email "akagi201@gmail.com"
    git config --global github.user "Akagi201"
EOF
}

##############################################################################

pkg.uninstall() {
    : # No action
}

##############################################################################
