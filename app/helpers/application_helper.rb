module ApplicationHelper
    
    def admin_types
       ['AdminUser'] 
    end
    
    def active?(path)
       "active" if current_page?(path) 
    end
    
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
        when 'pending'
            return content_tag(:span, status.titleize, class: 'label label-primary')
        when 'confirmed'
            return content_tag(:span, status.titleize, class: 'label label-success')    
        end
    end
end
