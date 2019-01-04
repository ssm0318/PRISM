# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Question.delete_all
# FriendRequest.delete_all
# Friendship.delete_all
# Assignment.delete_all
# Answer.delete_all
# Highlight.delete_all
# Comment.delete_all
# Tmi.delete_all
# Star.delete_all
if User.where(email: "prism@snu.com").empty?
    User.create(email: "prism@snu.com", password: "prism-snu", username: "백산수")
end
if User.where(email: "a@a.com").empty?
    User.create(email: "a@a.com", password: "aaaaaa", username: "마틸다")
end
if User.where(email: "b@b.com").empty?
    User.create(email: "b@b.com", password: "bbbbbb", username: "율로몬")
end
if User.where(email: "c@c.com").empty?
    User.create(email: "c@c.com", password: "cccccc", username: "잡동사니")
end
if User.where(email: "d@d.com").empty?
    User.create(email: "d@d.com", password: "dddddd", username: "이룰렁")
end
if User.where(email: "e@e.com").empty?
    User.create(email: "e@e.com", password: "eeeeee", username: "누구게")
end
if User.where(email: "f@f.com").empty?
    User.create(email: "f@f.com", password: "ffffff", username: "메롱")
end
# User.find_or_create_by(email: "a@a.com", password: "aaaaaa", username: "마틸다")
# User.find_or_create_by(email: "b@b.com", password: "bbbbbb", username: "율로몬")
# User.find_or_create_by(email: "c@c.com", password: "cccccc", username: "잡동사니")
# User.find_or_create_by(email: "d@d.com", password: "dddddd", username: "이룰렁")

Question.find_or_create_by(content: "마무리") # 디폴트로 admin이 생성한 것으로 되는지 확인
Question.find_or_create_by(content: "죽기 전에 꼭 하고 싶은 일이 있다면?", author_id: 2)
Question.find_or_create_by(content: "나이", author_id: 3)
Question.find_or_create_by(content: "요즘 가장 진지했던 밤은?")
Question.find_or_create_by(content: "깊이")
Question.find_or_create_by(content: "오늘 당신의 하루는 어땠나요?", selected_date: Date.today())
Question.find_or_create_by(content: "작년 이맘때보다 가장 많이 바뀐 것은 무엇인가?", selected_date: Date.today())
Question.find_or_create_by(content: "내게 너무 과분했던 것은?", selected_date: Date.today())
Question.find_or_create_by(content: "마지막으로 절정의 행복을 느꼈을 때는 언제인가?", selected_date: Date.today())
Question.find_or_create_by(content: "새 학기의 시작은 만족스러운가?", selected_date: Date.today())
Question.find_or_create_by(content: "저절로")
#ratings 3 & 4 추가
Question.find_or_create_by(content: "당장 갖고 싶은 세 가지가 있다면?")
Question.find_or_create_by(content: "오늘 처음 시도해본 활동이 있다면?")
Question.find_or_create_by(content: "오늘 나는 ___________이(가) 좀 더 필요했다.")
Question.find_or_create_by(content: "내일 무엇을 할 계획인가?")
Question.find_or_create_by(content: "지금 밖의 날씨는 ___________다.")
Question.find_or_create_by(content: "어제 몇 시에 잠자리에 들었는가?")
Question.find_or_create_by(content: "오늘 하루를 동물에 비유한다면? 그 이유는 무엇인가?")
Question.find_or_create_by(content: "오늘 하루 벌어진 일 중에서 바꾸고 싶은 게 있다면?")
Question.find_or_create_by(content: "오늘은 4년마다 돌아오는 특별한 날이다. 하루를 어떻게 보냈는가?")
Question.find_or_create_by(content: "오늘 있었던 일 중 후회하는 것은?")
Question.find_or_create_by(content: "오늘 나의 하루는 짠맛인가, 달달한 맛인가?")
Question.find_or_create_by(content: "생일선물로 절대 받고 싶지 않은 것이 있다면?")
Question.find_or_create_by(content: "지금 당장 사고 싶은 것은?")
Question.find_or_create_by(content: "오늘 하루를 어떻게 시작했는가?",)
Question.find_or_create_by(content: "가장 최근에 말다툼을 한 적이 있는가? 무슨 일 때문이었나?")
Question.find_or_create_by(content: "오늘 커피를 몇 잔 마셨는가?")
Question.find_or_create_by(content: "지속적으로 하고 있는 운동이 있는가?")
Question.find_or_create_by(content: "오늘 평소와 달랐던 점은 ___________다.")
Question.find_or_create_by(content: "가장 좋아하는 옷은?")
Question.find_or_create_by(content: "최근에 가본 새로운 곳은?")
Question.find_or_create_by(content: "가장 좋아하는 TV 프로그램은?")
Question.find_or_create_by(content: "최근에 기분 좋은 대화를 나눈 사람의 이름을 적어보자.")
Question.find_or_create_by(content: "평소 피하려고 하는 것은 무엇인가?")
Question.find_or_create_by(content: "가장 아끼는 신발은?")
Question.find_or_create_by(content: "여름이 좋은가, 겨울이 좋은가?")
Question.find_or_create_by(content: "산타클로스에게 받고 싶은 선물이 있다면?")
Question.find_or_create_by(content: "현재 읽고 있는 글이나 책이 있다면")
Question.find_or_create_by(content: "다음에 여행하고 싶은 곳은 어디인가?")
Question.find_or_create_by(content: "마지막으로 읽은 책은?")
Question.find_or_create_by(content: "가장 편안하게 느껴지는 장소는?")
Question.find_or_create_by(content: "일요일 오전을 행복하게 보내는 나만의 비법은?")
Question.find_or_create_by(content: "일요일 오전을 행복하게 보내는 나만의 비법은?")
Question.find_or_create_by(content: "오늘 읽은 가장 인상적인 글귀는?")
Question.find_or_create_by(content: "가장 좋아하는 단어가 있다면?")
Question.find_or_create_by(content: "내 이름으로 삼행시를 지어보자.")
Question.find_or_create_by(content: "나에게 주고 싶은 선물이 있다면?")
Question.find_or_create_by(content: "로또에 당첨되면 가장 먼저 하고 싶은 일은?")
Question.find_or_create_by(content: "가장 좋아하는 액세서리는?")
Question.find_or_create_by(content: "가장 자신 있게 만들 수 있는 요리는?")
Question.find_or_create_by(content: "몹시 기다려지는 일이 있는가?")
Question.find_or_create_by(content: "마지막으로 본 TV 프로그램은?")
Question.find_or_create_by(content: "마지막으로 가본 공연이나 콘서트는?")
Question.find_or_create_by(content: "(지금 이 순간) 가장 좋아하는 단어는?")
Question.find_or_create_by(content: "마지막으로 들은 노래는?")
Question.find_or_create_by(content: "___________이(가) 나를 웃게 했다.")
Question.find_or_create_by(content: "나에게 없어는 안 되는 인류의 발명품은?")
Question.find_or_create_by(content: "오늘 하루 즐거웠는가? 그 이유는?")
Question.find_or_create_by(content: "오늘 나를 가장 기쁘게 한 소식은 무엇인가?")
Question.find_or_create_by(content: "오늘 새롭게 알게 된 사실을 적어보자.")
Question.find_or_create_by(content: "오늘 해결한 문제를 한 가지만 적어보자.")
Question.find_or_create_by(content: "지금 당장 전화를 걸고 싶은 사람은?")
Question.find_or_create_by(content: "내 인생을 영화로 만든다면 주인공 역은 누구로 하고 싶은가?")
Question.find_or_create_by(content: "무슨 요일을 가장 좋아하는가? 그 이유는?")
Question.find_or_create_by(content: "나는 오늘 ___________을(를) 제거했다.")
Question.find_or_create_by(content: "오늘 나에게 동기를 부여해준 일은?")
Question.find_or_create_by(content: "내일 어디든 여행할 수 있다면 가장 가고 싶은 곳은?")
Question.find_or_create_by(content: "하루의 휴가가 주어진다면 무엇을 하고 싶은가?")
Question.find_or_create_by(content: "오늘 감사하게 생각하는 일은?")
Question.find_or_create_by(content: "금요일 밤을 보내는 나만의 가장 행복한 방법은?")
Question.find_or_create_by(content: "한 달 안에 이루고 싶은 목표가 있는가?")
Question.find_or_create_by(content: "오늘 가장 좋았던 시간은 언제인가?")
Question.find_or_create_by(content: "누군가 나를 위해 요리해준 적이 있는가?")
Question.find_or_create_by(content: "가장 최근에 받은 손편지는 누구에게서 온 것인가?")
Question.find_or_create_by(content: "최근에 가장 많이 웃었던 적은?")
Question.find_or_create_by(content: "나를 감성에 젖게 만드는 것은?")
Question.find_or_create_by(content: "오늘 상처받은 일이 있는가?")
Question.find_or_create_by(content: "좋은 아이디어를 떠올려야 할 때 찾는 곳은?")
Question.find_or_create_by(content: "무작정 다가가 말을 걸고 싶은 사람이 있는가?")
Question.find_or_create_by(content: "나를 한 단어로 표현한다면?")
Question.find_or_create_by(content: "토요일 오전을 보내는 나만의 가장 행복한 방법은?")
Question.find_or_create_by(content: "내 몸 중에서 가장 마음에 드는 곳은?")
Question.find_or_create_by(content: "5년 동안 교도소에 갇히게 된다면 입소 전날 무엇을 하고 싶은가?")
Question.find_or_create_by(content: "앞으로 일어날 일을 상상할 때 최선의 경우를 떠올리는 편인가, 최악의 경우를 떠올리는 편인가?")
Question.find_or_create_by(content: "당장 기분을 좋게 하는 비법이 있는가?")
Question.find_or_create_by(content: "초등학교 2학년생에게 해주고 싶은 조언은?")
Question.find_or_create_by(content: "최근에 들은 충격적인 소식은?")
Question.find_or_create_by(content: "논리보다 직감에 의존하는 편인가?")
Question.find_or_create_by(content: "사람들의 무리한 부탁을 잘 거절하는 편인가?")
Question.find_or_create_by(content: "좋은 소식과 나쁜 소식 중에 무엇을 먼저 듣고 싶은가?")
Question.find_or_create_by(content: "나만의 기분 전환 방법은?")
Question.find_or_create_by(content: "광적으로 좋아하는 분야가 있다면?")
Question.find_or_create_by(content: "나의 가장 큰 꿈은 무엇인가?")
Question.find_or_create_by(content: "나나는 새로운 ___________을(를) 원한다.")
Question.find_or_create_by(content: "오늘 하루를 한 단어로 표현한다면?")
Question.find_or_create_by(content: "현존하는 유명인 중에서 술 한잔하고 싶은 사람은?")
Question.find_or_create_by(content: "내가 믿고 의지하는 사람은?")
Question.find_or_create_by(content: "최근에 한 말실수가 있다면?")
Question.find_or_create_by(content: "누군가의 행동을 더 이상 참기 어려울 때 사실대로 말할 수 있는가?")
Question.find_or_create_by(content: "첫눈이 내리면 가장 먼저 하고 싶은 일은?")
Question.find_or_create_by(content: "앞으로도 쭉 변하지 않았으면 하는 것은?")
Question.find_or_create_by(content: "가장 듣기 좋은 칭찬은?")
Question.find_or_create_by(content: "나를 잘 나타내주는 노래는?")
Question.find_or_create_by(content: "나는 내년에 어떤 모습일까?")
Question.find_or_create_by(content: "오늘 나를 놀라게 한 것은?")
Question.find_or_create_by(content: "올초에 계획한 일 중에서 이루지 못한 것이 있다면?")
Question.find_or_create_by(content: "몇 살까지 살고 싶은가?")
Question.find_or_create_by(content: "집 안에서 뒹굴거리기 vs. 밖에 나가서 놀기?")
Question.find_or_create_by(content: "내 삶에서 가장 결별하고 싶은 것은?")
Question.find_or_create_by(content: "사람들에게 가장 즐겨하는 질문은 무엇인가?")
Question.find_or_create_by(content: "절대로 버릴 수 없는 물건을 하나만 적어보자.")
Question.find_or_create_by(content: "하루에 한 시간이 늘어난다면 뭘 할까?")
Question.find_or_create_by(content: "마지막으로 절정의 행복을 느꼈을 때는 언제인가?")
Question.find_or_create_by(content: "오늘을 색깔로 표현해보자.")
Question.find_or_create_by(content: "오늘 하루와 어울리는 시와 노래 구절을 적어보자.")
Question.find_or_create_by(content: "죽기 전에 꼭 하고 싶은 일이 있다면?")
Question.find_or_create_by(content: "(노력 없이) 한 가지 재능을 얻을 수 있다면 무엇을 고르겠는가?")
Question.find_or_create_by(content: "오늘 하루를 세 단어로 표현한다면?")
Question.find_or_create_by(content: "하루 동안 초능력을 가질 수 있다면 어떤 것을 원하는가?")
Question.find_or_create_by(content: "닮고 싶은 문학작품 속 주인공은?")
Question.find_or_create_by(content: "나의 가장 큰 장점은?")
Question.find_or_create_by(content: "나를 이루고 있는 특징 세 가지를 적어보자.")
Question.find_or_create_by(content: "내가 생각하는 꿈의 직장은?")
Question.find_or_create_by(content: "지금 기분을 다섯 글자로 표현한다면?")
Question.find_or_create_by(content: "내가 생각하는 환상적인 휴가는?")
Question.find_or_create_by(content: "올해 가장 기억에 남는 일은?")
Question.find_or_create_by(content: "나는 운이 좋은 편이라고 생각하는가?")
Question.find_or_create_by(content: "내 인생을 바꿀 만한 영감을 준 사람이 있다면?")
Question.find_or_create_by(content: "휴식이 필요하다고 느끼는가? 무엇으로부터?")
Question.find_or_create_by(content: "집이란 무엇이라고 생각하는가?")
Question.find_or_create_by(content: "상처받은 마음을 치유하는 나만의 방법을 적어보자")
Question.find_or_create_by(content: "오늘 지나치게 많이 사용한 말은?")
Question.find_or_create_by(content: "오늘 가장 두드러진 감정은 무엇인가?")
Question.find_or_create_by(content: "오늘 ___________이(가) 지나치게 많았다.")
Question.find_or_create_by(content: "어머니에게 하고 싶은 질문은?")
Question.find_or_create_by(content: "아무에게도 하고 싶지 않은 이야기가 있는가?")
Question.find_or_create_by(content: "나는 왜 일하는가?")
Question.find_or_create_by(content: "오늘 떠올린 생각 중에 가장 엉뚱한 것은?")
Question.find_or_create_by(content: "오늘 하루 중 기억에 남기고 싶은 것은?")
Question.find_or_create_by(content: "남모르게 간직한 열정이 있다면?")
Question.find_or_create_by(content: "비밀을 털어놓을 수 있는 사람을 한 명만 꼽는다면?")
Question.find_or_create_by(content: "나의 가장 큰 단점은 무엇인가?")
Question.find_or_create_by(content: "세상을 떠난 유명인 중에서 저녁식사를 함께하고 싶은 사람은?")
Question.find_or_create_by(content: "딱 하루만 인생을 바꿀 수 있다면 누구와 바꾸겠는가?")
Question.find_or_create_by(content: "좋은 적이란 과연 존재할까?")
Question.find_or_create_by(content: "지금까지 이룬 것 중 성취감이 가장 컸던 일은?")
Question.find_or_create_by(content: "타임머신을 타고 과거로 돌아가 꼭 바꾸고 싶은 일이 있다면?")
Question.find_or_create_by(content: "주변인의 죽음 중 가장 슬펐던 사람은?")
Question.find_or_create_by(content: "직감을 믿는 편인가?")
Question.find_or_create_by(content: "지금 이 순간 가장 그리운 사람은?")
Question.find_or_create_by(content: "나를 냉소적으로 만드는 것은?")
Question.find_or_create_by(content: "날씨 예보처럼 기분을 예측한다면 앞으로 내 기분은 ___________다.")
Question.find_or_create_by(content: "딱 하루만 원하는 직업으로 살 수 있다면 무엇을 선택하겠는가?")
Question.find_or_create_by(content: "___________은(는) 완벽하다.")
Question.find_or_create_by(content: "내가 버려야 할 것은 무엇인가?")
Question.find_or_create_by(content: "나는 돈을 충분히 버는가?")
Question.find_or_create_by(content: "가장 답하기 좋아하는 질문은 무엇인가?")
Question.find_or_create_by(content: "오늘 하루를 140자 내외로 표현해보자.")
Question.find_or_create_by(content: "현재 삶에서 가장 만족스러운 부분은?")
Question.find_or_create_by(content: "나는 가르치는 사람인가, 배우는 사람인가?")
Question.find_or_create_by(content: "나는 5년 후에 어떤 모습일까?")
Question.find_or_create_by(content: "오늘 배운 것은 ___________다.")
Question.find_or_create_by(content: "두려움 하면 떠오르는 것은?")
Question.find_or_create_by(content: "지금 이 순간 무엇을 좇고 있는가?")
Question.find_or_create_by(content: "사소하지만 고질적인 문제를 하나 적어보자.")
Question.find_or_create_by(content: "나는 ___________에 인내심이 없다.")
Question.find_or_create_by(content: "___________은(는) 정말 말도 안 된다.")
Question.find_or_create_by(content: "오늘 거의 ___________할 뻔했다.")
Question.find_or_create_by(content: "나의 마지막이 어떨지 알고 싶은가?")
Question.find_or_create_by(content: "재산이 얼마나 있으면 행복할까?.")
Question.find_or_create_by(content: "내가 대단한 이유는?")
Question.find_or_create_by(content: "거부할 수 없는 것은?")
Question.find_or_create_by(content: "새로운 곳으로 이사한다면 어느 도시로 가고 싶은가?")
Question.find_or_create_by(content: "내가 생각하는 가장 평화로운 장면은?")
Question.find_or_create_by(content: "무엇이 나를 나답게 만드는가?")
Question.find_or_create_by(content: "친구란 ___________다.")
Question.find_or_create_by(content: "가장 위대하다고 생각하는 직업은?")
Question.find_or_create_by(content: "만 원을 가장 알차게 쓸 수 있는 방법은 무엇일까?")
Question.find_or_create_by(content: "인터뷰하고 싶은 유명인사는?")
Question.find_or_create_by(content: "좋은 친구란 무엇일까?")
Question.find_or_create_by(content: "자서전을 쓴다면 첫 문장을 어떻게 쓰고 싶은가?")
Question.find_or_create_by(content: "소원 세 가지는?")
Question.find_or_create_by(content: "내 삶의 목적은 무엇인가")
Question.find_or_create_by(content: "사람은 변할 수 있는가")
Question.find_or_create_by(content: "평생 한 사람만 사랑하면서 살 수 있다고 생각하는가?")
Question.find_or_create_by(content: "궁극적으로 어떤 사람이 되고 싶은가?")
Question.find_or_create_by(content: "현재 나의 꿈을 가로막는 가장 큰 장애물은 무엇인가?")
Question.find_or_create_by(content: "이성을 만날 때 가장 중요하게 생각하는 조건은?")
Question.find_or_create_by(content: "나를 불행하게 만드는 것은?")
Question.find_or_create_by(content: "내가 잃을 수밖에 없는 것은?")
Question.find_or_create_by(content: "완벽한 하루를 위해서는 무엇이 필요한가?")
Question.find_or_create_by(content: "내 묘비에 남기고 싶은 말은?")
Question.find_or_create_by(content: "내 묘비에 남기고 싶은 말은?", author_id: 6)

# FriendRequest.find_or_create_by(requester_id: 1, requestee_id: 2)
# FriendRequest.find_or_create_by(requester_id: 1, requestee_id: 3)
# FriendRequest.find_or_create_by(requester_id: 2, requestee_id: 4)

Friendship.find_or_create_by(user_id: 1, friend_id: 2)
Friendship.find_or_create_by(user_id: 1, friend_id: 3)
Friendship.find_or_create_by(user_id: 1, friend_id: 4)
Friendship.find_or_create_by(user_id: 1, friend_id: 5)
Friendship.find_or_create_by(user_id: 2, friend_id: 3)
Friendship.find_or_create_by(user_id: 2, friend_id: 4)
Friendship.find_or_create_by(user_id: 2, friend_id: 5)
Friendship.find_or_create_by(user_id: 3, friend_id: 4)
Friendship.find_or_create_by(user_id: 3, friend_id: 5)
Friendship.find_or_create_by(user_id: 4, friend_id: 5)

Assignment.find_or_create_by(question_id: 2, assigner_id: 1, assignee_id: 4)
Assignment.find_or_create_by(question_id: 2, assigner_id: 2, assignee_id: 4)
Assignment.find_or_create_by(question_id: 2, assigner_id: 1, assignee_id: 2)
Assignment.find_or_create_by(question_id: 1, assigner_id: 2, assignee_id: 3)

Answer.find_or_create_by(author_id: 5, question_id: 1, content: "내가 제일 못하는거!!!!!!!!!!!!!!!!\n
항상 뭐 시작하는건 되게 잘하는데 꾸준한게 없어서 끝을 마무리를 잘 못 짓는다.\n
그래서 요즘은 어떤 일을 시작할지 말지 결정할 때 내가 과연 이걸 끝까지 할 수 있을지 시뮬레이션을 상상속으로 해본다. 그래서 요즘은 시작한 일이 없다!ㅋ
") # assiger인 2번 유저에게 노티 보내져야함.
Answer.find_or_create_by(author_id: 2, question_id: 1, content: "내 하루의 마무리는 침대 옆의 켜져있던 장스탠드를 끄는 일이다.\n
잠들기 직전 장스탠드를 켜 놓으면 노란빛이 마음을 편하게 해주어서 잠이 잘오기 때문이다.\n
무엇보다 불을 끄러 일어나지 않아도 돼서 좋다.")
Answer.find_or_create_by(author_id: 1, question_id: 2, content: "존~~~~~~~~~~~~~~~~~~~~~~~~~~~~~나 좋은 스피커를 사서 개좋은 음질의 음악을 엄청 고요한 방에서 혼자 빵빵하게 틀어놓고 조용히 누워서 듣고 싶다. 개행복할듯.")
Answer.find_or_create_by(author_id: 4, question_id: 2, content: "높은 곳에서 뛰어내리기, 맨몸으로 날기") # assigner인 1번과 2번 유저에게 노티 보내져야함.
Answer.find_or_create_by(author_id: 3, question_id: 3, content: "중학교 때는 빨리 할머니가 되고싶었다. 빨리 현명한 할머니가 돼서 흰 머리를 휘날리며 “음.. 그래 그땐 내가 그랬었지... 참 어리석었군.. 허허”하면서 지난 날을 돌아보고 싶었다. 눈앞에 놓인 것들을 헤쳐나갈 자신이 없었던 것 같다. 역시 나는 도망치려고 태어났나보다. 대학생 이후로 나이를 먹는 건 항상 싫은 일이라고만 생각했다. 근데 돌아보면 나는 새내기 때보다 지금이 훨씬 좋다. 몰랐던 것들을 알게 되고, 나와 더 친해져서 좋다. 그렇게 생각하면 30대, 40대, 할머니가 되는 것도 그렇게 두려운 일은 아니지 않을까? 그 때는 또 그 때만의 재미와 새로움이 있겠지!! 
")
Answer.find_or_create_by(author_id: 4, question_id: 3, content: "젊은 건 아니고 어린데\n내 나이를 생각하기 싫다
\n도대체 20살인지 21살인지 22살인지\n
저번 생일 때는 내 생일 케이크에 초를 꽂지 말자고 하려다가 말았다
") 
Answer.find_or_create_by(author_id: 2, question_id: 4, content: "눈썹타투를 하는 시간. 요즘 눈썹 타투의 편리함에 빠져서 4일에 한 번 꼴로 눈썹을 그리고 잔다.
앞머리가 있지만 눈썹은 포기 하기 힘들다.
")
Answer.find_or_create_by(author_id: 2, question_id: 5, content: "어렸을 땐 발이 바닥에 닫는 깊이를 좋아했는데, 지금은 발이 닫지 않고 폭 잠기는 깊이가 좋다.
그래도 전혀 가늠할 수 없는 깊이는 좀 무섭다.
")
Answer.find_or_create_by(author_id: 3, question_id: 7, content: "
작년 이맘때는 열심히 유럽 여행 중이었지! 나는 매번 새로운 일을 하고 새로운 사람을 만나면 많이 배우는 편이니까 그 때의 나와 지금의 나는 많이 다르겠지! 그 중에 가장 많이 바뀐 건 역시 채식과 페미니즘에 눈을 뜬 것 그리고 외모강박을 이해하고 나를 용서할 수 있게 된 것일 게다! 내가 믿는 가치의 형체를 좀 더 정확히 보고 알 수 있게 된 느낌이라 너무 좋다.
")
Answer.find_or_create_by(author_id: 4, question_id: 7, content: "올해 처음으로 나의 과거가 나와 분리되는 것을 느꼈다. 유치원 때의 나는 더 이상 내가 아니다. 예전엔 그것도 나였는데. 과거의 나를 이해할 수 없게 되었다. 그 때의 나는 내가 아닌가? 끔찍
")
Answer.find_or_create_by(author_id: 3, question_id: 8, content: "과분하기 전에 피했다.")
Answer.find_or_create_by(author_id: 5, question_id: 10, content: "충분히 쉬고 시작할 수 있어서 좋다. 이번 학기 불태울 다짐이 되어있다!!!!!
그런데 우선 학기 초에 교수님께 초안지 받아달라고 존버해야된다. 4학년의 라이프가 이렇게 힘들지 몰랐다ㅠ")
Answer.find_or_create_by(author_id: 2, question_id: 10, content: "만족스러웠다. 첫날 강의들의 교수님이 다들 열정적이시고 좋은 분 같았다. 로드가 많을까 걱정이 되긴 하지만 많이 배울 수 있는 학기가 될 수 있을 것 같다.
또, 프리즘이 개강 후 처음으로 모여서 편안한 시간을 보낸게 만족스러웠다.")
Answer.find_or_create_by(author_id: 1, question_id: 11, content: "저절로, 습관대로 행동하고 생각하고 말하게 되는 순간이 무섭다. 나는 나를 믿지 못한다.")
Answer.find_or_create_by(author_id: 5, question_id: 11, content: "세상에 저절로 되는 일은 없다. \n뻔한 말이지만 기회는 준비된 사람한테만 오는거다. \n저절로 되기만을 바라고 그냥 기다리는건 양아치다.
")
Answer.find_or_create_by(author_id: 6, question_id: 1, content: "마무으리!")
Answer.find_or_create_by(author_id: 7, question_id: 1, content: "마무리 마유리")
Answer.find_or_create_by(author_id: 6, question_id: 2, content: "뿡")
Answer.find_or_create_by(author_id: 7, question_id: 2, content: "꺅")
Answer.find_or_create_by(author_id: 6, question_id: 3, content: "스물다섯쨜")
Answer.find_or_create_by(author_id: 7, question_id: 3, content: "존나 많아")
Answer.find_or_create_by(author_id: 6, question_id: 4, content: "zinzi")
Answer.find_or_create_by(author_id: 7, question_id: 4, content: "진지잡수세여")


# Highlight 모델을 어떻게?
Highlight.find_or_create_by(user_id: 2, answer_id: 3, content: "좋은 스피커를 사서")
Highlight.find_or_create_by(user_id: 2, answer_id: 1, content: "시작하는건 되게 잘하는데 꾸준한게 없어서")
Highlight.find_or_create_by(user_id: 3, answer_id: 6, content: "초를 꽂지 말자고")
Highlight.find_or_create_by(user_id: 1, answer_id: 4, content: "높은 곳에서")
Highlight.find_or_create_by(user_id: 3, answer_id: 14, content: "저절로, 습관대로 행동하고 생각하고 말하게 되는 순간이 무섭다.")
Highlight.find_or_create_by(user_id: 3, answer_id: 12, content: "충분히 쉬고 시작할 수 있어서 좋다.")
Highlight.find_or_create_by(user_id: 3, answer_id: 15, content: "세상에 저절로 되는 일은 없다.")

Comment.find_or_create_by(author_id: 2, recipient_id: 2, answer_id: 1, content: "oh really?")
Comment.find_or_create_by(author_id: 3, recipient_id: 3, answer_id: 3, content: "awesome!")
Comment.find_or_create_by(author_id: 3, recipient_id: 3, answer_id: 4, content: "same.")
Comment.find_or_create_by(author_id: 4, recipient_id: 4, answer_id: 5, content: "be a butterfly")
Comment.find_or_create_by(author_id: 1, recipient_id: 1, answer_id: 1, content: "그랬구나~")
Comment.find_or_create_by(author_id: 2, recipient_id: 2, answer_id: 5, content: "그런 일이 있었다니 몰랐네.")
Comment.find_or_create_by(author_id: 3, recipient_id: 3, answer_id: 16, content: "아하~")
Comment.find_or_create_by(author_id: 7, recipient_id: 7, answer_id: 16, content: "오~")
Comment.find_or_create_by(author_id: 3, recipient_id: 3, answer_id: 22, content: "아하~")
Comment.find_or_create_by(author_id: 7, recipient_id: 7, answer_id: 22, content: "오~")
Comment.find_or_create_by(author_id: 3, recipient_id: 3, answer_id: 17, content: "아하~")
Comment.find_or_create_by(author_id: 6, recipient_id: 6, answer_id: 17, content: "오~")
Comment.find_or_create_by(author_id: 3, recipient_id: 3, answer_id: 23, content: "아하~")
Comment.find_or_create_by(author_id: 6, recipient_id: 6, answer_id: 23, content: "오~")

Tmi.find_or_create_by(author_id: 1, content: "I want bingsu.")
Tmi.find_or_create_by(author_id: 1, content: "writing TMIs")
Tmi.find_or_create_by(author_id: 1, content: "no shit yet today")
Tmi.find_or_create_by(author_id: 2, content: "I love soccer")
Tmi.find_or_create_by(author_id: 2, content: "I have an iPad.")
Tmi.find_or_create_by(author_id: 3, content: "I want to get a Macbook Pro.")
Tmi.find_or_create_by(author_id: 3, content: "Bangna came visit me yesterday")
Tmi.find_or_create_by(author_id: 3, content: "two lovely chihuahuas")
Tmi.find_or_create_by(author_id: 3, content: "salmon sushi ftw")
Tmi.find_or_create_by(author_id: 4, content: "406 sucks")

Star.find_or_create_by(user_id: 1, target: Question.find(1))
Star.find_or_create_by(user_id: 1, target: Question.find(2))
Star.find_or_create_by(user_id: 1, target: Answer.find(1))
Star.find_or_create_by(user_id: 3, target: Question.find(1))
Star.find_or_create_by(user_id: 3, target: Answer.find(3))

Question.first.tag_string = "닐리리야\n에헤라\n디야\n태그"
Question.first.save
Question.first.tags << Tag.create(author_id: 1, content: "닐리리야", target: Question.first)
Question.first.tags << Tag.create(author_id: 1, content: "에헤라", target: Question.first)
Question.first.tags << Tag.create(author_id: 1, content: "디야", target: Question.first)
Question.first.tags << Tag.create(author_id: 1, content: "태그", target: Question.first)

Question.last.tag_string = "뿌잉\n삉삉\n뀨\n뀨뀨꺄꺆ㄲ\n태그"
Question.last.save
Question.last.tags << Tag.create(author_id: 6, content: "뿌잉", target: Question.last)
Question.last.tags << Tag.create(author_id: 6, content: "삉삉", target: Question.last)
Question.last.tags << Tag.create(author_id: 6, content: "뀨", target: Question.last)
Question.last.tags << Tag.create(author_id: 6, content: "뀨뀨꺄꺆ㄲ", target: Question.last)
Question.last.tags << Tag.create(author_id: 6, content: "태그", target: Question.last)

a = Answer.find(1)
a.tag_string = "삽질왕 김삽질\n삽질왕 이삽질\n삽질왕 구삽질\n태그"
a.save
Answer.find(1).tags << Tag.create(author_id: 6, content: "삽질왕 김삽질", target: Answer.find(1))
Answer.find(1).tags << Tag.create(author_id: 6, content: "삽질왕 이삽질", target: Answer.find(1))
Answer.find(1).tags << Tag.create(author_id: 6, content: "삽질왕 구삽질", target: Answer.find(1))
Answer.find(1).tags << Tag.create(author_id: 6, content: "태그", target: Answer.find(1))

a = Answer.find(22)
a.tag_string = "나는 태그다\n너는 태그냐\n와썹맨"
a.save
Answer.find(22).tags << Tag.create(author_id: 6, content: "나는 태그다", target: Answer.find(22))
Answer.find(22).tags << Tag.create(author_id: 6, content: "너는 태그냐", target: Answer.find(22))
Answer.find(22).tags << Tag.create(author_id: 6, content: "와썹맨", target: Answer.find(22))