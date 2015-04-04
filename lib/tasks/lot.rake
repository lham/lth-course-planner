require 'net/http'

namespace :lot do
  TRIM_SPACE = /^[[:space:]]*(.*?)[[:space:]]*$/
  FIRST_NUM = /(\d+).*/
  HOUR = /(\d+) h/
  NA = 'Comments have not been submitted before the deadline.'

  desc 'Parse CEQ reports'
  task :ceq => :environment do
    #body = Net::HTTP.get(URI.parse('http://www.ceq.lth.se/rapporter/1970_VT/LP1/XXX000_1970_VT_LP1_slutrapport_en.html'))
    body = File.open('test/web/ceq.html', 'rb', encoding: 'windows-1252')
    doc = Oga.parse_html(body)

    ceq = CeqReport.new

    doc.css('body > *:nth-last-child(-n+8)').each_with_index do |comment, tag_index|
      next unless [1, 3, 5].include? tag_index
      
      comment = comment.text.encode('utf-8')[TRIM_SPACE, 1]
      comment = comment == NA ? nil : comment

      case tag_index
      when 1
        ceq.comments_by_students            = comment
      when 3
        ceq.comments_by_course_leader       = comment
      when 5
        ceq.comments_by_programme_director  = comment
      end
    end
    
    doc.css('td table tbody').each_with_index do |table, table_index|
      next unless [0, 2, 3, 4, 6, 8].include? table_index
      
      table.css('tr').each do |tr|
        title  = tr.children[0].text[TRIM_SPACE, 1]
        value1 = tr.children[1].text[TRIM_SPACE, 1] if tr.children[1].present?
        value2 = tr.children[2].text[TRIM_SPACE, 1] if tr.children[2].present?
        
        case title
        # Table 0
        when 'Registrated students'
          ceq.registered_students   = value1
        when 'Number and share of passed students'
          ceq.passed_students       = value1[FIRST_NUM, 1]
        when 'Number answers and response rate'
          ceq.answers_all           = value1[FIRST_NUM, 1]
        when 'Number answers from males'
          ceq.answers_male          = value1
        when 'Number answers from females'
          ceq.answers_female        = value1

        # Table 2
        when 'Lectures'
          ceq.hours_lectures        = value1[HOUR, 1]
        when 'Group work'
          ceq.hours_group           = value1[HOUR, 1]
        when 'Laboratories'
          ceq.hours_labs            = value1[HOUR, 1]
        when 'Time with supervisor'
          ceq.hours_supervisor      = value1[HOUR, 1]
        when 'Self study time'
          ceq.hours_self_study      = value1[HOUR, 1]
        
        # Table 3
        when '0-30 %'
          ceq.lecture_presence_30   = value1
        when '30-70 %'
          ceq.lecture_presence_70   = value1
        when '70-100 %'
          ceq.lecture_presence_100  = value1

        # Table 4
        when 'Good Teaching'
          ceq.good_teaching_score   = value1
          ceq.good_teaching_sd      = value2
        when 'Clear Goals and Standards'
          ceq.clear_goals_score     = value1
          ceq.clear_goals_sd        = value2
        when 'Appropriate Assessment'
          ceq.assessment_score      = value1
          ceq.assessment_sd         = value2
        when 'Appropriate Workload'
          ceq.workload_score        = value1
          ceq.workload_sd           = value2
        when 'The course seems important for my education'
          ceq.important_score       = value1
          ceq.important_sd          = value2
        when 'Overall, I am satisfied with this course'
          ceq.satisfied_score       = value1
          ceq.satisfied_sd          = value2
        end

      end

    end
    
    ceq.save!

  end

end
