module PostsHelper
    def status_label status
        status_span_generator status
    end
    
    private
    
    def status_span_generator status
        case status
        when 'submitted'
            return content_tag(:span, status.titleize, class: 'label label-primary')
        when 'approved'
            return content_tag(:span, status.titleize, class: 'label label-success')          
        when 'rejected'
            return content_tag(:span, status.titleize, class: 'label label-danger')
        end
    end
end
