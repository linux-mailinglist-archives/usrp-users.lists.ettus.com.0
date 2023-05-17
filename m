Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1747070BB
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 20:23:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AA0338484A
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 14:23:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684347821; bh=wXp1aX/uqvJ1aU3xq2nANUGUJlCQbqParNRoAjxcej0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=V0YeM4HlyzHF0RTn6oWEp7kTfYTBjWfaISu5a2QiIQSwv5PcemkW/siwxsEVLBtzg
	 uNhVgP6iqrmATPlRCbkJk2+UQgNKYMkEKic0NdKwDdbrVUYAIkZZzMRcNIz009IPGH
	 Y6bmxVHCTajl4ExOW1f0LLdRDjI86x1kIC0X1JPk2OHJhLHiCf4h1CCd8IH7uxNUcq
	 3JVWh6JmZYbajT+/lprjjJXOLJ69FEvETJ2Xp0rLAE77gvxr2BjsB03pnUkP3c7Eyn
	 X2hVx1s03N3jvImVFSA6QwZQ1N2Pm6G8o+vJruS19UQdN0+milzZgpZi1gTgzhCPVb
	 MqkFqmt19h0vA==
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 5FEF03846B3
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 14:23:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="WKB2GFhN";
	dkim-atps=neutral
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-3f417ea5252so8574315e9.0
        for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 11:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1684347793; x=1686939793;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yM2FIMozmlGOzwGsDXPZJLgQUaYL+yBntrQF05rUvNQ=;
        b=WKB2GFhNWFZZMhM59TUzubj3t4Tsooyk++4ntKR6/Z4ykJaNy7rx0dE9yA1wc89plc
         qB2YPe7kVyL3KpDGaPD2M9M8QOgxfNAcHormqPvpjvji0pdWAPBL1WJKfkXZYhqoOkqc
         B9w0hY+AZm+b6BD4opDV8o6RatkJAJbRbjeIf3bxEYgah1LyBUTSshJGWpEKMketCuKR
         fYFgxMrHcM1oSBQaOSjD8hRBtBA/Q32mwKm1/bnYsgNshyfMlQt21kYuWLYRUW8ej4pb
         3QDC98wYRk+RTonPKxU2yoyDDU6KR1rdbQ5Sh0+b/zB3DVXboJEliUE+lzSMjBwt6Min
         l4Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684347793; x=1686939793;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yM2FIMozmlGOzwGsDXPZJLgQUaYL+yBntrQF05rUvNQ=;
        b=PiO8k7phaUVNiiGekkAewiYpvmPKY7WaJAAzIaYha9jLZZYJ3tD1TqzPxrxepJP1FR
         nMSVV6K5GqNdJTtVloABHAceKNZV4K9hnmOZwxNmtSusn8WiuuR0OqwVNMMu6Vb+XwlW
         CBYM89DuZ6cVD+ZCCLAg4+plWYDh2SQgfjQiJp87GndYBJaNN9Jo5oqEg5y5MjFgv/9C
         MJOELCODqkZo/284H6qUN/7MvQUnpDXqNfB6qiNiyZfp0MBQOYFNtndtASCG5Y5iZITI
         KyC8xG2uzqz1o/k5KLKU9uctcuytWSdk4+kufs3Ze7Lk2iO2/058IoLErD0naJuz3QUS
         LgdQ==
X-Gm-Message-State: AC+VfDwvjoZ2B1C2gV6BgTcm46C1YGnUAaTGTwVKQ8K193IXE86JCrCQ
	HNgTIoYQXEPxdFlTG197FrDWkX69w82PE80nbikH9Q==
X-Google-Smtp-Source: ACHHUZ6APmTSL1RLGb98Fp+aEx7ZmvFeCyfxoyCMoKGMwR5FtcjG0c4dUKgLH2nc58naogli6NbIjw==
X-Received: by 2002:a7b:cc82:0:b0:3f4:26d4:91b0 with SMTP id p2-20020a7bcc82000000b003f426d491b0mr21593377wma.40.1684347792939;
        Wed, 17 May 2023 11:23:12 -0700 (PDT)
Received: from ?IPV6:2001:9e8:386a:cd00:998f:ca6a:6065:3212? ([2001:9e8:386a:cd00:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id g17-20020a05600c311100b003f4283f5c1bsm5303617wmo.2.2023.05.17.11.23.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 11:23:12 -0700 (PDT)
Message-ID: <19ec85dc-d4cc-4b21-855e-2f9760c37e61@ettus.com>
Date: Wed, 17 May 2023 20:23:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Mailbird-70cf993e-2702-42fa-a6a2-fed6e2bd4416@gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <Mailbird-70cf993e-2702-42fa-a6a2-fed6e2bd4416@gmail.com>
Message-ID-Hash: QYZFBMZLXB3V6FTJO7AXDKHEYXIIYGHI
X-Message-ID-Hash: QYZFBMZLXB3V6FTJO7AXDKHEYXIIYGHI
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ubuntu and USRP
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QYZFBMZLXB3V6FTJO7AXDKHEYXIIYGHI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0563086673252570043=="

This is a multi-part message in MIME format.
--===============0563086673252570043==
Content-Type: multipart/alternative;
 boundary="------------GgXGsUa51rXHCN07lVQIIgx7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------GgXGsUa51rXHCN07lVQIIgx7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Page,

not quite sure which problems you're referring to, but in general, UHD has only been 
getting better :) So, I'd recommend you use a current long-time supported version of 
Ubuntu, i.e., Ubuntu 22.04LTS.

Best regards,
Marcus

On 17.05.23 19:30, page wrote:
> For some time I have been using a B-210 in research and development. I haven't been 
> active on the list for a awhile. I recall someone citing problems using Ubuntu 20.x with 
> USRP. As a result, I'm still using Ubuntu 18.x, which has been working fine. Have the 
> problems with using Ubuntu 20.x been resolved? Is anyone having further trouble with the 
> latest versions?
> --
> page heller
> dab2ce89-121d-4ba4-b1f7-a53493beaca6
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------GgXGsUa51rXHCN07lVQIIgx7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Page,</p>
    <p>not quite sure which problems you're referring to, but in
      general, UHD has only been getting better :) So, I'd recommend you
      use a current long-time supported version of Ubuntu, i.e., Ubuntu
      22.04LTS.</p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <div class="moz-cite-prefix">On 17.05.23 19:30, page wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:Mailbird-70cf993e-2702-42fa-a6a2-fed6e2bd4416@gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div id="__MailbirdStyleContent" style="font-size:
        10pt;font-family: Arial;color: #000000;text-align: left"
        dir="ltr">For some time I have been using a B-210 in research
        and development. I haven't been active on the list for a awhile.
        I recall someone citing problems using Ubuntu 20.x with USRP. As
        a result, I'm still using Ubuntu 18.x, which has been working
        fine. Have the problems with using Ubuntu 20.x been resolved? Is
        anyone having further trouble with the latest versions?<br>
        <div><span style="font-size: 10pt">--</span><br>
        </div>
        <div class="mb_sig">
          <div>page heller</div>
        </div>
      </div>
      <img class="mailbird" style="border:0; width:1; height:1; display:
        none;"
src="https://tracking.getmailbird.com/OpenTrackingPixel/?messageId=Mailbird-70cf993e-2702-42fa-a6a2-fed6e2bd4416@gmail.com&amp;senderHash=3B5B4D97E15C53C84AB3BBA711CF8FA4E8DEA2B834615A93F02F850A4B090C4C&amp;recipientHash=62BDC89AFB5F046DA8A22F47CAB9288DB44CE5326F66A9C242E4B6B173C0F8E1&amp;internalId=ac5c9af6-5efb-417c-badd-a95313d8d62a"
        alt="dab2ce89-121d-4ba4-b1f7-a53493beaca6"
        moz-do-not-send="true" width="1" height="1">
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------GgXGsUa51rXHCN07lVQIIgx7--

--===============0563086673252570043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0563086673252570043==--
