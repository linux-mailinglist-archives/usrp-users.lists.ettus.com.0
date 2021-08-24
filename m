Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B470D3F6109
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 16:55:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35480383FEA
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 10:55:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="tfDMmEm3";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id B634F383FBC
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 10:54:35 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id 22so23438305qkg.2
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 07:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=JQ8QOQ3PYzIADi596TG/AQR/Sqdnnc0vUF/XrZzqb8o=;
        b=tfDMmEm3+RUoB60nJnFJ1c0+6Pfa2LU4Uqd9ESFXPUJAHmCAperg5b0Tt4mATbTFAR
         QjKDHvAwYG7YJ8aMjuxGYm0p4ufmCwynBP08gilEzYrb/8XlwxyRz6D3wN/raka92CUU
         /9zJcEOK+uQnELIp9rDIfrI8mK/bAF9hPh+S6Xy+xHB0Mk1iwJt2xyYnE8oxwA3DA+D0
         hSlo6Ocp8EBt89vFXmBrcwwRRO4V6ruQv3+Wdzz7x8JPKKX/3Ay7KudYLbKyGYWU+XC0
         0dySNuqwRaXfs15sQ9P262mAGKKUi36nqjbRn12D2qv2PYhpHC2T1W43zvWuuemrsh5X
         wSbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=JQ8QOQ3PYzIADi596TG/AQR/Sqdnnc0vUF/XrZzqb8o=;
        b=a4N3P4I3QXdViny8fJ+6yGwODfcBFLcHqI+Fxi2Vxyx+UQ6bpH7pNmV+48TyCEcwx2
         ts1wyB+RzKIAuNMBx3inSF0Zt+JIfS1A7yL5RgQJ8Fg1g5kljpr9h8bh4eVQKvWbLDu1
         qfjt7zmuTWf73m4X7v09vs1NPBb2r+x2UHMhuOCZHfEu7jkrP+fHFam+Fgyz3NyEmMb0
         OSyIp8aPGoaREfprO+EmWwbNfU5osT3SuGmihezb6nmIIOwglvH4wArOiQXqac6/udFu
         eolqNqWiMTqP/KwIEhpHIRn05qTVEz7tdSYj9nFX4JEREiJIFWhVZW4u00v8yU7iAUHZ
         8GIQ==
X-Gm-Message-State: AOAM531ddbs+45GRHhFAOvaee/d5OD+ZLJaleSJMhJCyUwbYJ6JOshin
	KStlR2U3rddNn4G3ODX59SAo/QOIabXAjA==
X-Google-Smtp-Source: ABdhPJw3gt1OjbQqKx7yylXqZvw6UBSQTJUFAPUQN7N0cLVuB07OKPtPvBZDoiYKQc0CPwxcb6FAnw==
X-Received: by 2002:a05:620a:248f:: with SMTP id i15mr27567527qkn.128.1629816875086;
        Tue, 24 Aug 2021 07:54:35 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id g27sm8492371qts.79.2021.08.24.07.54.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 07:54:34 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <1603286005.133827.1629816455930.ref@mail.yahoo.com>
 <1603286005.133827.1629816455930@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <881b16c4-161c-6edf-5a7f-de0cafdc47a0@gmail.com>
Date: Tue, 24 Aug 2021 10:54:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1603286005.133827.1629816455930@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: BRVAHZSMGYINKKOCFP6DG5MUWCQXYYH3
X-Message-ID-Hash: BRVAHZSMGYINKKOCFP6DG5MUWCQXYYH3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running rfnoc replay example on n310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BRVAHZSMGYINKKOCFP6DG5MUWCQXYYH3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3708642002497867884=="

This is a multi-part message in MIME format.
--===============3708642002497867884==
Content-Type: multipart/alternative;
 boundary="------------522C1D2BE5F733168C940AD7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------522C1D2BE5F733168C940AD7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-08-24 10:47 a.m., Tellrell White via USRP-users wrote:
> I'm trying to run the rfnoc replay samples from file example on the 
> N310. I have updated the file system on the sd card to UHD 4.0 
> successfully. Are their instructions on a cross-compiler to use on my 
> host machine in order to compile the .cpp code for the example and run 
> it on the n310?
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_fsbuild


--------------522C1D2BE5F733168C940AD7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-08-24 10:47 a.m., Tellrell
      White via USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1603286005.133827.1629816455930@mail.yahoo.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir="ltr" data-setdir="false">I'm trying to run the rfnoc
          replay samples from file example on the N310. I have updated
          the file system on the sd card to UHD 4.0 successfully. Are
          their instructions on a cross-compiler to use on my host
          machine in order to compile the .cpp code for the example and
          run it on the n310?</div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_fsbuild">https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_fsbuild</a><br>
    <br>
  </body>
</html>

--------------522C1D2BE5F733168C940AD7--

--===============3708642002497867884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3708642002497867884==--
