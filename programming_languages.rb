languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
  }
}
def reformat_languages(languages)
  new_hash = {}
  multi_styles=[]
  languages.each do |style,lang_hash|
    lang_hash.each do |lang,info_hash|
      multi_styles<<style
      if new_hash.has_key?(lang)
          multi_styles<<style
        info_hash[:style]=multi_styles
      else
        info_hash[:style]=[style]
    end
      new_hash[lang]=info_hash
  end
end
new_hash
end
