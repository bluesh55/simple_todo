# Simple todo

[https://www.youtube.com/watch?v=o_TH-Y78tt4](https://www.youtube.com/watch?v=o_TH-Y78tt4)를 보고
만들어본 Simple Todo

## Features

1. Todo 목록 조회
2. Todo 생성
3. Todo 삭제


## Point

1. Interactor
  - Application specific business rules를 표현함(Usecase)
  - Core::CreateTodo, Core::FindTodo, Core::DestroyTodo
  - 프레임워크, 데이터베이스의 존재를 몰라야 함
2. Entity
  - Application independent business rules를 표현함(Business object)
  - Core::Entity::Todo
3. Repository 패턴
  - Repository 패턴을 적용해서 도메인 코드에서 어떤 데이터베이스가 사용될 지
    신경 쓰지 않아도 됨
  - 레일즈 어플리케이션이 실행될 때 `config/initializers/repository.rb`에서
    각각의 Entity의 Repository를 지정할 수 있음. 기본은 InMemory
3. Controller
  - 앱의 모든 기능은 인터랙터를 통해 실행하고, 컨트롤러는 유저에게 결과 페이지를 돌려주는
    말 그대로 "웹 프레임워크의 컨트롤러" 역할만 수행하게 됨
4. Model
  - ActiveRecord Adapter를 작성하여 Model과 Entity의 싱크를 맞춰줌


## 단점

1. 초반에 작성해야할 코드가 많다
2. 하나의 Entity에 대한 코드를 InMemory와 ActiveRecord에 따로 작성해야하는데,
  시간도 많이 들고 예제에서는 간단히 되었지만 실제 프로젝트에서는
  어떤 변수가 생길지 모름
3. 팀 프로젝트에 적용하려면 모든 팀원이 이를 숙지하고 있어야 함
4. 기존에 레일즈에서 사용하던 Gem들을 그대로 사용할 수 있을지는 모르겠음

## 장점

1. 단점 빼고 모두 다
