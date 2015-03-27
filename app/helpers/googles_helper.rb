module GooglesHelper

  require 'cgi'

  def to_table_tag(content)
    result = '<table><tbody>'

    lines = content.split("\n")
    lines.each do |line|
      result += '<tr>'
      line.split.each { |word| result += '<td>' + word + '</td>' }
      result += '</tr>'
    end

    result += '</tbody></table>'

    CGI.unescapeHTML(result)
  end
end
