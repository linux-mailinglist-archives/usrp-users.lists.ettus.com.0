Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6BD4A37CC
	for <lists+usrp-users@lfdr.de>; Sun, 30 Jan 2022 18:02:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2B543847E2
	for <lists+usrp-users@lfdr.de>; Sun, 30 Jan 2022 12:02:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EmXuVick";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id CF6533847B7
	for <usrp-users@lists.ettus.com>; Sun, 30 Jan 2022 12:01:46 -0500 (EST)
Received: by mail-qk1-f170.google.com with SMTP id w8so9991495qkw.8
        for <usrp-users@lists.ettus.com>; Sun, 30 Jan 2022 09:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=iw37mvAGiEjiKl2VtQSgcCS6HGCU1zUCIQm3e7Bosao=;
        b=EmXuVickafJWLVmP5ErVFUSm9S2ksKqlBE4AlKFjvPjxGTJXEJbV/RnJEltPjxK1KA
         qBsWhCq0s2zdP7RAyaADUkhuyQ+B3cJwaERunNls+WJ8rF9BE/9g8m0spjSHgfHfaO2L
         rilDC9t7sZajtStYb3FU6rAvwO4H7N4vry7Mnekr8/nrsyfc0SOfFn4GOXn2rt2hlaqd
         GeLKpAw/96xf+C4sdOOzaF0ZCGTXbqcALnkCd1fTh0CJxqPi4J2jTyydpkyJJ7E/l4dy
         9oXEbbdGhxFpyzAM0ZtfdokGSeObr++KH2dly+DOeKlgjdKBnWpfqEn/REVGauvK2QVM
         rELg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=iw37mvAGiEjiKl2VtQSgcCS6HGCU1zUCIQm3e7Bosao=;
        b=bTpjfZLOQLLeEH9/7Uq5u88SvBbWG/KUP9Eq0fTws5WbJI15TCubxO7xyoFB8V2jOs
         KcxcqdN3yJEEU2sk675bCIoWs/ltricNOSjHzoKKlKsHy+8FfQYxDL9KheQiPM4ZwAUi
         u4J70q11EC25HTFPnSUh98157FCo7cfACFnYEfGF+XnFhNH0DMj0NcSY6GiRcouHgafS
         wkwsNT1stx1eHVCFEFU9PKUrNBuGlYktHZlF1aRkfSqM2K8GVHzmcaVCQvl5YErHDChn
         xXSUiPs29PuHZPvNF9lMWLsrIXkLkJwl+hRZCO3m6LModXRKd9rSOfTNn99464PPL5ku
         mrbQ==
X-Gm-Message-State: AOAM531DB6qyYJisXKy1eFw/7g31D60z3kM3BwrQzFElVQD+rO6VBRDB
	kb+/8u32LQcTTQ/umLSxRAYRlFcCexeq3g==
X-Google-Smtp-Source: ABdhPJxkVcBp1d27YGKUFeUvmeLDuteSr/qyv1t4Y7qHJ9ooN8hOH9BKC2DrhOdiSgwd6cMrTnuXfQ==
X-Received: by 2002:a05:620a:450c:: with SMTP id t12mr11194558qkp.343.1643562105865;
        Sun, 30 Jan 2022 09:01:45 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id bp37sm7322065qkb.135.2022.01.30.09.01.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jan 2022 09:01:45 -0800 (PST)
Message-ID: <c477e389-5e0f-9e1a-b372-c2b262336adc@gmail.com>
Date: Sun, 30 Jan 2022 12:01:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DB8P194MB06314633F0EC4389D4DDBCB0AA249@DB8P194MB0631.EURP194.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DB8P194MB06314633F0EC4389D4DDBCB0AA249@DB8P194MB0631.EURP194.PROD.OUTLOOK.COM>
Message-ID-Hash: OYPNGQXDAPVKWWI4IDQLZY7VZHUDJZNP
X-Message-ID-Hash: OYPNGQXDAPVKWWI4IDQLZY7VZHUDJZNP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x300 fw communication failure error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OYPNGQXDAPVKWWI4IDQLZY7VZHUDJZNP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2312364828640914609=="

This is a multi-part message in MIME format.
--===============2312364828640914609==
Content-Type: multipart/alternative;
 boundary="------------tj6MzEj3Yt6xtZYZNKhDkQC0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------tj6MzEj3Yt6xtZYZNKhDkQC0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-30 07:46, Dmitry Kupchinetsky wrote:
>
> Hi,
>
> during receive samples from usrp following error occur:
>
> [ERROR] [X300] 192.168.40.2: x300 fw communication failure #1
>
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
>
> [ERROR] [X300] 192.168.40.2: x300 fw communication failure #2
>
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
>
> [ERROR] [X300] 192.168.40.2: x300 fw communication failure #3
>
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
>
> [ERROR] [UHD] An unexpected exception was caught in a task loop.The=20
> task loop will now exit, things may not work.EnvironmentError:=20
> IOError: 192.168.40.2: x300 fw communication failure #3
>
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
>
> After this error there's no communication between host and usrp. What=20
> is a root cause of this error and does exist any work around?
>
> Regards,
>
> Kupchinetsky Dmitry.
>
> This e-mail and any attachments thereto (the =E2=80=9CMessage=E2=80=9D)=
 contains=20
> proprietary, business sensitive, confidential or otherwise protected=20
> by law information. If you are not the intended recipient of this=20
> Message, you are hereby notified that any review, dissemination,=20
> distribution, taking of any action in reliance upon or copying of this=20
> Message is strictly prohibited. If you have received this Message in=20
> error, please notify the sender by replying to this message or by=20
> telephone and permanently delete the original and copy of this=20
> Message. Electronic messages are not secure or error free and can=20
> contain viruses or may be delayed, and the sender is not liable for=20
> any of these occurrences. Thank you.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
So, a few questions:

Does this happen immediately on start-up, or only after a considerable=20
period?

What sample rate(s)?

Are you using the 1G or 10G interface?

What type of host network card are you using?=C2=A0 Do you know if it's b=
ased=20
on the Intel 82579LM chip?

What version of UHD are you running?

Are the error counters increasing on your networking interface? On linux=20
you can use "ifconfig" or "ip -s link" to display error statistics


--------------tj6MzEj3Yt6xtZYZNKhDkQC0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-30 07:46, Dmitry
      Kupchinetsky wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:DB8P194MB06314633F0EC4389D4DDBCB0AA249@DB8P194MB0631.EURP194.=
PROD.OUTLOOK.COM">
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
	text-align:right;
	direction:rtl;
	unicode-bidi:embed;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">Hi,<=
o:p></o:p></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">duri=
ng
          receive samples from usrp following error occur:<o:p></o:p></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed"><spa=
n
            dir=3D"RTL" style=3D"font-family:&quot;Arial&quot;,sans-serif=
"
            lang=3D"HE"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed"><spa=
n
            dir=3D"LTR"></span><span dir=3D"LTR"></span><span dir=3D"LTR"=
></span><span
            dir=3D"LTR"></span>[ERROR] [X300] 192.168.40.2: x300 fw
          communication failure #1<o:p></o:p></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">Envi=
ronmentError:
          IOError: x300 fw poke32 - reply timed out<o:p></o:p></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">[ERR=
OR]
          [X300] 192.168.40.2: x300 fw communication failure #2<o:p></o:p=
></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">Envi=
ronmentError:
          IOError: x300 fw poke32 - reply timed out<o:p></o:p></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">[ERR=
OR]
          [X300] 192.168.40.2: x300 fw communication failure #3<o:p></o:p=
></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">Envi=
ronmentError:
          IOError: x300 fw poke32 - reply timed out<o:p></o:p></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">[ERR=
OR]
          [UHD] An unexpected exception was caught in a task loop.The
          task loop will now exit, things may not work.EnvironmentError:
          IOError: 192.168.40.2: x300 fw communication failure #3<o:p></o=
:p></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">Envi=
ronmentError:
          IOError: x300 fw poke32 - reply timed out<o:p></o:p></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed"><spa=
n
            dir=3D"RTL" style=3D"font-family:&quot;Arial&quot;,sans-serif=
"
            lang=3D"HE"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">Afte=
r
          this error there's no communication between host and usrp.
          What is a root cause of this error and does exist any work
          around?<o:p></o:p></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed"><spa=
n
            dir=3D"RTL" style=3D"font-family:&quot;Arial&quot;,sans-serif=
"
            lang=3D"HE"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">Rega=
rds,<o:p></o:p></p>
        <p class=3D"MsoNormal"
          style=3D"text-align:left;direction:ltr;unicode-bidi:embed">Kupc=
hinetsky
          Dmitry.<o:p></o:p></p>
      </div>
      This e-mail and any attachments thereto (the =E2=80=9CMessage=E2=80=
=9D) contains
      proprietary, business sensitive, confidential or otherwise
      protected by law information. If you are not the intended
      recipient of this Message, you are hereby notified that any
      review, dissemination, distribution, taking of any action in
      reliance upon or copying of this Message is strictly prohibited.
      If you have received this Message in error, please notify the
      sender by replying to this message or by telephone and permanently
      delete the original and copy of this Message. Electronic messages
      are not secure or error free and can contain viruses or may be
      delayed, and the sender is not liable for any of these
      occurrences. Thank you.
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
    So, a few questions:<br>
    <br>
    Does this happen immediately on start-up, or only after a
    considerable period?<br>
    <br>
    What sample rate(s)?<br>
    <br>
    Are you using the 1G or 10G interface?<br>
    <br>
    What type of host network card are you using?=C2=A0 Do you know if it=
's
    based on the Intel 82579LM chip?<br>
    <br>
    What version of UHD are you running?<br>
    <br>
    Are the error counters increasing on your networking interface?=C2=A0=
=C2=A0=C2=A0
    On linux you can use "ifconfig" or "ip -s link" to display error
    statistics<br>
    <br>
    <br>
  </body>
</html>

--------------tj6MzEj3Yt6xtZYZNKhDkQC0--

--===============2312364828640914609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2312364828640914609==--
