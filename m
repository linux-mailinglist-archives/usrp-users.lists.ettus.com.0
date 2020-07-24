Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F9922CC9A
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 19:51:53 +0200 (CEST)
Received: from [::1] (port=46408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz1rM-0005wb-Af; Fri, 24 Jul 2020 13:51:52 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:41785)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jz1rI-0005lU-4V
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 13:51:48 -0400
Received: by mail-qk1-f181.google.com with SMTP id l64so2594668qkb.8
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 10:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=+cdh25wA3QtPfqPKyLREqjHqF3nI+rxtaPQ3saSjxBQ=;
 b=N33HVtCYWh8rnj1I26awJO2FJBKkXv9iRzSS7XXWuDYwAyj3SZ36UMCoS4x3EqSxIz
 hiG6fF6ektY1wxMEY+Zoa27n9xV2HgCHUImT0X+2Y4C37qXk4f0RFIfFyJxdeDJw48ju
 r8wgH4OlAjPphx60oBTXAiKYxX/EbZxRh2pDFrISEKNl6T52ktRP/4CzG41I9vA5DxG2
 nK3PWkAJmiQAB5INO+8bL+OQV7Vs1X5dMhxd7kvVvZprM1wHnpxxuRUWzIeT+bNCIhku
 HrgFHhd5h4NzpEhU3/Jscg7mlD+jDDzEDytgENSEQZmfBLalDbND8hljUaR90GZhOKRM
 H4RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=+cdh25wA3QtPfqPKyLREqjHqF3nI+rxtaPQ3saSjxBQ=;
 b=Fd4NkNhkh/K7O5BO3yt53B24iCC2/voA/oYXjj+U4OOi64MnD9J++fCiStTUKJXclt
 6XIkev98x3p3VeBMi2lPcgCw8daDEzQnZM2K8fDxNxjSDVzzqNm6IOSgAbvvO5Z9SF1H
 3hItw3FfiZSrduKP4DTaaCXutjtOgfNkm69Kpsl7IKQUQW9F7XBg+rHNXLZ3da24ApSy
 eF7ErIp2fY7bVPv0URChl3TVsW45kQ85l4Wwcjfcf4C1/JteD6F+F1pBR/JfXXLdPqrF
 /6fE4it4a7YpZ6EtM7CUpruUABv++CvXigVCApNdlXtH5AiWao5rYUWiXevOuWfCye7A
 mJxg==
X-Gm-Message-State: AOAM533Qpp/ob+j9gjHYifkTcZZipVN7deH323dgQ+nunix+8JCqbnEZ
 dB8t3jlB3H59zZJqojMChYD3cTbC1KI=
X-Google-Smtp-Source: ABdhPJxh/FUFFhgAYCkO6aYaopX6dxqcSl4V6fbDQGaUmu+vC4jCOWwKovrr3LLx8OYstHumA3+ZEA==
X-Received: by 2002:a05:620a:210e:: with SMTP id
 l14mr8237815qkl.368.1595613067452; 
 Fri, 24 Jul 2020 10:51:07 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id h30sm2218336qtb.71.2020.07.24.10.51.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jul 2020 10:51:07 -0700 (PDT)
Message-ID: <5F1B1F8A.5050602@gmail.com>
Date: Fri, 24 Jul 2020 13:51:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BM1PR01MB257714D4AD3404AE8779C8E990770@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>,
 <5F1B1A5E.4050000@gmail.com>
 <BM1PR01MB257762B83EC75D576A91922A90770@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB257762B83EC75D576A91922A90770@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] Error in grc but running on terminal
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============9127583070011305938=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============9127583070011305938==
Content-Type: multipart/alternative;
 boundary="------------060605000602070605090103"

This is a multi-part message in MIME format.
--------------060605000602070605090103
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/24/2020 01:47 PM, Koyel Das (Vehere) wrote:
> Hi Marcus,
>
> This is the code:
>
> https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_samples_to_file.cpp
>
> Regards,
> Koyel
>
Ok, so, I'll echo Marcus Ms comment.  You have two "competing" 
installations of UHD -- one that is bound with Gnu Radio, and another
   that is bound with a different install of UHD outside of the Gnu 
Radio environment.  They are two different versions with two different
   FPGA requirements.


> Get Outlook for iOS <https://aka.ms/o0ukef>
> ------------------------------------------------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of 
> Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Friday, July 24, 2020 10:59:02 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Error in grc but running on terminal
> On 07/24/2020 01:22 PM, Koyel Das (Vehere) via USRP-users wrote:
>> Hi,
>>
>> I am using USRP 2955. I am using the code in c++ given in github to 
>> acquire data. I don’t know data is correct or not but the green light 
>> below one antenna is glowing. However, when I run a grc flowgraph I 
>> get fpga image incompatibility error. Why this different behaviour 
>> while running from terminal and while running using grc?
>>
>> Regards,
>> Koyel
>>
>>
> My guess is that your C++ code is linked against a version of UHD that 
> is compatible with the FPGA, and your Gnu Radio environment is linked
>   against some *other* version.
>
> You haven't said *which* C++ code you're using, and given that GitHub 
> hosts 10s-of-thousands of different applications and codebases, it's
>   impossible for us to guess which you might be talking about. Please 
> help us help you...
>


--------------060605000602070605090103
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/24/2020 01:47 PM, Koyel Das
      (Vehere) wrote:<br>
    </div>
    <blockquote
cite="mid:BM1PR01MB257762B83EC75D576A91922A90770@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>Hi Marcus,</div>
          <div dir="ltr"><br>
          </div>
          <div dir="ltr">This is the code:</div>
          <div dir="ltr"><br>
          </div>
          <div dir="ltr"><a moz-do-not-send="true"
href="https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_samples_to_file.cpp">https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_samples_to_file.cpp</a><br>
          </div>
          <div dir="ltr"><br>
          </div>
          <div dir="ltr">Regards,</div>
          <div dir="ltr">Koyel </div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    Ok, so, I'll echo Marcus Ms comment.  You have two "competing"
    installations of UHD -- one that is bound with Gnu Radio, and
    another<br>
      that is bound with a different install of UHD outside of the Gnu
    Radio environment.  They are two different versions with two
    different<br>
      FPGA requirements.<br>
    <br>
    <br>
    <blockquote
cite="mid:BM1PR01MB257762B83EC75D576A91922A90770@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <div dir="ltr">
        <div>
          <div>
          </div>
          <div class="ms-outlook-ios-signature"
            id="ms-outlook-mobile-signature">Get <a
              moz-do-not-send="true" href="https://aka.ms/o0ukef">
              Outlook for iOS</a></div>
        </div>
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          color="#000000" face="Calibri, sans-serif"><b>From:</b>
          USRP-users <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on
          behalf of Marcus D. Leech via USRP-users
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Sent:</b> Friday, July 24, 2020 10:59:02 PM<br>
          <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Error in grc but running on
          terminal</font>
        <div> </div>
      </div>
      <div style="background-color:#FFFFFF">
        <div class="x_moz-cite-prefix">On 07/24/2020 01:22 PM, Koyel Das
          (Vehere) via USRP-users wrote:<br>
        </div>
        <blockquote type="cite">
          <div dir="ltr">
            <div>
              <div>Hi,</div>
              <div dir="ltr"><br>
              </div>
              <div dir="ltr">I am using USRP 2955. I am using the code
                in c++ given in github to acquire data. I don’t know
                data is correct or not but the green light below one
                antenna is glowing. However, when I run a grc flowgraph
                I get fpga image incompatibility error. Why this
                different behaviour while running from terminal and
                while running using grc?</div>
              <div dir="ltr"><br>
              </div>
              <div dir="ltr">Regards,</div>
              <div dir="ltr">Koyel </div>
              <div><br>
              </div>
              <br>
            </div>
          </div>
        </blockquote>
        My guess is that your C++ code is linked against a version of
        UHD that is compatible with the FPGA, and your Gnu Radio
        environment is linked<br>
          against some *other* version.<br>
        <br>
        You haven't said *which* C++ code you're using, and given that
        GitHub hosts 10s-of-thousands of different applications and
        codebases, it's<br>
          impossible for us to guess which you might be talking about.
        Please help us help you...<br>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060605000602070605090103--


--===============9127583070011305938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9127583070011305938==--

