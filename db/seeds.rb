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
  image_url:   'cs.jpg',    
  price: 36.00)
# . . .
Product.create(title: 'Programming Ruby 1.9',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: 'ruby.jpg',
  price: 49.95)
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
  image_url: 'rtp.jpg',
  price: 34.95)
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
  image_url: 'pride.png',
  price: 14.70)
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
  image_url: 'prid2.png',
  price: 13.70)
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
  image_url: 'little.png',
  price: 73.40)
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
  image_url: 'jing.png',
  price: 13.60)
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
  image_url: 'pi.png',
  price: 21.00)
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
  image_url: 'luyao.png',
  price: 30.08)
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
  image_url: 'mu.png',
  price: 16.30)
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
  image_url: 'mian.png',
  price: 30.20)
# . . .

Product.create(title: '程序员面试宝典（第4版）',
  description: 
    %{<p>
        <em>程序员面试宝典（第4版）</em> 是《程序员面试宝典》的第4版，在保留第3版的数据结构、面向对象、
                           程序设计等 主干的基础上，删除了第3版的第21章，新增了第4版的第21、22、23、24章全新的试题分析内容，
                           并且在第3版原有的20章 中也使用各大IT公司及相关企业最新面试题替换和补充原内容，以
                           反映自第3版以来两年多的时间内所发生的变化。 本书取材于各大公司面试真题（笔试、口试、电话面试、英语面试，以及逻
                           辑测试和智商测试），详细分析了应聘程序员 （含网络、测试等）职位的常见考点。本书不仅对传统的C系语言考点做了详尽解
                           说，还根据外企出题最新特点，新增加了对友 元、Static、图形/音频、树、栈、ERP等问题的深入讲解。
                           最后本书着力讲述了如何进行英语面试和电话面试，并对求职 中签约、毁约的注意事项及群体面试进行了解析。
                           本书的面试题除了有详细解析和答案外，对相关知识点还有扩展说明。
      </p>},
  image_url: 'mian4.png',
  price: 33.00)
# . . .

Product.create(title: '程序员面试笔试宝典',
  description: 
    %{<p>
        <em>程序员面试笔试宝典</em> 除了对传统的计算机相关知识（C/C++、数据结构与算法、操作系统、计算
                           机网络与 通信、软件工程、数据库、智力题、英语面试等）进行介绍外，还根据当前计算机技术的发展潮流，
                           对面试笔试中常见的海量 数据处理进行了详细的分析。同时，为了更具说服力，《程序员面试笔试宝典》特邀
                           多位IT名企面试官现身说法， 对面试过程中求职者存在的问题进行了深度剖析，同时《程序员面试笔试宝典》引入了
                           一批来自于名牌高校、就职于明星企业 的职场达人的真实求职案例，通过他们的求职经验与教训，抛砖引玉，将整个
                           求职过程生动形象地展示在读者面前，进而对求职 者起到一定的指引作用。《程序员面试笔试宝典》也对各种类型
                           的IT企业的招聘环节进行了庖丁解牛式的分析， 帮助求职者能够更加有针对性地进行求职准备。
      </p>},
  image_url: 'bishi.png',
  price: 40.70)
# . . .

