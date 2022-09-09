Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6B55B4133
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 23:03:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ACD27383FE8
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 17:03:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662757412; bh=Crx2IuYztiU3s4dvHFgqV0pduQChKPwzsZ4VgqpGka8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=C8NLa46duvk1qTx7Auv9IW3j4/aq3BUIJVfoLRXY914/fm9f33qKmCJp5pARSor6T
	 SNujsznSDIfuJGbiMvkNaaLNdSnlizpNfWyRNKV7Na7cuqX+8hpOyqQ296tXizhQ8y
	 ye6ao8FWc2InR3SlpnbXlrFI9mOE8vv/g0UsbfkPREhBGNZNgNfVN4RsYHyQSZyVy3
	 V9klWXgzD6oRSTIirBmUjoFfgMRX5K33QpBDApXWzu6fQ6b+234IJ5OyEPTRhIjKV+
	 eicS31jCBWsH6uvmyTlAWcxGxOsEPvhR/1RIGJkvBqJCAJHL24iZcrqJuHX0/ZQRRN
	 aT/h5vOOWQbgw==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id D1EE7380A90
	for <usrp-users@lists.ettus.com>; Fri,  9 Sep 2022 17:02:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AgqyCf/8";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id d17so1362795qko.13
        for <usrp-users@lists.ettus.com>; Fri, 09 Sep 2022 14:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=zk3VROaW6gZ256gwTQtaaxwMTm2ah1/EhqJbEEm331E=;
        b=AgqyCf/8EVbWSICteNa7il/IhZrQbYZMhJ/o95lNvHB8UytoPwA/AcC+mdoaGHEm5v
         KL6S/AP3D/W9m+RGlzgxYSWXw8ZQWfWL3NqQ+4XwUHFMKBakSlYO9xALM80dkmYioBO4
         RY4KNJffWYaRco0bv9cSQHa0eaAxRvA4IPNXXtM5onsn4+YEL8wEpEuIFYNDefnU1ytj
         7UtMDH50IrdhNDU7tXEbZ4Sv1BbRBZQQ5KtjvJLj8IeJhOhe7fjsD9TaU/9mRJjW8UNS
         CsI8ij9b1z4RNEGt2ylpyGHVT+V1nWngTd4M4qFfxRZT8cYUJ+WVcNnHM4K0BQ04OYg9
         WdqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=zk3VROaW6gZ256gwTQtaaxwMTm2ah1/EhqJbEEm331E=;
        b=MeeRI4fB8n/0oURdqwwRjS67WoOo+eBwLKYRXNTxhlOl5jRe2xAraGa5QPpfg05RfR
         WK7XiHC7gWd2rSFi3l6+Om5hODDwVh9ujfAdMw4rUKv8EzEx1ibD8wkG5ciyAvOoMztZ
         wcblOrSq3wBVu1XChmOkwCDB5ivkKQCfWZbQhP+W6bINo7g+WFBdosNqtI6ok1W42ngk
         jQUo2ssHz6IBG4ioAV0Dypn8GVMQhod+Bp9ws9MMFOxNitVQ0V2iXdkQWEbCtoCh1/46
         7O+9OnpxjCdxyneJsOBqqLdb20nazcEC4qexmtg+QUfD8pfVi/5rzMYrlyZYutNpHPMU
         otNA==
X-Gm-Message-State: ACgBeo04bfiGvKcg+rSvHo/KpxgtANZUa3zUqGhAnb/1tqKAN6GdEaRi
	dw3PgBsh7+dOuIBFPUS62irU8kULBrw=
X-Google-Smtp-Source: AA6agR7YN9Gxuuzya8qr2bEZsRfxCb6Bjj5Zrtt9PYCr6owRfiKhOYXYFfKKUu4JsvBu/0tbudZICw==
X-Received: by 2002:a05:620a:134f:b0:6bb:ffc4:d5b3 with SMTP id c15-20020a05620a134f00b006bbffc4d5b3mr11394550qkl.327.1662757361872;
        Fri, 09 Sep 2022 14:02:41 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id j25-20020ac84c99000000b0031eb393aa45sm1041892qtv.40.2022.09.09.14.02.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 14:02:41 -0700 (PDT)
Message-ID: <29a62891-c39f-5fe0-1b8b-6a57f2fb4c9a@gmail.com>
Date: Fri, 9 Sep 2022 17:02:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <u4HHGTVa5Hqj39nTNDiBDX01T3CQ5cslzAWc9k02cjM@lists.ettus.com>
 <BN2P110MB1747706C0DC81186F4442A64B7439@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB1747706C0DC81186F4442A64B7439@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: 33JJYZ5EAOPFHJGVGFP4MLVAU57ZRWHN
X-Message-ID-Hash: 33JJYZ5EAOPFHJGVGFP4MLVAU57ZRWHN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320: Periodic phase jumps w/ any external clock?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/33JJYZ5EAOPFHJGVGFP4MLVAU57ZRWHN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7435741212510278745=="

This is a multi-part message in MIME format.
--===============7435741212510278745==
Content-Type: multipart/alternative;
 boundary="------------7st0FMYRsglxl0iy8eyP0ACT"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7st0FMYRsglxl0iy8eyP0ACT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-09 14:33, David Raeman wrote:
>
> > In case you try turning off GPSDO on E320 please share info if it hel=
ps.
>
> Hi Piotr,
>
> I was able to disable the power rail for the GPSDO and confirmed it=20
> resolves this issue. So the problem is correlated with GPSDO activity=20
> in some way, even though its TCXO net is de-selected at the clock=20
> selection switch (U55). I=E2=80=99d be curious to probe some pins on th=
e board=20
> to observe the clock signal as it moves through the clocking=20
> front-end. Unfortunately my E320 cannot be removed from its chassis at=20
> the moment, but perhaps I=E2=80=99ll take a look when I get an opportun=
ity later.
>
> Unfortunately the enable_gps arg is not honored upon connection to an=20
> MPM device =E2=80=93 the power state of the GPSDO on the E320 is establ=
ished=20
> when the MPM daemon is started on the radio at power-on, and (as far=20
> as I can see) it cannot be changed on a per-session basis. I=E2=80=99ve=
=20
> prepared a small UHD patch that allows the enable_gps arg to be used=20
> at session initialization. Then an application (such as mine) could=20
> choose to disable the GPSDO at run-time when using an external clock,=20
> or leave it powered up otherwise.
>
> One final observation, this problem is alluded to as a known issue on=20
> the B2xx radios [1], but is not documented for the E320.
>
> -David
>
> [1] https://files.ettus.com/manual/page_usrp_b200.html#b200_known_issue=
s
>
>
I had totally forgotten about that restriction, and it has to do (AFAIR)=20
with how the refclock line is shared between the two inputs.


> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------7st0FMYRsglxl0iy8eyP0ACT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-09 14:33, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB1747706C0DC81186F4442A64B7439@BN2P110MB1747.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}p.MsoPlainText, li.MsoPlainText, div.MsoPlain=
Text
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoPlainText">&gt; In case you try turning off GPSDO
          on E320 please share info if it helps.<o:p></o:p></p>
        <p class=3D"MsoPlainText"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoPlainText">Hi Piotr,<o:p></o:p></p>
        <p class=3D"MsoPlainText"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoPlainText">I was able to disable the power rail fo=
r
          the GPSDO and confirmed it resolves this issue. So the problem
          is correlated with GPSDO activity in some way, even though its
          TCXO net is de-selected at the clock selection switch (U55).
          I=E2=80=99d be curious to probe some pins on the board to obser=
ve the
          clock signal as it moves through the clocking front-end.
          Unfortunately my E320 cannot be removed from its chassis at
          the moment, but perhaps I=E2=80=99ll take a look when I get an
          opportunity later.<o:p></o:p></p>
        <p class=3D"MsoPlainText"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoPlainText">Unfortunately the enable_gps arg is not
          honored upon connection to an MPM device =E2=80=93 the power st=
ate of
          the GPSDO on the E320 is established when the MPM daemon is
          started on the radio at power-on, and (as far as I can see) it
          cannot be changed on a per-session basis. I=E2=80=99ve prepared=
 a
          small UHD patch that allows the enable_gps arg to be used at
          session initialization. Then an application (such as mine)
          could choose to disable the GPSDO at run-time when using an
          external clock, or leave it powered up otherwise.<o:p></o:p></p=
>
        <p class=3D"MsoPlainText"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoPlainText">One final observation, this problem is
          alluded to as a known issue on the B2xx radios [1], but is not
          documented for the E320.<o:p></o:p></p>
        <p class=3D"MsoPlainText"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoPlainText">-David<o:p></o:p></p>
        <p class=3D"MsoPlainText"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoPlainText">[1] <a
href=3D"https://files.ettus.com/manual/page_usrp_b200.html#b200_known_iss=
ues"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
https://files.ettus.com/manual/page_usrp_b200.html#b200_known_issues</a><=
o:p></o:p></p>
        <p class=3D"MsoPlainText"><o:p>=C2=A0</o:p></p>
      </div>
      <br>
    </blockquote>
    I had totally forgotten about that restriction, and it has to do
    (AFAIR) with how the refclock line is shared between the two inputs.<=
br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB1747706C0DC81186F4442A64B7439@BN2P110MB1747.NAMP110.=
PROD.OUTLOOK.COM">
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
    <br>
  </body>
</html>

--------------7st0FMYRsglxl0iy8eyP0ACT--

--===============7435741212510278745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7435741212510278745==--
