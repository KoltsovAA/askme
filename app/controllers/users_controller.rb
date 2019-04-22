class UsersController < ApplicationController
  def index
    @users = [
        User.new(
                id: 1,
                name: 'Vadim',
                username: 'installero',
                avatar_url: 'https://secure.gravatar.com/avatar/71269686e0f757ddb4f73614f43ae445?s=100'
        ),
        User.new(
                id: 2,
                name: 'Misha',
                username: 'aristofun'
        )
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
                    name: 'Alexandr',
                    username: 'koltsovAA'
    )

    @questions = [
        Question.new(text: 'Как дела?', created_at: Date.parse('19.04.2019')),
        Question.new(text: 'Что нового?', created_at: Date.parse('19.04.2019'))
    ]

    @new_question = Question.new
  end
end
