MRuby::Build.new do |conf|
  toolchain :gcc
  enable_debug
  conf.gembox 'default'
end

MRuby::CrossBuild.new('kernel') do |conf|
   toolchain :gcc
   conf.cc.include_paths << "../stub/include"
   conf.cc.flags << "-mcmodel=kernel -fno-PIE -mno-red-zone -fno-asynchronous-unwind-tables -fno-omit-frame-pointer"
   conf.cc.defines << %q(DISABLE_STDIO)
   conf.cc.defines << %q(MRB_WITHOUT_FLOAT)
   conf.cc.defines << %q(MRB_64BIT)
   conf.bins = []
end
