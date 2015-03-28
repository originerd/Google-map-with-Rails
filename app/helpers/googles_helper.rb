module GooglesHelper

  def to_table_tag(google)
    result = "<h2>#{google.latlng}</h2><table class=\"table table-striped\"><tbody><tr><th>채널(고정값)</th><th>대역폭(고정값)</th><th>측정결과</th></tr>"

    lines = google.content.split("\n")
    lines.each do |line|
      result += "<tr>"
      line.split.each { |word| result += "<td>#{word}</td>" }
      result += "</tr>"
    end

    result += "</tbody></table>"

    result
  end
end
