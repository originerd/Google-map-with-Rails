module GooglesHelper

  def to_table_tag(content)
    result = "<table class="table table-striped"><tbody><tr><td>채널(고정값)</td><td>대역폭(고정값)</td><td>측정결과</td></tr>"

    lines = content.split("\n")
    lines.each do |line|
      result += "<tr>"
      line.split.each { |word| result += "<td>#{word}</td>" }
      result += "</tr>"
    end

    result += "</tbody></table>"

    result
  end
end
