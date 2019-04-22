module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def questions_count(question)
    if question.present?
      question.count
    else
      0
    end
  end

  def declination(number, krokodil, krokodila, krokodilov)
      if number == nil || !number.is_a?(Numeric)
        number = 0
      end

      big_number = number % 100
      if big_number >= 11 && big_number <= 14
        return krokodilov
      end
      ostatok = number % 10
      if ostatok == 1
        return krokodil
      end
      if ostatok >= 2 && ostatok <= 4
        return krokodila
      end
      if (ostatok >= 5 && ostatok <= 9) || ostatok == 0
        krokodilov
      end
  end
end
