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
  languages.each do |style,lang_hash|
    lang_hash.each do |lang,info_hash|
      new_hash[lang]||=info_hash
      info_hash[:style]||=[]
      new_hash[lang][:style]<<style
    end
  end
new_hash
end
