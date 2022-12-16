require 'watir'
require 'watir-webdriver'
require 'twitter'

class OprateSnsController < ApplicationController
    
    ###########
    #Amazon操作
    ###########
    
    # amazonにログイン
    def amazon_Login(browser)
        # amazonのログイン画面に行く
        # browser.goto('https://www.amazon.co.jp/')
        browser.goto('https://www.amazon.co.jp/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.co.jp%2F%3Fref_%3Dnav_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=jpflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&')

        # メールアドレスを入力する
        browser.text_field(:id => 'ap_email').set('')
        sleep 1
        # 「次へ」を押す
        browser.element(:id => "continue").click
        browser.wait
        # パスワードを入力する
        browser.text_field(:id => 'ap_password').set('')
        sleep 1
        # 「次へ」を押す
        browser.element(:id => "signInSubmit").click
        browser.wait
    end

    # amazonにログイン試作1
    def amazon_Login_P1(browser)
        # amazonのログイン画面に行く
        # browser.goto('https://www.amazon.co.jp/')
        browser.goto('https://www.amazon.co.jp/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.co.jp%2F%3Fref_%3Dnav_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=jpflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&')

        # メールアドレスを入力する
        browser.text_field(:id => 'ap_email').set('bot@')
        sleep 1
        browser.text_field(:id => 'ap_email').set('@')
        sleep 1
        browser.text_field(:id => 'ap_email').set('')
        sleep 1
        # 「次へ」を押す
        browser.element(:id => "continue").click
        browser.wait
        # パスワードを入力する
        browser.text_field(:id => 'ap_password').set('AAAA')
        sleep 1
        browser.text_field(:id => 'ap_password').set('')
        sleep 1
        # 「次へ」を押す
        browser.element(:id => "signInSubmit").click
        browser.wait
    end

    # amazonにログイン試作2
    def amazon_Login_P2(browser)
        # amazonのログイン画面に行く
        # browser.goto('https://www.amazon.co.jp/')
        browser.goto('https://www.amazon.co.jp/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.co.jp%2F%3Fref_%3Dnav_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=jpflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&')

        # メールアドレスを入力する
        browser.text_field(:id => 'ap_email').send_keys('')
        sleep 1
        browser.text_field(:id => 'ap_email').send_keys('')
        # 「次へ」を押す
        browser.element(:id => "continue").click
        browser.wait
        # パスワードを入力する
        browser.text_field(:id => 'ap_password').send_keys('')
        sleep 1
        browser.text_field(:id => 'ap_password').send_keys('')
        # 「次へ」を押す
        browser.element(:id => "signInSubmit").click
        browser.wait
    end

    # amazonにログイン試作3
    def amazon_Login_P3(browser)
        # amazonのログイン画面に行く
        # browser.goto('https://www.amazon.co.jp/')
        browser.goto('https://www.amazon.co.jp/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.co.jp%2F%3Fref_%3Dnav_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=jpflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&')

        # メールアドレスを入力する
        browser.text_field(:id => 'ap_email').send_keys('')
        sleep 1
        browser.text_field(:id => 'ap_email').send_keys('@')
        sleep 1
        browser.text_field(:id => 'ap_email').send_keys('')
        # 「次へ」を押す
        browser.element(:id => "continue").click
        browser.wait
        # パスワードを入力する
        browser.text_field(:id => 'ap_password').send_keys('')
        sleep 1
        browser.text_field(:id => 'ap_password').send_keys('')
        sleep 1
        browser.text_field(:id => 'ap_password').send_keys('')
        # 「次へ」を押す
        browser.element(:id => "signInSubmit").click
        browser.wait
    end
        
    # amazon検索
    def amazon_search(browser, message)
        # 検索boxに検索ワードを入力
        browser.text_field(:id => 'twotabsearchtextbox').set(message)
        # 検索ボタンを押す
        browser.element(:id => 'nav-search-submit-button').click
    end

    ##########
    #pixiv操作
    ##########

    # pixivにログイン
    def pixiv_Login(browser)
        # pixivにアクセス
        # https://accounts.pixiv.net/login?return_to=https%3A%2F%2Fwww.pixiv.net%2F&lang=ja&source=pc&view_type=pageにアクセスする
        browser.goto('https://accounts.pixiv.net/login?return_to=https%3A%2F%2Fwww.pixiv.net%2F&lang=ja&source=pc&view_type=page')
        # idを入力
        browser.text_field(:xpath => '//*[@id="LoginComponent"]/form/div[1]/div[1]/input').set('')
        # passwordを入力
        browser.text_field(:xpath => '//*[@id="LoginComponent"]/form/div[1]/div[2]/input').set('')
        # ログインボタンを押す
        browser.element(:xpath => '//*[@id="LoginComponent"]/form/button').click
        browser.wait
    end

    # pixivで画像検索
    def search_pixiv(browser)
        # 検索ワードを入力
        browser.text_field(:xpath => '//*[@id="root"]/div[2]/div[1]/div[1]/div[1]/div/div[2]/form/div/input').set('かわいい')
        # Enter
        browser.send_keys :enter
        browser.wait
    end

    ############
    #Twitter操作
    ############

    # Twitterにログイン
    def Twitter_Login(browser)
        # https://twitter.com/login?lang=jaにアクセスする
        browser.goto('https://twitter.com/login?lang=ja')
        # idを入力
        browser.text_field(:name => 'session[username_or_email]').set('@kawa_rhythm')
        # passwordを入力
        browser.text_field(:name => "session[password]").set('')
        # ログインボタンを押す
        browser.element(:xpath => '//div[@data-testid="LoginForm_Login_Button"]').click
        browser.wait
    end

    # Twitter検索
    def Twitter_search(browser, message)
        # 検索ページへ
        browser.element(:xpath => '//*[@id="react-root"]/div/div/div[2]/header/div/div/div/div[1]/div[2]/nav/a[2]/div').click
        browser.wait
        # 検索ワードを入力
        browser.text_field(:xpath => '//*[@id="react-root"]/div/div/div[2]/main/div/div/div/div/div/div[1]/div[1]/div/div/div/div/div[1]/div[2]/div/div/div/form/div[1]/div/div/label/div[2]/div/input').set(message)
        # Enter
        browser.send_keys :enter
        browser.wait
    end

    # Twitterにツイート
    def Twitter_tweet(message)
        # アクセストークンなどを設定
        client = Twitter::REST::Client.new do |config|
            config.consumer_key        = "WouAFBYDWrA0sMnde3AyzrBUB" # Twitter APIキーを設定(適宜変更)
            config.consumer_secret     = "mYE3TZGXH2fxw3AwxqgT1gemi0kkjZUcVfiXmVaiMgxvrzV1sz" # Twitter APIキーを設定(適宜変更)
            config.access_token        = "1433322653427716101-ZdUA26LrZ1B8xsBVQMwyxxChHvkj7K" # Twitter APIアクセストークンを設定(適宜変更)
            config.access_token_secret = "OaPBlahdFKE44QXEcm3ayvrc1rfQymTohslnI3PCl1HMj" # Twitter APIアクセストークンを設定(適宜変更)
        end
        # ツイート
        client.update(message)      
    end

    ############
    #Youtube操作
    ############

    # ようつべにログイン
    def youtube_Login(browser)
        # ようつべにアクセス
        browser.goto('https://accounts.google.com/signin/v2/identifier?service=youtube&uilel=3&passive=true&continue=https%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26hl%3Dja%26next%3Dhttps%253A%252F%252Fwww.youtube.com%252F&hl=ja&ec=65620&flowName=GlifWebSignIn&flowEntry=ServiceLogin')
        # メールアドレスを入力
        browser.text_field(:name => 'identifier').set('')
        # 「次へ」を入力
        browser.element(:xpath => '//*[@id="identifierNext"]/div/button').click
        browser.wait
        # パスワードを入力
        browser.text_field(:name => 'password').set('')
        # 「次へ」を入力
        browser.element(:xpath => '//*[@id="passwordNext"]/div/button').click
        browser.wait
    end

    # 検索
    def youtube_search(browser, message)
        # 検索boxにワードを入力
        browser.text_field(:name => 'search_query').set(message)
        # 検索ボタンを押す
        browser.element(:xpath => '//*[@id="search-icon-legacy"]').click
        browser.wait
    end

    ###################
    #mainで動かすところ
    ###################
    def main
        # ブラウザ操作を行うための決まり文句
        # browser = Watir::.new :chrome.driver_path="/usr/bin/chromedriver"
        browser = Watir::Browser.new :chrome
        @name = '私だ'
        @title = 'SNSを合体させた'
        # メッセージを受けたったら、値を格納
        if params[:message]
            message = params[:message]
        end
        # twitter_Login
        if params[:twitter_Login] then
            @title = '成功'
            # twitterにログイン
            Twitter_Login(browser)
        # twitter_Search
        elsif params[:twitter_Search] then
            @title = '成功'
            # twitterにログイン
            Twitter_Login(browser)
            # 検索
            Twitter_search(browser, message)
        #Twitter_Tweet
        elsif params[:twitter_Tweet] then
            @title = '成功'
            Twitter_tweet(message)

        # youtube_Login
        elsif params[:youtube_Login] then
            @title = '成功'
            # youtubeにログイン
            youtube_Login(browser)
        # youtube_Search
        elsif params[:youtube_Search] then
            @title = '成功'
            # youtubeにログイン
            youtube_Login(browser)
            # 検索
            youtube_search(browser, message)

        # amazon_Login
        elsif params[:amazon_Login] then
            @title = '成功'
            # amazonにログイン
            amazon_Login_P3(browser)
        # amazon_Search
        elsif params[:amazon_Search] then
            @title = '成功'
            # amazonにログイン
            amazon_Login(browser)
            # 検索
            amazon_search(browser, message)

        # pixiv_Login
        elsif params[:pixiv_Login] then
            @title = '成功'
            # pixivにログイン
            pixiv_Login(browser)
        # pixiv_Search
        elsif params[:pixiv_Search] then
            @title = '成功'
            # pixivにログイン
            pixiv_Login(browser)
            # 検索
            pixiv_search(browser, message)
        end
    end

end
