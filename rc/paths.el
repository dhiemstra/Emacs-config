;; modify load path
(add-to-list 'load-path
	     (expand-file-name "~/Emacs/include"))

(defvar shell-bin-exec-path
  '("/opt/local/bin/" 
    "/opt/local/sbin"
    "/usr/local/bin/" 
    "/usr/local/sbin/" 
    "/usr/local/mysql/bin/"
    "/bin/" 
    "/sbin/" 
    "/usr/bin/" 
    "/usr/sbin/")
  "The paths where binaries can be found")
