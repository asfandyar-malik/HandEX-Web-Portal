module SummaryForUserHelper
  def check_missing(answer, error_message=nil)
    if answer == nil || answer.empty?
      content_tag(:div, class: "text-red") do
        error_message || '...'
      end
    else
      content_tag(:div, class: "text-babu") do
        answer
      end
    end
  end
end
