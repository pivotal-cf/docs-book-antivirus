# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

# Redirect for Antivirus
r302 %r{/addon-antivirus/(?![\d-]+)(.*)}, "https://docs.vmware.com/en/Anti-Virus-for-VMware-Tanzu/2.3/anti-virus/GUID-index.html"
r302 %r{/addon-antivirus/2-3/(.)}, "https://docs.vmware.com/en/Anti-Virus-for-VMware-Tanzu/2.3/anti-virus/GUID-index.html"
r302 %r{/addon-antivirus/2-2/(.)}, "https://docs.vmware.com/en/Anti-Virus-for-VMware-Tanzu/2.2/anti-virus/GUID-index.html"
r302 %r{/addon-antivirus/2-1/(.)}, "https://docs.vmware.com/en/Anti-Virus-for-VMware-Tanzu/2.1/anti-virus/GUID-index.html"
r302 %r{/addon-antivirus/2-0/(.)}, "https://docs.vmware.com/en/Anti-Virus-for-VMware-Tanzu/2.0/anti-virus/GUID-index.html"
r302 %r{/addon-antivirus/1-4/(.)}, "https://docs.vmware.com/en/Anti-Virus-for-VMware-Tanzu/1-4/anti-virus/GUID-index.html"
