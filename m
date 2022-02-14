Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E384B594B
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 19:03:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA7F53858A3
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 13:03:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hMPjL8or";
	dkim-atps=neutral
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by mm2.emwd.com (Postfix) with ESMTPS id CB6FB385949
	for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 13:02:32 -0500 (EST)
Received: by mail-wr1-f42.google.com with SMTP id v12so28256264wrv.2
        for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 10:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=bnugC6JwyiCnChlIRtuTV5+dbkUdBZTFUhtO2devx8c=;
        b=hMPjL8orR2WSHeqxs1zIgP6D1/y3NOF2HVncEV7yzOT5TDJl23TuUBpttmyHjuLJ3V
         DPncX4igJWNQPPZpv2Swoq5k3GgStshIxb51qldYfIFr/XB0if/ba3v+8HwzqTI9Ayt0
         3oX4Af0LYY1Oa3YHw4EpbnZaHM4XJ0reiIUHSIXmlJUpMNG2Lv7zBvQ9PD5EGKEHq54U
         2lypmLD++hI3Un4tc5p37ZnquJ/354MYFjNyJkeW4IQ+hm+piD/ABvq7I2fmp1vezdya
         yQeHBtbLRnCx5uHI3/7k5XVY1BLIoCXqQpJMLO2yIMPnaqm/LA9TjqldwfTWVQOaYgDA
         NdpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=bnugC6JwyiCnChlIRtuTV5+dbkUdBZTFUhtO2devx8c=;
        b=uaGfBVvPYohBjPXV7Dcxwi/1ZYi8RLLwALINXvx0NjCG5s0gkJsa8LCfqtCz5w7Cvv
         sx8O2O9ovophgoF5iPjMyQbv5jXqrf5YFARIKLJmdbrVFhKqsDoGwX/2T4eTkqC6Wetw
         XAqfFVrv77O2ROKr0REKB20FxkRty9KccxGXQk7e3Y/tl182qUFXH9IOphz8okMQFeiw
         Yc57PNBbsr4R/f7EPcxBizq7p+I2hQ6hPdpBqym41U+5FX3Ql0PAWlNPfKr//uMiz7kH
         Gl1piszi7bplP3MqWdoqPVF9ZlHAVH60pJRUGiiGjClHeNb1cBZfvM0O5g1GpnuNgDfk
         1+LA==
X-Gm-Message-State: AOAM531oy1CkWt0fVkA1vxMbQcMckerYz8fXOrPoYzcglaF2FXB4Tgxj
	/uZCsmB4qezsXC7+x51xvIX/YGeuurc=
X-Google-Smtp-Source: ABdhPJwywh+UWexwa9miXRU5clS1BAce5SfcV4nlfpQTADo1I4LI80+9XQr06rCaUQRYJhr9H6bXIg==
X-Received: by 2002:a05:6000:2cc:: with SMTP id o12mr182203wry.234.1644861751624;
        Mon, 14 Feb 2022 10:02:31 -0800 (PST)
Received: from ?IPV6:2a02:8084:ac1:9d80:7871:d580:5931:a32d? ([2a02:8084:ac1:9d80:7871:d580:5931:a32d])
        by smtp.gmail.com with ESMTPSA id 1sm12372122wmk.16.2022.02.14.10.02.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Feb 2022 10:02:31 -0800 (PST)
Message-ID: <e1b5678a-a961-7fcc-7fe1-2dc4e176b4ef@gmail.com>
Date: Mon, 14 Feb 2022 19:02:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
 <014601d81e26$cb469260$61d3b720$@zengyi-tech.com>
 <384482b4-b1ca-a497-86ec-46baa7c43472@gmail.com>
 <28e04eea-f737-f99c-c851-15b38b02388c@gmail.com>
 <ec67277c-80ac-db10-af63-c15987cf8042@gmail.com>
 <ed848007-2bc2-d246-209e-3217bf37c1a2@gmail.com>
 <c701de64-c2d9-a189-489a-37eac6deba22@gmail.com>
 <c83d6c10-9159-f329-2f25-db055e9429f9@gmail.com>
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
In-Reply-To: <c83d6c10-9159-f329-2f25-db055e9429f9@gmail.com>
Message-ID-Hash: 62CHJYJWVZDJUYA7NJGNYH33YMRK5JG2
X-Message-ID-Hash: 62CHJYJWVZDJUYA7NJGNYH33YMRK5JG2
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] OAI with USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/62CHJYJWVZDJUYA7NJGNYH33YMRK5JG2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0161172971656417881=="

This is a multi-part message in MIME format.
--===============0161172971656417881==
Content-Type: multipart/alternative;
 boundary="------------hsPhNyHRGdXopY0hj7mYmCjo"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------hsPhNyHRGdXopY0hj7mYmCjo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear community,

I would like to use OpenAirInterface with the USRP N310 and I am having 
overflow problems. I am forwarding here the email I sent to the OAI mail 
list, because I think the problem is with the USRP and non-real time 
operations.

Does anyone have any ideas?

Thanks in advance,

Giuseppe


> Dear community,
>
> After solving problems with OAI installation and USRP N310 
> configuration, I am trying to create a 5G SA link, starting with gNB.
>
> I tried this:
> sudo ./nr-softmodem -O 
> ../../../ci-scripts/conf_files/gnb.band78.tm1.106PRB.usrpn300.conf 
> --sa --args clock_source=internal
>
> But it gives problems that I think are related to the fact that 
> probably the operations are not in real time.
>
> For example:
> [PHY] rx_rf: Asked for 30720 samples, got 18906 from USRP
> [PHY] problem receiving samples
> LLLLLLLLLLLLLLLLLLLLLLLLLLLO[HW] [recv] received 18906 samples out of 
> 30720
> [HW] Time: 1.41826 s
> ERROR_CODE_OVERFLOW (Overflow)
>
> Or, even earlier:
> [WARNING] [MPM.RPCServer] A timeout event occured!
>
> Also, I would like to attach a log file but I can't find it, and using 
> the "> file_log.txt" at the end of the command it all goes immediately 
> in overflow.
>
> Does anyone have any ideas?
--------------hsPhNyHRGdXopY0hj7mYmCjo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">Dear community,</div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode">I would like to use
      OpenAirInterface with the USRP N310 and I am having overflow
      problems. I am forwarding here the email I sent to the OAI mail
      list, because I think the problem is with the USRP and non-real
      time operations.<br>
      <p>Does anyone have any ideas?</p>
      <p>Thanks in advance,</p>
      <p>Giuseppe</p>
      <p><br>
      </p>
      <blockquote type="cite"
        cite="mid:a71d21e8-dd0f-0008-3933-1dc681af420b@kom.tu-darmstadt.de"><font
          size="4"> </font>
        <div class="moz-text-flowed" style="font-family: -moz-fixed;
          font-size: 12px;" lang="x-western"><font size="4">Dear
            community, <br>
            <br>
            After solving problems with OAI installation and USRP N310
            configuration, I am trying to create a 5G SA link, starting
            with gNB. <br>
            <br>
            I tried this: <br>
            sudo ./nr-softmodem -O
            ../../../ci-scripts/conf_files/gnb.band78.tm1.106PRB.usrpn300.conf
            --sa --args clock_source=internal <br>
            <br>
            But it gives problems that I think are related to the fact
            that probably the operations are not in real time. <br>
            <br>
            For example: <br>
            [PHY] rx_rf: Asked for 30720 samples, got 18906 from USRP <br>
            [PHY] problem receiving samples <br>
            LLLLLLLLLLLLLLLLLLLLLLLLLLLO[HW] [recv] received 18906
            samples out of 30720 <br>
            [HW] Time: 1.41826 s <br>
            ERROR_CODE_OVERFLOW (Overflow) <br>
            <br>
            Or, even earlier: <br>
            [WARNING] [MPM.RPCServer] A timeout event occured! <br>
            <br>
            Also, I would like to attach a log file but I can't find it,
            and using the "&gt; file_log.txt" at the end of the command
            it all goes immediately in overflow. <br>
            <br>
            Does anyone have any ideas? </font><br>
        </div>
      </blockquote>
    </div>
  </body>
</html>

--------------hsPhNyHRGdXopY0hj7mYmCjo--

--===============0161172971656417881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0161172971656417881==--
