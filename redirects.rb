# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

# temporary 2-0 avoidance
# r302 %r{docs.pivotal.io/addon-antivirus/2-0/(.*)}, "docs.pivotal.io/addon-antivirus/1-4/$1"

# default product redirect
r301 %r{/addon-antivirus/(?![\d-]+)(.*)}, "/addon-antivirus/2-0/$1"
r301 %r{/addon-antivirus/1-3/(.*)}, 'http://docs.pivotal.io/archives/addon-antivirus-1.3.pdf'
r301 %r{/addon-antivirus/1-2/(.*)}, 'http://docs.pivotal.io/archives/addon-antivirus-1.2.pdf'

# updating-for-xenial page is not in the 2.0 docs
r301 %r{/addon-antivirus/2-0/updating-for-xenial.html}, 'http://docs.pivotal.io/addon-antivirus/2-0/index.html'
