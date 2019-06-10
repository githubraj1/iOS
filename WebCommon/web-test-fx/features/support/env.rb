require 'watir'
require 'report_builder'

class Browserlaunchconfiguration
  def validate
    $browserdetail = ENV['BROWSER']
    web_url = ENV['URL']
    case ENV['BROWSER']
    when 'chrome'
      args = ["--disable-notifications"]
      $browser = Watir::Browser.new :chrome, :args => args, headless: false
      $browser.window.resize_to(1920, 1080) #Resize window function to have a generic way to resize windows to desktop mo
      $browser.goto web_url
      when 'firefox'
      args = ["--disable-notifications"]
      $browser = Watir::Browser.new :firefox , :args => args, headless: false
      $browser.goto web_url
    when 'edge'
      $browser = Watir::Browser.new :edge
      $browser.goto web_url
  end
  end
end

module BrowserActions
  class Functions
    def printurl
      puts $browser.url
    end
    def click_on_element_with_id(identifier)
      $browser.element(id: identifier).click
    end
    def enter_text_with_id(identifier,text)
      $browser.element(id: identifier).send_keys(text)
    end
    def enter_text_with_text(identifier,text)
      $browser.element(text: identifier).send_keys(text)
    end
    def enter_text_with_class(identifier,text)
      $browser.element(class: identifier).send_keys(text)
    end
    def wait_until_element_present_id(identfier)
      $browser.element(id: identfier).wait_until_present
    end
    def wait_until_element_present_text(identifier)
      $browser.element(text: identifier).wait_until_present
    end
    def click_on_element_with_text(identifier)
      $browser.element(text: identifier).click
    end
    def verify_value_with_element_id(value)
      $browser.element(id: value).visible?
    end
    def verify_element_with_id_present?(identifier)
      $browser.element(id: identifier).present?
    end
    def click_element_with_div_class(classidentifier)
      $browser.div(class: classidentifier).click
    end

    def click_element_with_span_class(classidentifier)
      $browser.span(class: classidentifier).click
    end
    def span_class_is_visible?(classidentifier)
      $browser.span(class: classidentifier).visible?
    end
    def verify_search_text(classidentifier, text)
      $browser.div(class: classidentifier).send_keys(text)
    end
    def verify_text_with_xpath(text)
      $browser.element(xpath: text).visible?
    end
    def click_element_with_xpath(text)
      $browser.element(xpath: text).click
    end
    def verify_text(textelement)
      $browser.element(text: textelement).present?
    end
    def verify_text_present(textelement)
      $browser.element(text: textelement).present?
    end
    def verify_element_with_text_visible?(identifier)
      $browser.element(text: identifier).visible?
    end
    def click_element_with_id_newtab(identifier)
      $browser.element(id: identifier).click (:command)
    end
    def click_element_with_id_newwindow(identifier)
      $browser.element(id: identifier).click (:shift)
    end
    def click_element_with_text_newtab(identifier)
      $browser.element(text: identifier).click (:command)
    end
    def click_element_with_text_newwindow(identifier)
      $browser.element(text: identifier).click (:shift)
    end
    def switch_newtab_name(identifier)
      $browser.element(text: identifier).click
    end
    def website_url_launch(identifier)
      $browser.goto(identifier)
    end
    def switch_nexttab
      $browser.window(index: 1).use
      end
    def switch_previoustab
      $browser.window(index: 0).use
    end
  end
end


module Reports
  class Reportconfigurations
    def functionalreports
      options = {
          report_path:  'WebFramework' + "_" + "#{ENV['BROWSER']}", #Provide name of the report to be. Recommended is Projectname + reports. For eg: creditone, it is creditonereports
          report_types: ['html'],
          report_title: 'WebFramework_Status', #provide the title you want to display
          include_images: true,
      }
      ReportBuilder.build_report options
    end
  end
end
