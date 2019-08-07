module ApplicationHelper
  def get_status status
    case status
    when 0
      return "企業の承認待ち"
    when 1
      return "作業中"
    when 2
      return "完了"
    when 3
      return "お金払いを待ち"
    when 4
      return "お金払い済み"
    else
      return "?????"
    end
  end
end
