module Scm
  module Hg
    class << self
      def revision
      	"hg id -i"
      end
      
      def checkout(url, code_path, branch)
      	"hg clone #{url} #{code_path}"
      end
      
      def update(branch)
      	"hg up"
      end
      
      def change_list(old_rev, new_rev)
      end
      
      def version(file_path)
      end

      def authors(versions)
      	"hg log -r #{versions.join(':')} | grep user| awk '{print \"format:$2\"}'"
      end
    end
  end
end
