## pretty printing
alias pp='python -mjson.tool'
alias px='xmllint --format -'
alias urld='python3 -c "import sys, urllib.parse as ul; \
        print(ul.unquote_plus(sys.argv[1]))"'

alias urle='python3 -c "import sys, urllib.parse as ul; \
        print (ul.quote_plus(sys.argv[1]))"'

alias ag="ag -i"

alias ng="ngrok http -subdomain eric"

alias epoch="date +'%s'"
