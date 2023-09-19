Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4527A619A
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 13:44:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7465C384FC0
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 07:44:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695123886; bh=Ypccgz7Q171Azo3uKFJFIjYljoKxDdmPwL3LAeur+YQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WYqEWhItpohgJ3l9QCQ3LRnKY2+qGchu+jpXWBl/vPPtrhyqoIMlrDubosZ1YAwZe
	 0uLKHTtl3LavIENYgLkrU3scEZ8g8v5sQawK0Xk1zVaMs8fkad00jp22UFSmvNvVVq
	 /CI7O3ncQME3vxhD43jNLJMZWRpr44iDY0rIrEAuCCN/YouejiX7iW8IdI1pBI8+aj
	 RyQHBIH3pbiHttR0jdAgHKBTvKI0Huq4IoQgPo/rAqvlwjyRiFSiVXOaGPgIsY4Xam
	 4EUH3khDFzDW5U/wxoyrmYH9tWV3OA/Gaeswc3MZ2TbisXDZsEhtrKROP4RfBbKqlt
	 tDQTFY7Y+xJ/g==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CBDE384D99
	for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 07:44:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ytLqaj5K";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-9a645e54806so700175566b.0
        for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 04:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1695123868; x=1695728668; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wkV6AaqVktp4n/BJzDfXcQleSCh4oJ+vrMjMZJ7bXDs=;
        b=ytLqaj5KeC41i5GoUVsxH40RopNixBcq+zJcuwa071k9SVl/0aFfwzt0LOeOF4ufNM
         LIpODQzqZd/Wdqw9gvFFM2vTDogOeQCScIbLUYUgs1EGlucSavuLh8h14N/TadteZ6rI
         1qDvZZ0bvtF1W5ggHQ275H3g2qUZdAVjno1h5LP1kIS0bRcKFBaWEYALevmisXqXD9Ao
         v9ZRFu9LpJDpko8qbSLpU8KWjjJeb3aGQNcISPOp4LwIF4eZoF9mb7Hbo75U9DjxmZH/
         vVMg+50l1P1KIJs75wtQ9NN7Rq/mXGP1U9O0GMBu1f1mC3WJiPfONzu56SfF/5iLdazm
         onqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695123868; x=1695728668;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wkV6AaqVktp4n/BJzDfXcQleSCh4oJ+vrMjMZJ7bXDs=;
        b=MhLb52ftd58UhEksqv6+O1bTt0Bb6VtuUVrEhsDp4PsNOIiA1srniLzrlX7/+P739j
         VHOvgmKJ48HrCB0/jxRyHfrQyG//vpLhsY8ZHBoLGzs7iPM6MVKGfFlWoy+RkFDtC3Oa
         uH04pzzxLrwZ5KqnBQ0/WrJkynk0e+5xT96jk7T2MD57EYkCJ85DIzJSear2uASiAih/
         YO1ul7u6GHbx5bkeIdRrCmANyc8Wdf9ktOuE6NUGFbIqSa10yVDYHEBKKMwLy236O0dj
         CUtc0lqsr+Lk36RFhOq6ZwGYpZEyL6yu8DZ/O59i3oR90OqLqgvBeD0oQLZ49NXUw62G
         GM3g==
X-Gm-Message-State: AOJu0Ywkr/kyUMrX54pVjIYM0RgCcnhNdkN/1KkeEHFNfA/x9y9BdLw9
	b1ebyamCGxB4BWRloESN2kpjeACAgOznGT6zMAD6tA==
X-Google-Smtp-Source: AGHT+IEKdh30xkRpWzOEn0bboV6kt6sfR0LxgnY7F01+ULCT4dwmtX+dWq8TWhmZfIFezpiiVy6LSQ==
X-Received: by 2002:a17:906:8466:b0:9ad:e180:16e3 with SMTP id hx6-20020a170906846600b009ade18016e3mr8292143ejc.37.1695123867816;
        Tue, 19 Sep 2023 04:44:27 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3861:1900:10fc:1619:bea3:90d1? ([2001:9e8:3861:1900:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id cf20-20020a170906b2d400b0099bd453357esm7650581ejb.41.2023.09.19.04.44.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 04:44:27 -0700 (PDT)
Message-ID: <98489dd8-4111-17f3-61ea-e8a8afa180de@ettus.com>
Date: Tue, 19 Sep 2023 13:44:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MA0PR01MB92187ECC43DC43A0A4050C2FB6E8A@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
 <MA0PR01MB92187E3CD217ED05912CBA5BB6F1A@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
 <MA0PR01MB9218A5503D87BFF14F28AB9AB6FAA@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <MA0PR01MB9218A5503D87BFF14F28AB9AB6FAA@MA0PR01MB9218.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: 3U5D7WPIEHAQJKBRRB353PS2ILN3O7V5
X-Message-ID-Hash: 3U5D7WPIEHAQJKBRRB353PS2ILN3O7V5
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP codebase walkthrough/understanding
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3U5D7WPIEHAQJKBRRB353PS2ILN3O7V5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3894378229461816878=="

This is a multi-part message in MIME format.
--===============3894378229461816878==
Content-Type: multipart/alternative;
 boundary="------------FjOHU5hvmmVt3MSZ0r3gLRKI"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FjOHU5hvmmVt3MSZ0r3gLRKI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jeyakumar,


obviously, we'd point you to the same resources on the Ettus knowledge base that you've 
already read, probably. So, um, can you maybe phrase this in a less open-ended way? What 
do you need help with?


Also: "Add AI capabilities", that makes my "underdefined term usage" meter have very high 
readings. Please try to also narrow down what you want this to mean!


Best,
Marcus


On 19.09.23 09:37, Jeyakumar K-[BL.EN.P2VLD22009] via USRP-users wrote:
> Dear all,
>
> Do we have any videos or can someone help me with a code walk through of USRP github 
> codebase.
>
> I have taken this project as my final year MTech project and would like to add AI 
> capabilities after understanding the code.
>
> Many thanks for your support.
>
> Thanks
> Jeyakumar K
>
> ------------------------------------------------------------------------------------------
> *From:* Jeyakumar K-[BL.EN.P2VLD22009] <bl.en.p2vld22009@bl.students.amrita.edu>
> *Sent:* 12 September 2023 11:25
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: Help to build and push bitstream to FPGA of USRP codebase
> Can someone please help here.
>
> Thanks
> Jeyakumar
> ------------------------------------------------------------------------------------------
> *From:* Jeyakumar K-[BL.EN.P2VLD22009]
> *Sent:* 05 September 2023 21:37
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Help to build and push bitstream to FPGA of USRP codebase
> Dear Users,
>
> I tried my best following the instructions provided in build manual but the build failed 
> with several attempts.
>
> As part of my final year major project, I have expressed interest to work on ettus fpga 
> open source git reporsitory for USRP hardware build on FPA and add more features.
>
> Hence can anyone guide me to understand source code at high level and how to build them 
> in vivado. I really appreciate all your support !
>
> Thanks
> Jeyakumar
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------FjOHU5hvmmVt3MSZ0r3gLRKI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Jeyakumar,</p>
    <p><br>
    </p>
    <p>obviously, we'd point you to the same resources on the Ettus
      knowledge base that you've already read, probably. So, um, can you
      maybe phrase this in a less open-ended way? What do you need help
      with? <br>
    </p>
    <p><br>
    </p>
    <p>Also: "Add AI capabilities", that makes my "underdefined term
      usage" meter have very high readings. Please try to also narrow
      down what you want this to mean!</p>
    <p><br>
    </p>
    <p>Best,<br>
      Marcus</p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 19.09.23 09:37, Jeyakumar
      K-[BL.EN.P2VLD22009] via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MA0PR01MB9218A5503D87BFF14F28AB9AB6FAA@MA0PR01MB9218.INDPRD01=
.PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Dear all,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Do we have any videos or can someone help me with a code walk
        through of USRP github codebase.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I have taken this project as my final year MTech project and
        would like to add AI capabilities after understanding the code.</=
div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Many thanks for your support.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Thanks</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Jeyakumar K</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size: 11p=
t;
          color: rgb(0, 0, 0);" face=3D"Calibri, sans-serif"><b>From:</b>
          Jeyakumar K-[BL.EN.P2VLD22009]
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:bl.en.p2vld22=
009@bl.students.amrita.edu">&lt;bl.en.p2vld22009@bl.students.amrita.edu&g=
t;</a><br>
          <b>Sent:</b> 12 September 2023 11:25<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: Help to build and push bitstream to FPGA
          of USRP codebase</font>
        <div>=C2=A0</div>
      </div>
      <div dir=3D"ltr">
        <div class=3D"x_elementToProof" style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0);">
          Can someone please help here.</div>
        <div class=3D"x_elementToProof" style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0);">
          <br>
        </div>
        <div class=3D"x_elementToProof" style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0);">
          Thanks</div>
        <div class=3D"x_elementToProof" style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0);">
          Jeyakumar</div>
        <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
        <div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:
            11pt; color: rgb(0, 0, 0);" face=3D"Calibri, sans-serif"><b>F=
rom:</b>
            Jeyakumar K-[BL.EN.P2VLD22009]<br>
            <b>Sent:</b> 05 September 2023 21:37<br>
            <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@=
lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
            <b>Subject:</b> Help to build and push bitstream to FPGA of
            USRP codebase</font>
          <div>=C2=A0</div>
        </div>
        <div dir=3D"ltr">
          <div class=3D"x_x_elementToProof" style=3D"font-family: Calibri=
,
            Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
            0, 0);">
            Dear Users,</div>
          <div class=3D"x_x_elementToProof" style=3D"font-family: Calibri=
,
            Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
            0, 0);">
            <br>
          </div>
          <div class=3D"x_x_elementToProof" style=3D"font-family: Calibri=
,
            Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
            0, 0);">
            I tried my best following the instructions provided in build
            manual but the build failed with several attempts.</div>
          <div class=3D"x_x_elementToProof" style=3D"font-family: Calibri=
,
            Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
            0, 0);">
            <br>
          </div>
          <div class=3D"x_x_elementToProof" style=3D"font-family: Calibri=
,
            Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
            0, 0);">
            As part of my final year major project, I have expressed
            interest to work on ettus fpga open source git reporsitory
            for USRP hardware build on FPA and add more features.</div>
          <div class=3D"x_x_elementToProof" style=3D"font-family: Calibri=
,
            Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
            0, 0);">
            <br>
          </div>
          <div class=3D"x_x_elementToProof" style=3D"font-family: Calibri=
,
            Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
            0, 0);">
            Hence can anyone guide me to understand source code at high
            level and how to build them in vivado. I really appreciate
            all your support !</div>
          <div class=3D"x_x_elementToProof" style=3D"font-family: Calibri=
,
            Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
            0, 0);">
            <br>
          </div>
          <div class=3D"x_x_elementToProof" style=3D"font-family: Calibri=
,
            Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
            0, 0);">
            Thanks</div>
          <div class=3D"x_x_elementToProof" style=3D"font-family: Calibri=
,
            Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
            0, 0);">
            Jeyakumar</div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------FjOHU5hvmmVt3MSZ0r3gLRKI--

--===============3894378229461816878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3894378229461816878==--
