#encoding: utf-8
# By WEB 110
Product.delete_all
Comment.delete_all
Order.delete_all
Cart.delete_all
User.delete_all

User.create(name: 'admin', password: 'admin', password_confirmation: 'admin')

Product.create(title: 'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
  functionality wrapped in a cleaner, more succinct syntax. In the first
  book on this exciting new language, CoffeeScript guru Trevor Burnham
  shows you how to hold onto all the power and flexibility of JavaScript
  while writing clearer, cleaner, and safer code.
      </p>},
  image_url:   'images/cs.jpg',    
  price: 36.00,
  library_type: 'IT')
# . . .
Product.create(title: 'Programming Ruby 1.9',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: 'images/ruby.jpg',
  price: 49.95,
  library_type: 'IT')
# . . .

Product.create(title: 'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: 'images/rtp.jpg',
  price: 34.95,
  library_type: 'IT')
# . . .
  
Product.create(title: 'Pride and Prejudice',
  description: 
    %{<p>
        <em>Pride and Prejudice</em>  is a truth universally acknowledged, 
        that a single man in posses-sion of a good fortune must be in want 
        of a wife. However little known the feelings or views of such a man 
        may beon his first entering a neighbourhood, this truth is so well 
        fixed in theminds of the surrounding families, that he is considered 
        as the rightfulproperty of some one or other of their daughters.
      </p>},
  image_url: 'images/pride.png',
  price: 14.70,
  library_type: '文学')
# . . .

Product.create(title: 'Pride and Prejudice(kindle版)',
  description: 
    %{<p>
        <em>Pride and Prejudice(kindle版)</em>  This book was converted from 
        its physical edition to the digital format by a community of volunteers. 
        You may find it for free on the web. Purchase of the Kindle edition 
        includes wireless delivery.It is a truth universally acknowledged, 
        that a single man in posses-sion of a good fortune must be in want of a wife.
      </p>},
  image_url: 'images/prid2.png',
  price: 13.70,
  library_type: '文学')
# . . .

Product.create(title: 'The Little Prince',
  description: 
    %{<p>
        <em>The Little Prince</em>  Few stories are as widely read and as 
        universally cherished by children and adults alike as The Little Prince. 
        Richard Howard's new translation of the beloved classic-published to commemorate 
        the 100th anniversary of Antoine de Saint-Exupéry's birth-beautifully reflects 
        Saint-Exupéry's unique and gifted style. Howard, an acclaimed poet and one of the 
        preeminent translators of our time, has excelled in bringing the English text as 
        close as possible to the French, in language, style, and most important, spirit. 
        The artwork in this new edition has been restored to match in detail and in color 
        Saint-Exupéry's original artwork.
      </p>},
  image_url: 'images/little.png',
  price: 73.40,
  library_type: '文学')
# . . .

Product.create(title: '奇幻百科：精灵',
  description: 
    %{<p>
        <em>奇幻百科：精灵</em>  是“奇幻百科”系列丛书之一，由让-卢克·比齐安编著。 
                            我们生活的世界呈现出完全不同的两面：一个是所有人都能看到的人类世界，
                            包括历史、法律、信仰、国度…… 另一个，则是绝大多数人都看不到的世界，
                            它是人类记忆或想象的产物，那里生活着无数稀奇古怪的物种。 尽管我们感知不到他们的行为，
                            但是他们就在我们身边…… 隐身于深暗的密林之中，穿行于草木之间，精灵以小团体的形式生活着。
                            精灵是什么？是喜欢幻想的柔弱生物还是内心强 大的冷酷战士？他们正濒临灭绝吗？
                            还是他们统治着一个不为人类所知的平行世界？如何能更好地认识这一神秘物种？ 
                            这些就是《精灵》试图回答的问题。
      </p>},
  image_url: 'images/jing.png',
  price: 13.60,
  library_type: '奇幻')
# . . .

Product.create(title: '少年pi的奇幻漂流',
  description: 
    %{<p>
        <em>少年pi的奇幻漂流</em>  是作者马特尔的第二部小说，但是一面市便惊艳国际文坛，
                          获奖无数，成为畅销书。 是一关于成长、冒险、希望、奇迹、生存和信心的奇特的小说，在美国、加拿大、德
                          国、英国等欧美国家进入了高中生必读书目。 描述了16岁的印度少年和一只孟加拉虎共同在太平洋漂流227天后
                          获得重生的神奇经历。如真似幻的海上历险与天真、 残酷并存的人性矛盾，在书中不但巧妙契合，
                          更激荡出高潮不断的阅读惊喜。小说内容关于冒险、希望、奇迹、生存和信心， 是一个能让人产生信仰的故事，
                          同时也会让读者重新认识文学并相信文学的力量。
      </p>},
  image_url: 'images/pi.png',
  price: 21.00,
  library_type: '奇幻')
# . . .

Product.create(title: '平凡的世界',
  description: 
    %{<p>
        <em>平凡的世界</em>  是一部现实主义小说，也是小说化的家族史。作家路遥高度浓缩了中国
                             西北农村的历史变迁过程， 作品达到了思想性与艺术性的高度统一，特别是主人公面对困境艰苦奋斗的精神，
                             对今天的大学生朋友仍有启迪。 这是一部全景式地表现中国当代城乡社会生活的长篇小说。平凡的世界(套装共3册)》
                             共三部。劳动与爱情，挫折与追求， 痛苦与欢乐，日常生活与巨大社会冲突，纷繁地交织在一起，
                             深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。
      </p>},
  image_url: 'images/luyao.png',
  price: 30.08,
  library_type: '文学')
# . . .

Product.create(title: '牧羊少年奇幻之旅',
  description: 
    %{<p>
        <em>牧羊少年奇幻之旅</em>  是部追求梦想、完善人生的寓言故事，启示人们实现梦想要经历一个艰
                            难的过程，需要 勇气、智慧、执著和经受考验。讲述了牧羊少年圣地亚哥接连两次做了同一个梦，梦见埃及金字
                            塔附近藏有一批宝藏。 少年卖掉羊群，历尽千辛万苦一路向南，跨海来到非洲，穿越“死亡之海”撒哈拉大沙漠……期间
                            奇遇不断， 在一位炼金术士的指引下，他终于到达金字塔前，悟出了宝藏的真正所在。法国文化部部长将作
                            者保罗·科埃略称为“数百万读者心中的炼金术士”。
      </p>},
  image_url: 'images/mu.png',
  price: 16.30,
  library_type: '奇幻')
# . . .

Product.create(title: '程序员面试宝典（第3版）',
  description: 
    %{<p>
        <em>程序员面试宝典（第3版）</em>   是《程序员面试宝典》的第三版，在保留第二版的数据结构、面
                           向对象、程序设计 等主干的基础上，使用各大IT公司及相关企业最新面试题替换和补充原内容，以反映自第一版
                           以来近几年时间所发生的变化。 《程序员面试宝典(第3版)》取材于各大公司面试真题（笔试、口试、电话面试、
                           英语面试，以及逻辑测试和智商测试）， 详细分析了应聘程序员（含网络、测试等）职位的常见考点。
                           《程序员面试宝典(第3版)》不仅对传统的C系语言考点做 了详尽解说，还根据外企出题最新特点，
                           新增加了对友元、Static、图形/音频、树、栈、ERP等问题的深入讲解。 最后《程序员面试宝典(第3版)》
                           着力讲述了如何进行英语面试和电话面试，并对求职中签约、毁约的注意事项及群体面试进行了解析。
      </p>},
  image_url: 'images/mian.png',
  price: 30.20,
  library_type: 'IT')
# . . .

Product.create(title: '程序员面试宝典（第4版）',
  description: 
    %{<p>
        <em>程序员面试宝典（第4版）</em> 是《程序员面试宝典》的第4版，在保留第3版的数据结构、面向对象、
                           程序设计等 主干的基础上，删除了第3版的第21章，新增了第4版的第21、22、23、24章全新的试题分析内容，
                           并且在第3版原有的20章 中也使用各大IT公司及相关企业最新面试题替换和补充原内容，以
                           反映自第3版以来两年多的时间内所发生的变化。 
                           本书取材于各大公司面试真题（笔试、口试、电话面试、英语面试，以及逻
                           辑测试和智商测试），详细分析了应聘程序员 （含网络、测试等）职位的常见考点。
                           本书不仅对传统的C系语言考点做了详尽解
                           说，还根据外企出题最新特点，新增加了对友 元、Static、图形/音频、树、栈、ERP等问题的深入讲解。
                           最后本书着力讲述了如何进行英语面试和电话面试，并对求职 中签约、毁约的注意事项及群体面试进行了解析。
                           本书的面试题除了有详细解析和答案外，对相关知识点还有扩展说明。
      </p>},
  image_url: 'images/mian4.png',
  price: 33.00,
  library_type: 'IT')
# . . .

Product.create(title: '程序员面试笔试宝典',
  description: 
    %{<p>
        <em>程序员面试笔试宝典</em> 除了对传统的计算机相关知识（C/C++、数据结构与算法、操作系统、计算
                           机网络与 通信、软件工程、数据库、智力题、英语面试等）进行介绍外，还根据当前计算机技术的发展潮流，
                           对面试笔试中常见的海量 数据处理进行了详细的分析。同时，为了更具说服力，《程序员面试笔试宝典》特邀
                           多位IT名企面试官现身说法， 对面试过程中求职者存在的问题进行了深度剖析，
                           同时《程序员面试笔试宝典》引入了
                           一批来自于名牌高校、就职于明星企业 的职场达人的真实求职案例，
                           通过他们的求职经验与教训，抛砖引玉，将整个
                           求职过程生动形象地展示在读者面前，进而对求职 者起到一定的指引作用。《程序员面试笔试宝典》也对各种类型
                           的IT企业的招聘环节进行了庖丁解牛式的分析， 帮助求职者能够更加有针对性地进行求职准备。
      </p>},
  image_url: 'images/bishi.png',
  price: 40.70,
  library_type: 'IT')
# . . .

Product.create(title: '重口味心理学',
  description: 
    %{<p>
        <em>重口味心理学</em> 你的身边是否有些人看起来怪怪的？是不是总有一种事物让你没来由地害怕？
                             你的大脑是否经常不受意识控制地涌入一些想法、影像或冲动？你身边是否有些人会突然性情大变，
                             几乎变成了另一个人？你听说过有的男性有着“害羞的膀胱”吗？他们在公共卫生间小便时一定要等到旁
                             边没人，或者到一个单独的小隔间，否则便尿不出来。
                             《重口味心理学》是心理学的最后一块隐秘，幽默另类、通俗易懂地讲述了各种重口味心理现象，
                             如多重人格障碍、特定精神分裂、恋童癖、恋物癖、露阴癖、性欲倒错、特定对象恐惧症等，
                             配有大量生动真实的案例，并附作者独到的分析，教你如何一眼看穿身边人的所有秘密和怪癖。
      </p>},
  image_url: 'images/2.png',
  price: 42.60,
  library_type: '心理学')
# . . .

Product.create(title: '说谎心理学',
  description: 
    %{<p>
        <em>说谎心理学</em> 一书告诉我们：说谎是天生的，诚实需要学习。我们天生爱说谎。
                            说谎驱动了人类的演化，善于说谎的人比其他人更为安定和谐。4岁的孩子已经开始有预谋地说谎；
                            每人每天至少说谎1.5次；在陌生的环境中，每10分钟就会冒出一句谎话；
        80%的谎言是出于自身利益考虑；……
                            但是，说谎并不容易。谎言到底有哪些征兆？
                            骗子必须要在受到质疑的情况下，思索出有说服力的答案；要小心避免自相矛盾；
                            说出的故事必须和讯问者已经知道的事实相符；
                            必须避免口误；也必须记住自己之前说过的话，才能在被要求重复时不露出马脚。在这么多重任务之余，
                            他们还得控制自己的肢体语言。更需要注意的是，不过度控制自己的行为举动，以免引起怀疑。
                            谎言需要认知、情绪和社交能力的配合。最佳骗子都是那些有魅力、有同理心、
                            有能力比听众预想好几步的人。
                            而撒谎最有效的方法，就是从心里不觉得自己在说谎。最好的谎言家也就是那些最会欺骗自己的人，
                            因为他们在说谎时，真的相信自己的谎言。
      </p>},
  image_url: 'images/shuo.png',
  price: 22.90,
  library_type: '心理学')
# . . .
Product.create(title: '怪诞心理学',
  description: 
    %{<p>
        <em>怪诞心理学</em> 中，全球最权威心理学大师理查德•怀斯曼钻研21年，通过数百个天马行空、
                           匪夷所思的科学心理实验，揭秘人类与生俱来的心理弱点，以及如何利用这些弱点进行心理操控，颠覆所有惯
                           性思维。“我在我的身体里”、“我是我自己的主人”、“我的所有决定都是自己做的”，
                           这些自我意识其实都是心
                           理错觉，都可以被人操纵而不自知。
                           鉴于这些心理操控原理威力强大，请不要以此招摇撞骗哦！
      </p>},
  image_url: 'images/guai.png',
  price: 17.50,
  library_type: '心理学')
# . . .


Product.create(title: '看见',
  description: 
    %{<p>
        <em>看见</em> 是知名记者和主持人柴静讲述央视十年历程的自传性作品，既是柴静个人的成长告白书，
                            某种程度上亦可视作中国社会十年变迁的备忘录。十年前她被选择成为国家电视台新闻主播，
                            却因毫无经验而遭遇挫败，
                            非典时期成为现场记者后，现实生活犬牙交错的切肤之感，让她一点一滴脱离外在与自我的束缚，对生活与人性有了
                            更为宽广与深厚的理解。十年之间，非典、汶川地震、两会报道、北京奥运……在每个重大事件现场，几乎都能发现
                            柴静的身影，而如华南虎照、征地等刚性的调查报道她也多有制作。在书中，她记录下淹没在宏大叙事中的动人细节，
                            为时代留下私人的注脚。一如既往，柴静看见并记录下新闻中给她留下强烈生命印象的个人，每个人都深嵌在世界之中，
                            没有人可以只是一个旁观者，他人经受的，我必经受。书中记录下的人与事，是他们的生活，也是你和我的生活。
                            《看见》中，我没有刻意选择标志性事件，也没有描绘历史的雄心，
                            在大量的新闻报道里，我只选择了留给我强烈生命印象的人，
                            因为工作原因，我恰好与这些人相遇。他们是流淌的，
                            从我心腹深处的石坝上漫溢出来，坚硬的成见和模式被一遍遍冲刷，
                            摇摇欲坠，土崩瓦解。这种摇晃是危险的，但思想的本质就是不安。
                            我试着尽可能诚实地写下这不断犯错、不断推翻、不断疑问、不断重建的事实和因果，
                            一个国家由人构成，
                            一个人也由无数他人构成，你想如何报道一个国家，就要如何报道自已。——柴静

      </p>},
  image_url: 'images/kan.png',
  price: 29.40,
  library_type: '文学')
# . . .

Product.create(title: '就这么飘来飘去',
  description: 
    %{<p>
        <em>就这么飘来飘去</em> 内容简介：韩寒用充满激情的文字，描述自己最初三年漂来漂去的日子，
                           特立独行的生活岁月，充满艰难与快乐的赛车经历，以及他对人生的感悟和对青春的诠释。透过这本新作，
                           读者可以看到一个真实的韩寒。最新修订版的《就这么漂来漂去》增补了50%的图文内容，将韩寒赛车十
                           年来的故事一一道尽，从菜鸟车手到双料冠军，从一无所有到专属的6号赛车，
                           韩寒通过这本《韩寒:就这么漂来漂去》向你道尽作为赛车手的韩寒十年的辛酸苦辣。
                           就像韩寒自己说的一样：“如果你准备好去打仗，你就得知道敌人扔过来的不会是面包，
                           你准备好去探险，就得知道山谷里没有七尺大床。对于刚过了三十多的人来说，以往的岁月可能
                           是不断的迎接新人进你的生命，以后的岁月也许会不停的送走旧人出你的生活。当然更不排除每一个自己
                           走得更快。”对于韩寒来说，赛车与写作是他生命中最重要的两件事，他为了赛车奉上满腔热血，他一直
                           以来都没有放弃，最终他站上了冠军的领奖台。《就这么漂来漂去》就是韩寒的一本赛车励志自传。
      </p>},
  image_url: 'images/han.png',
  price: 28.80,
  library_type: '文学')
# . . .

Product.create(title: '蛙',
  description: 
    %{<p>
        <em>蛙</em> 是莫言酝酿十余年、笔耕四载、三易其稿，潜心打造的一部触及国人灵魂最痛处的长篇力作，
                           初版于2009年。小说由剧作家蝌蚪写给日本作家杉谷义人的五封书信、四部长篇叙事和一部话剧组成，
                           在艺术上极大拓展了小说的表现空间。整部作品以从事妇产科工作五十多年的乡村女医生姑姑的人生经历为线索，
                           用生动感人的细节和自我反省，展现了新中国六十年波澜起伏的“生育史”，揭露了当下中国生育问题上的混乱景
                           象，同时也深刻剖析了以叙述人蝌蚪为代表的中国知识分子卑微、尴尬、纠结、矛盾的灵魂世界。
      </p>},
  image_url: 'images/wa.png',
  price: 25.60,
  library_type: '文学')
# . . .

Product.create(title: '丰乳肥臀',
  description: 
    %{<p>
        <em>丰乳肥臀</em> 是莫言早期创作的一座高峰，也是篇幅最为饱满的一部长篇力作。
                           小说从抗日战争一直写到新中国改革开放之后，以汪洋恣肆的笔触对波澜壮阔的历史进行了描绘。
                           书中的母亲艰难孕育了上官金童和他的八个姐姐，众多儿女组成的庞大家族不可抗拒地被裹挟卷入了
        20世纪中国社会动荡不安的历史进程。小说通过描写家庭来反映中国社会的变迁，
                             表现了莫言对于女性的同情和赞颂。同时小说书写了人类不可克服的弱点和病态人格
                             导致的悲惨命运，具有拷问灵魂的深度和力度。
      </p>},
  image_url: 'images/feng.png',
  price: 28.80,
  library_type: '文学')
# . . .

Product.create(title: '酒国',
  description: 
    %{<p>
        <em>酒国</em> 是莫言于1989至1992年全力打造的一部将现实批判锋芒推向极致，
                             并在叙事实验方面进行大胆尝试和创新的长篇力作。在小说中，省人民检察院特级侦察员丁钩
                             儿到酒国市调查一个特殊案子；但到酒国市的人没有谁能经得起诱惑，在权力、美酒和女人之间周
                             旋的过程中，丁钩儿虽不断提醒自己不喝酒，最后却醉酒淹死在茅厕里。通过丁钩儿的故事，小说
                             犀利地揭示了这个社会的可怕奥秘。与丁钩儿故事并行的是出现在小说中的作者与酒国市文学青年李
                             一斗关于文学创作的通信，以及李一斗创作的小说作品；这些小说作品在风格上五花八门，堪称是小
                             说文体的“满汉全席”。
      </p>},
  image_url: 'images/jiu.png',
  price: 22.20,
  library_type: '文学')
# . . .

Product.create(title: '莫言自选集',
  description: 
    %{<p>
        <em>莫言自选集</em> 讲述了：好的作家，大概像一个语言的炼金术士，
                            他攫取语言中的一切粗矿，与自己的语言气质相结合，加以锻炼，然后形成独特的文体。我
                            母亲从小就教育我少说话，我也改名“莫言”以自警，但总是管不住自己的嘴巴，
                            得罪了许多人……实际上，嘴巴上占上风，是愚蠢的，文学的事，每个人都有自己的看法，
                            非要强迫着别人接受自己的观点，那是不可能的。我钦佩像左拉那种敢于发出“我抗议”这种慷慨激
                            昂声音的作家，但我同样也崇敬像普鲁斯特那样在自己封闭在小屋子里、沉溺在对往昔生活的缠绵回忆
                            中的作家。至于我自己，并不缺乏路见不平挺身而出的勇气，但用文学的方式发言可能更符合我的性格。
      </p>},
  image_url: 'images/mo.png',
  price: 33.00,
  library_type: '文学')
# . . .

Product.create(title: '红高粱家族',
  description: 
    %{<p>
        <em>红高粱家族</em> 编辑推荐：阅读《莫言作品系列(套装共16册)》，
                              感受中国文学进军世界舞台的骄傲。上海文艺出版社出版的这套作品系列囊括了世界级
                              作家、2012年度诺贝尔文学奖获得者——莫言迄今为止的全部小说作品。其中，长篇小说11部，中
                              篇小说集3部，短篇小说集2部。11部长篇小说包括了莫言7部获得过海内外各种文学奖项的长
                              篇作品——《红高粱家族》《酒国》《丰乳肥臀》《檀香刑》《四十一炮》《生死疲劳》和《蛙》。
                              莫言是首位获得诺贝尔文学奖的中国籍作家，是中国当代文学最具实力的代表性人物。
                              在此之前，他已经获得过海内外许多重要文学奖项，主要有：冯牧文学奖；首届大家•红河文
                              学奖；法国“Laure Bataillin”(儒尔·巴泰雍)外国文学奖；首届“鼎钧文学奖”；华语文学
                              传媒大奖.年度杰出成就奖；日本第十七届“福冈亚洲文化奖”；法兰西文化艺术骑士勋章；第三十届意大
                              利 NONINO 国际文学奖；第二届世界华文长篇小说奖“红楼梦奖”；第八届茅盾文学奖，等等。
      </p>},
  image_url: 'images/hong.png',
  price: 372.20,
  library_type: '文学')
# . . .

Product.create(title: '蓝色城堡',
  description: 
    %{<p>
        <em>蓝色城堡</em> 内容简介：权威编选莫言小说、散文的短经典，一本书读懂中国本土诺贝尔文学奖第一人。
                             编辑推荐：中国最顶级作家、最经典的小说和散文；中学生课外阅读的最佳读本；大学本科生的文学必读书。
                             第一次全面收录作家获得茅盾文学奖的获奖感言，莫言领衔中国文学最强的实力阵容。
                             莫言，生于1955年，山东人。著名作家。2011年，
                             长篇小说《蛙》获第八届茅盾文学奖。2012年获诺贝尔文学奖。
      </p>},
  image_url: 'images/lan.png',
  price: 21.30,
  library_type: '文学')
# . . .

Product.create(title: '跟莫言学写作',
  description: 
    %{<p>
        <em>跟莫言学写作</em> 莫言的写作能力是天生的吗？是，又不是。莫言的写作有技巧可循吗？有，
                              又没有。莫言天马行空构筑文学世界的本领是可以学习的吗？可以，又不可以。《跟莫言学写作》独辟蹊径，
                              试图另眼看莫言，以莫言的经典作品为例，寻找通往写作之道的门径，给热爱文学、热爱写作的人们以启发
                              和借鉴，积累技巧，登堂人室。
                              《跟莫言学写作》由管遵华编著。
      </p>},
  image_url: 'images/gen.png',
  price: 21.00,
  library_type: '文学')
# . . .

Product.create(title: '幻夜',
  description: 
    %{<p>
        <em>幻夜</em> 日本作家、直木奖得主东野圭吾的长篇小说，2004年入围第131届直木奖，被视为长篇巅峰巨著《白夜行》姊妹篇。
                              《幻夜》被媒体和读者列为东野圭吾的巅峰之作，多线演进、暗藏伏笔、丝丝入扣的写实技巧在本书中愈加纯熟，以笔为刀，
                              直刺人性最深处的无边之恶，将人为活下去而不择手段的绝望，书写得血流成河……正如评者所言：
                              “《幻夜》乃是一部不折不扣的‘绝望之书’。”
                              是什么样的过去，造就了她的魔性？
                              是什么样的幻影，操纵着他的灵魂？ 
                              地震之后，宛如人间炼狱的断壁残垣中，水原雅也借机杀了舅舅，却被一神秘女子当场目击，她答应为水原终生保守秘密。
                              他们相偕前往东京，然而等待他们的，却是从此再无一丝太阳的无边幻夜：凡是接近过她的人，
                              都遭逢厄运；凡是触碰过她过去的人，都不知所踪……
                              她，到底是谁？
      </p>},
  image_url: 'images/huan.png',
  price: 20.40,
  library_type: '悬疑')
# . . .

Product.create(title: '空中杀人现场',
  description: 
    %{<p>
        <em>空中杀人现场</em> 是东野圭吾笔下罕见的诙谐幽默故事，也是精巧的本格推理杰作。空姐小A和小B是一
                              对性格迥异却非常合拍的密友，小A沉稳大方、心思缜密，小B俏皮可爱、不拘小节。在离地万米的机舱里，面对形
                              形色色的旅客，她们总是卷入意想不到的诡异事件。
                              坐拥巨额财产的女人被缢死，可疑的丈夫却有铜墙铁壁般的不在场证明；飞机上凭空多了一个婴儿，但所
                              有乘客都声称不认识他；一对在宾馆殉情自杀的男女，竟是两个完全陌生的人；一个根本不存在的幻影乘客，
                              却总是有人言之凿凿声称看到了她？云端邂逅白马王子的童话爱情背后，是一个不可思议的残酷真相；谁在飞机
                              上丢失了遗书，谁看起来像准备赴死之人？久别重逢的初恋情人，是无辜蒙受不白之冤，还是居心叵测暗怀杀机？
      </p>},
  image_url: 'images/kong.png',
  price: 17.90,
  library_type: '悬疑')
# . . .

Product.create(title: '邪恶催眠师',
  description: 
    %{<p>
        <em>邪恶催眠师</em> 内容简介：在街头实施的“瞬间催眠术”，可以让路人迷迷糊糊地把身上的钱悉
                              数奉上；稍微深一些的催眠，更可以令人乖乖地去银行取出自己的全部存款；而如果碰到一个邪恶催眠师，
                              被催眠者不仅任其驱使，就算搭上性命也浑然不觉。意志薄弱的人、欲望强烈的人，容易被催眠；过度防范的人，警
                              惕心越强，越容易被催眠。催眠师找准了催眠对象的心理弱点，利用人的恐惧、贪念、防备，潜入对方的精神世界，
                              进而操控他们。瞬间催眠、集体催眠、认知错乱、删除记忆……一群平日深藏不露的催
                              眠师，突然出现在街上、写字楼、医院、广场……，在他们眼里，世人都是梦游者任其驱使，
                              而他们之间的斗争，却将所有普通人的命运卷入其中。
      </p>},
  image_url: 'images/xie.png',
  price: 22.00,
  library_type: '悬疑')
# . . .

Product.create(title: '谁杀了她',
  description: 
    %{<p>
        <em>谁杀了她</em> 内容简介：因担心情绪低落的妹妹，交警康正赶赴东京，迎接他的竟是妹妹的尸体。
                             乍看上去毫无疑问的自杀现场，在康正眼里却破绽百出。他掩盖破绽，欲让警方以自杀结案，以便亲自寻找凶手复仇。
                             警方果然中计，康正的调查也在暗中展开，唯有刑警加贺对此充满怀疑。然而不管加贺如何步步紧逼，
                             康正都已决心孤注一掷。两人在较量中慢慢接近了真相……
                             究竟，是谁杀了她？
      </p>},
  image_url: 'images/shui.png',
  price: 20.40,
  library_type: '悬疑')
# . . .

Product.create(title: '间谍课:复仇者',
  description: 
    %{<p>
        <em>间谍课:复仇者</em> 为弗•福赛斯“9•11”后力作。1995年5月15日，志愿援助人员、20岁的
                           美国青年里基•科伦索在塞尔维亚被残忍杀害。2001年，前南斯拉夫地区终于硝烟散尽，战争罪犯得到审判，科
                           伦索一案也浮出水面；然而，杀害他的凶手神秘消失，这个最可怕的恶徒虽然已经消失，却仍让人谈虎色变。全美国最
                           高情报机构、司法机构都束手无策，只能求助于一个单枪作战的“复仇者”。复仇者不干暗杀之类的勾当，他决心一定要活
                           捉恶徒，带到法庭上接受审判。复仇者的追击从欧洲开始，到中东海湾，再到南美洲丛林，他像一只老鹰一样死死盯住了目
                           标。目标所在的位置可谓全世界最难攻陷的堡垒，大自然鬼斧神工的地形、人工的巧妙设计，加上各种现代化通讯、监视与安
                           保措施，让这个地方进都进不来，更何况还要带着目标活着出去……
      </p>},
  image_url: 'images/jian.png',
  price: 22.10,
  library_type: '悬疑')
# . . .

Product.create(title: '名侦探柯南',
  description: 
    %{<p>
        <em>名侦探柯南</em> 和风小姐选美大赛的有力候选人收到了一封恐吓信！进入评选会场的柯南和灰原哀，
                             由于意想不到的事件恢复了原来的身体！！黑衣组织为了寻找他们，开始了行动！！
                             以最新的酒店为舞台，一场赌上性命的电视剧即将上演！如果坐在电影院里，
                             看柯南电影是你今生的梦想；如果还没有看到正版柯南彩书是你此刻的遗憾，
                             来，我们一起为《小说名侦探柯南:工藤新一的复活和黑衣组织的对决(特别篇)》
                             疯狂！！！极具明星气质的柯南炫目出场，拥有它，绝对超值！
      </p>},
  image_url: 'images/kenan.png',
  price: 11.10,
  library_type: '悬疑')
# . . .

Product.create(title: '福尔摩斯探案全集',
  description: 
    %{<p>
        <em>福尔摩斯探案全集</em> 包括：《福尔摩斯探案全集(上册)》、
                            《福尔摩斯探案全集(中册)》和《福尔摩斯探案全集(下册)》。《福尔摩
                            斯探案全集》在欧美不断再版，至今有上百次之多。在中国大地也风靡一时，
                            历久弥新，畅销不衰。小说离奇、惊险、刺激，故事情节曲折多变，
                            令人惊心动魄。
      </p>},
  image_url: 'images/fu.png',
  price: 39.90,
  library_type: '悬疑')
# . . .

Product.create(title: '中国四大经典名著:西游记',
  description:
    %{<p>
        <em>中国四大经典名著:西游记</em> 内容简介：神通广大的孙悟空，贪吃懒惰的猪八戒，慈悲善良的
                              唐三藏和朴实忠诚的沙和尚，这些家喻户晓的人物就是《西游记》中的主角，取经路上，
                              他们谱写了一个又一个精彩绝伦的斩妖除魔的故事。《中国四大经典名著:西游记(彩图注音版)》
                              用精美的插图和清晰的拼音向小读者们展现了精彩的西天取经历程。
                              古典名著是儿童启蒙教育的优秀读本。《中国四大经典名著:西游记(彩图注音版)》
                              去除了原著中不易被孩子理解的，较为艰深的内容，用浅显易懂的语言叙述故事情节，
                              便于孩子阅读和思考。良好的阅读习惯是伴随孩子一生成长的宝贵财富，让孩子学会阅读、喜欢
                              阅读，学会思考、喜欢思考，是编写《中国四大经典名著:西游记(彩图注音版)》的目的所在。
      </p>},
  image_url: 'images/xi.png',
  price: 20.90,
  library_type: '名著')
# . . .

Product.create(title: '水浒传',
  description: 
    %{<p>
        <em>水浒传</em> 具体而生动地描写了以宋江为首水泊梁山一百单八将的农民起
                            义发生、发展直至失财的整个过程，揭露了封建社会的黑暗、腐朽和统治阶级的种种罪
                            恶，热情歌颂了起义英雄的反抗精神和正义行动，塑造了一大批梁山好汉的光辉形象，
                            形象地揭示了封建社会“官逼民反”的客观真理和农民起义失败的内在原因。
      </p>},
  image_url: 'images/hu.png',
  price: 15.70,
  library_type: '名著')
# . . .

Product.create(title: '三国演义',
  description: 
    %{<p>
        <em>三国演义</em> 全称《三国志通俗演义》，是我国文学史上章回小说的开山之作，
                          也是古代历史演义中成就最高、影响最大的一部作品，位列中国古代四大名著之一。
                          作者罗贯中，名本，字贯中，号湖海散人，太原人氏，天资聪颖、勤奋好学，有经天纬地之才，
                          是元末明初著名的小说家、戏曲家。
                          《三国演义》是我国第一部长篇小说，中国小说由短篇发展至长篇与说书关系密切。宋代时，
                          民间说书风气盛行，说书成为一种职业，古代人物故事成为说书人的重要题材。晋人陈寿所著的
                          《三国志》涉及人物繁多，事件复杂，因此三国故事成为了说书人的绝佳选择。
                          三国时代是一个风云变幻、激烈动荡的时代，也是一个英雄辈出、“武勇智术、瑰伟动人”的时代。
                          有关三国的故事早在三国后期就开始流传，之后又有说书人长期敷演，内容越来越全面，人物形象越来
                          越鲜明，隋唐时传播益盛，到宋代更是喧腾众口、深入民间。最后，罗贯中在吸取前代丰富遗产的基础上
                          进行再加工和创作，将历代口耳相传的各自孤立的故事集合成了“七分实事，三分虚构”的小说——《三国演义》。
      </p>},
  image_url: 'images/san.png',
  price: 17.00,
  library_type: '名著')
# . . .

Product.create(title: '红楼梦',
  description: 
    %{<p>
        <em>红楼梦</em> 原名《石头记》。是中国文学，乃至世界文学史上一部伟大的文学作品。
                              它是中国古典长篇小说创作的巅峰，是悠久、灿烂的中华文化的杰出代表，也是整个人类共同的精神财
                              富和文化遗产。作品以贾、史、王、薛四大家族为背景，以贾宝玉、林黛玉的爱情悲剧为主要线索，着重描
                              写了贾家荣、宁二府由盛到衰的过程，广泛反映了当时的社会矛盾和阶级斗争，对封建礼教进行了批判。
                              作品语言优美生动，善于刻画人物，塑造了许多富有典型性格的艺术形象。全书规模宏大，结构严谨，
                              是我国古代长篇小说中的现实主义的高峰。
      </p>},
  image_url: 'images/meng.png',
  price: 35.36,
  library_type: '名著')
# . . .
