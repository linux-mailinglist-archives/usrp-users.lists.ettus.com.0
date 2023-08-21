Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB3E782C9E
	for <lists+usrp-users@lfdr.de>; Mon, 21 Aug 2023 16:49:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 926F5380BF9
	for <lists+usrp-users@lfdr.de>; Mon, 21 Aug 2023 10:49:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692629388; bh=ppfBSC78FG9aly/Q1BB1Fqtwgk+DUpowKitK2RWQ8wM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WvFc2/qyQ/v9zu8ibSmf5YB/lIZciaFdSOJ77ax9lLg49EJ40AimC17QprtQYdNRw
	 fZDmy1X5/446oepVwDxv0LQxfMr5Sm+cAuAh1lVheuz8nM6PIUgW5VYGhrdxepjXjF
	 gCtJIWS5MLQZX8SGbGbIQHdAYuu6FsYzzijzjgE8cO3B+rEd20q01ztrjs+BF39B2p
	 xymYnRz0ABWDJwAkOlrVHDQ0QMmkRkWYdGQ4frrwwKKZu7NZPdzhtmwpzxjjnHYfI5
	 cZXkY8nkXPbyLvS9gflEd6Vvo4xp/CyqlpQNTyjp6liCuBUbuWljqLBMBE1kky4L5r
	 w6fftNa5qr/Ig==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id DB27D380B68
	for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 10:49:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cIOy+T9S";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-76db0439387so3580685a.3
        for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 07:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692629375; x=1693234175;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lm2OJ46jQWGZbKZg7/0ZSMkOqqGLtEkieUR9jifhad8=;
        b=cIOy+T9SZAuj+H/kDbPpf/RiXmiqX8eCaA4A42GmkGAZsRYJ3WicYWYnZZXWvK7aHO
         eE392o2iE3JNJjw6S8So9MW04q9NBMFvKcPp1DDew0YMYAjyeDz2lsemMZGX0cAkZIdC
         undhtp189ciSy54XdNuT/TqMzlSO6ZKtFptpB7SGc7PC7H2AWdWGjnXEuqqf+tdbGFzu
         TfrcIqzojVEAue2pl1MGHy7EHPg/WXZXInorF/r8CdFYNf3RW2+0YclDv3MXQmGuppA+
         Fy7j9HCJTY+DlXoJv+/PPK3wryn+TfWLUk0urEbCERfm9ul5MVUcYd+MiRE37txYEf0V
         NzOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692629375; x=1693234175;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Lm2OJ46jQWGZbKZg7/0ZSMkOqqGLtEkieUR9jifhad8=;
        b=aG5x+BJjrJFBOuyEUkRA+cBcpC+jaoShbJpdiWbxtneS2XBagcDi/enB0kT3vbO1Du
         /zGEC4xjNNXxVvdFUrh8qTwSMrOiSbjCrRfPKWgAXXQKa1bRrWBg/XhF891oSTUUUhXh
         G6ScO19RWipt7DvlM8razUQYmB/RVfnt93R+p4UYNEc+qrZvB/f60y4snknREDK/UhCx
         LhuKwFCGco/GxHY9aW5FWGYnKcz6lrU0/6z9NvM7uO8Y810tVcg3nWL4mGbkpiIW1qTy
         uWxqbO4NXTDqDymqMMHqVPRqVsDJPjtuGNuYhCKHQcFhpECHxUSLxSFwKfEpqT5cfsqA
         JpvQ==
X-Gm-Message-State: AOJu0Yw+Xug670j0OxqrD59J5+65oG/nOsFkfz7cCbjHP0Wy5f1A98nS
	7sVoGodCUuATDP650jH172lwiqFi460=
X-Google-Smtp-Source: AGHT+IGDLt8FNAGFpfnPON664WtqHSKLzRX/nRaWrHyMIMF3PurqoAgmJkm18WYwdfE7qwVVutSMSA==
X-Received: by 2002:a0c:aa99:0:b0:64e:329c:4459 with SMTP id f25-20020a0caa99000000b0064e329c4459mr5967565qvb.6.1692629374746;
        Mon, 21 Aug 2023 07:49:34 -0700 (PDT)
Received: from [192.168.2.174] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id d24-20020a0caa18000000b00623839cba8csm2567324qvb.44.2023.08.21.07.49.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 07:49:34 -0700 (PDT)
Message-ID: <6b0c0c05-272b-dd90-b9ba-00925bb43304@gmail.com>
Date: Mon, 21 Aug 2023 10:49:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <59e265b257f840788dd9cde7795909fe@iis.fraunhofer.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <59e265b257f840788dd9cde7795909fe@iis.fraunhofer.de>
Message-ID-Hash: 2GQAFNWTGBOTXRHWR2XLBDKA6QAROPTW
X-Message-ID-Hash: 2GQAFNWTGBOTXRHWR2XLBDKA6QAROPTW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: strange behavior of FFT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2GQAFNWTGBOTXRHWR2XLBDKA6QAROPTW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5200159289452935527=="

This is a multi-part message in MIME format.
--===============5200159289452935527==
Content-Type: multipart/alternative;
 boundary="------------6Vu0upgjM4fU01UmdAUUl18z"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6Vu0upgjM4fU01UmdAUUl18z
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 21/08/2023 09:04, Bachmaier, Luca wrote:
>
> Hello everyone,
>
> I=E2=80=99m currently running into issues while trying to use the RFNoC=
 FFT=20
> block in GNU Radio. A picture of my GNU Radio flowgraph and its QT GUI=20
> Vector Sink output are attached.
>
> The configuration of UHD / my USRP should be correct as there are no=20
> problems when I stream the RFNoC RX Radio Data to my host and=20
> calculate the FFT on the host. However, when I try calculating the FFT=20
> on the FPGA, the output seems to make no sense. I can=E2=80=99t see a n=
oise=20
> floor or any proper signals. There=E2=80=99s just a randomly appearing =
and=20
> disappearing DC spike. Other than that, the spectrum is just a flat=20
> line (see vector_sink.png).
>
> I think that this problem comes from some faulty configuration of the=20
> RFNoC FFT block. Unfortuantely, I haven=E2=80=99t been able to find any=
=20
> helpful and up-to-date information about its usage online. I would be=20
> very glad to get some help from this mailing list.
>
> Thank you and regards
>
> Luca
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You could try increasing the gain--it may be that due to the integer=20
implementation of the FFT, the signal levels are dropping below
 =C2=A0 the minimum quantization.


--------------6Vu0upgjM4fU01UmdAUUl18z
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/08/2023 09:04, Bachmaier, Luca
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:59e265b257f840788dd9cde7795909fe@iis.fraunhofer.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m currently=
 running
            into issues while trying to use the RFNoC FFT block in GNU
            Radio. A picture of my GNU Radio flowgraph and its QT GUI
            Vector Sink output are attached.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The configuration of =
UHD
            / my USRP should be correct as there are no problems when I
            stream the RFNoC RX Radio Data to my host and calculate the
            FFT on the host. However, when I try calculating the FFT on
            the FPGA, the output seems to make no sense. I can=E2=80=99t =
see a
            noise floor or any proper signals. There=E2=80=99s just a ran=
domly
            appearing and disappearing DC spike. Other than that, the
            spectrum is just a flat line (see vector_sink.png).<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I think that this
            problem comes from some faulty configuration of the RFNoC
            FFT block. Unfortuantely, I haven=E2=80=99t been able to find=
 any
            helpful and up-to-date information about its usage online. I
            would be very glad to get some help from this mailing list.<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you and regards=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Luca<o:p></o:p></span=
></p>
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
    You could try increasing the gain--it may be that due to the integer
    implementation of the FFT, the signal levels are dropping below<br>
    =C2=A0 the minimum quantization.<br>
    <br>
    <br>
  </body>
</html>

--------------6Vu0upgjM4fU01UmdAUUl18z--

--===============5200159289452935527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5200159289452935527==--
