# default product redirect
r301 %r{/addon-antivirus/(?![\d-]+)(.*)}, "/addon-antivirus/1-4/$1"
r301 %r{/addon-antivirus/1-2/(.*)}, 'http://docs.pivotal.io/archives/addon-antivirus-1.2.pdf'
