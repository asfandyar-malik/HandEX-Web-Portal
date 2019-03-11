module SummaryForUserHelper
  def check_missing(answer)
    if answer == nil || answer.empty?
      content_tag(:div, class: "text-red") do
        "..."
      end
    else
      content_tag(:div, class: "text-babu") do
        answer
      end
    end
  end
end
