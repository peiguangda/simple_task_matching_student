module ApplicationHelper
  def get_status status
    case status
    when 3
      return "企業の承認待ち"
    when 4
      return "作業中"
    when 5
      return "完了確認"
    when 6
      return "完了確認済み"
    when 7
      return "完了非承認"
    when 8
      return "お金支払い済み"
    else
      return "?????"
    end
  end

  def get_company_task_status status
    case status
    when 0
      return "アドミにステーターの承認待ち"
    when 1
      return "承認をもらった"
    when 2
      return "非承認"
    when 3
      return "学生が依頼中"
    when 4
      return "作業中"
    when 5
      return "完了確認"
    when 6
      return "完了確認済み"
    when 7
      return "完了非承認"
    when 8
      return "お金支払い済み"
    else
      return "?????"
    end
  end
end
