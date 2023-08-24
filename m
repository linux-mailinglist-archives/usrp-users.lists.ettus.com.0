Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4521B786D23
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 12:50:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0875384AAF
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 06:50:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692874243; bh=2BeNdUTjsG6DcRJDq1GbYJvSr0pdA9EHaSvj+5JK4vY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Qx8lp+pcbns8akLhY65aEbJatLwuBgVaesGkibMXxL8YTB35Knqu3+Y5wkw3BiEjO
	 njIfE+1MKbMgbRAb1C3CeYdnhxsrsn1fKIXjGwXTHE4KYM2KcWvbO3nRA2G8uh/Oqm
	 FvfvmkoFhHEo+ZFY4ScjYlmVfQc3QyvYI133BJ8BGROPz4hmRqMEnBmJgn3no+O2M+
	 7XD030t2deU1LxK65i/aMmAOG9SeMbg5SYp2hYq1vMYJvzW3Gdz+b8vwZ2LRx6hc+h
	 I4zRyMzs+FSI94WxffAez0e+A1MWtgpZjl2zC4ijWc7LoSgnE/Q0GZSV8sCCebamAh
	 Ea3UX8T9+5DUg==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id CBE4A384554
	for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 06:50:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="bVP4+AqF";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-99cce6f7de2so892789566b.3
        for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 03:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692874228; x=1693479028;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2x7RKUZogAnnCxPOKtGp2jZBWIohlorYr9bKhMdL3FQ=;
        b=bVP4+AqFk/ih0B+Fa8AgpzpmMhqmqSU2BwgoYi8EZsfkanbqPEr/Rzyz82H41EOCtS
         pPb87oQXsWEpW1V7jsupYWdEw0T45AOWCPFDg6IoQ4ToI0bY14TWK9oVzbSh5IAg/8Cd
         yowNTejnu6ZGWc4Q6/u+sIQlsl0upJfKmoyoUivKM0w1kiPsA5IZJCfGyoU3voygh3C3
         1EqVJBjbzdmVLWh5VbIqWQOWhz2hNWMUQ4bvp7lswusbEihPnGXUURDUeJlFPQUT6EV9
         A9PAofqCmtAD7dO+RbJ8/W0/mYClt9OXV616NjuRTdHFzgzRIWoWxWOCFWeVMRBGH0Zs
         7Lfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692874228; x=1693479028;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2x7RKUZogAnnCxPOKtGp2jZBWIohlorYr9bKhMdL3FQ=;
        b=lXsG1fAbcr6M/1tBUP0k/sKL5sP291Ru7a1TWrwyGkp5XADGx/n8CoSA1cL+pWx+cL
         Y+uiUJOo7OTi8OkK5mcf0LbY7JiS0+ElFYguJcW42sYdQDqefxFTjgiDpkPnzW8pf7kA
         zFmkA2SDqk5m4NQNu8u4bRcBeXgKpUnvREQoFpepcQcTtsnhy4whbtKziDqlYgz7YdBe
         A7DH95QLyRYQ8gzVhh2l5/bfMwiiJvM8Bcf3VeSTS+Oxf8hqKA3W46tb40Xcw5RTfk6O
         v3sKFi6PvPysKf/pOyxl3Fv0spsKAak61J3z3jhJAAi95F42I5lvxh7uYpG5lAJc+YM7
         JCqQ==
X-Gm-Message-State: AOJu0YzMsNU2Cnu8p9fsEPNH1Or8YJcefiSPN7uCsSYz2/HZyLZGZsoF
	fJH28JpDuj7CUlcmxR1pwzhH1xK20kRII1jeyH3EhA==
X-Google-Smtp-Source: AGHT+IEho1kuULpMBIzYfOz2fz3mHqhGj6Ejb82TmkUlbzXLuB8ywtM4zoLa0ybSZLV3YxtJwnb/kQ==
X-Received: by 2002:a17:906:5a55:b0:9a1:c00e:60cd with SMTP id my21-20020a1709065a5500b009a1c00e60cdmr5462337ejc.15.1692874228192;
        Thu, 24 Aug 2023 03:50:28 -0700 (PDT)
Received: from ?IPV6:2001:9e8:385a:d700:10fc:1619:bea3:90d1? ([2001:9e8:385a:d700:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id p12-20020a1709060dcc00b009944e955e19sm10834634eji.30.2023.08.24.03.50.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 03:50:27 -0700 (PDT)
Message-ID: <da1aecdd-efb2-9921-5689-03b716ccdb08@ettus.com>
Date: Thu, 24 Aug 2023 12:50:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAKHaR3nHfHGK+ix+q2A61tbs8PtvwKQQ3vYowGCadcwfWgOzKg@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAKHaR3nHfHGK+ix+q2A61tbs8PtvwKQQ3vYowGCadcwfWgOzKg@mail.gmail.com>
Message-ID-Hash: 3KCIDZ3VP3TEQNWE66GY4QH2MWEYHDYB
X-Message-ID-Hash: 3KCIDZ3VP3TEQNWE66GY4QH2MWEYHDYB
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gnuradio 3.10 and rfnoc
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3KCIDZ3VP3TEQNWE66GY4QH2MWEYHDYB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0587936745172170598=="

This is a multi-part message in MIME format.
--===============0587936745172170598==
Content-Type: multipart/alternative;
 boundary="------------XOYqaBQkAybLGs0h0YYgeoHa"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------XOYqaBQkAybLGs0h0YYgeoHa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Dario,

https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0 would be my go-to here.


Best regards,
Marcus

On 24.08.23 11:10, Dario Pennisi wrote:
> Hi,
> i'm experimenting migration to GNURadio 3.10 and UHD4.4 but i noticed that in GNURadio 
> 3.10 gr-ettus is not needed anymore as everything is in gr-uhd, which is great however 
> there's no sign of rfnocmodtool and since a few things have changed i wonder what is the 
> recommended way to get started on an OOT block with these latest versions.
> thanks,
>
> Dario Pennisi
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------XOYqaBQkAybLGs0h0YYgeoHa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Dario,</p>
    <p><a class="moz-txt-link-freetext" href="https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0">https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a> would
      be my go-to here. <br>
    </p>
    <p><br>
    </p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <div class="moz-cite-prefix">On 24.08.23 11:10, Dario Pennisi wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAKHaR3nHfHGK+ix+q2A61tbs8PtvwKQQ3vYowGCadcwfWgOzKg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Hi,
        <div>i'm experimenting migration to GNURadio 3.10 and UHD4.4 but
          i noticed that in GNURadio 3.10 gr-ettus is not needed anymore
          as everything is in gr-uhd, which is great however there's no
          sign of rfnocmodtool and since a few things have changed i
          wonder what is the recommended way to get started on an OOT
          block with these latest versions.</div>
        <div>thanks,</div>
        <div><br clear="all">
          <div>
            <div dir="ltr" class="gmail_signature"
              data-smartmail="gmail_signature">
              <div dir="ltr"><span
style="color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">Dario
                  Pennisi</span><br
style="color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">
                <br>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------XOYqaBQkAybLGs0h0YYgeoHa--

--===============0587936745172170598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0587936745172170598==--
