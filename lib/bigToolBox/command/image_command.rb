require 'bigToolBox/util/image/name_analyze_util'
require 'bigToolBox/util/image/diff_analyze_util'
require 'bigToolBox/util/image/file_scan_util'
require 'bigToolBox/model/file_type'

module BigToolBox

  def self.image_resource_command
    desc "Detect image resource"
      command :image do | c |
        c.desc "Detect duplicate name image resources."
        c.command :name do | name |
          name.action do | global_options, options, args |
            path = File.expand_path(global_options[:path])
            ImageAnalyzeUtil.get_duplicate_name_file_with_type(path, PNG)
          end
        end

        c.desc "Detect duplicate content image resources."
        c.command :content do | content |
          content.action do | global_options, options, args |
            path = File.expand_path(global_options[:path])
            ImageAnalyzeUtil.get_duplicate_content_file_with_type(path, PNG)
          end
        end

    end
  end
end
