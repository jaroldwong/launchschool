family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

ext_family = {  cousins: ["tu", "vu", "bo"],
                inlaws: ["ma", "pa"]
}

family.merge(ext_family)

p family

family.merge!(ext_family)

p family