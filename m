Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E2E4A383A
	for <lists+usrp-users@lfdr.de>; Sun, 30 Jan 2022 19:47:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F928384DBD
	for <lists+usrp-users@lfdr.de>; Sun, 30 Jan 2022 13:47:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="yc/J6OvM";
	dkim-atps=neutral
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id CE0E13844A5
	for <usrp-users@lists.ettus.com>; Sun, 30 Jan 2022 13:46:56 -0500 (EST)
Received: by mail-yb1-f171.google.com with SMTP id i10so33971068ybt.10
        for <usrp-users@lists.ettus.com>; Sun, 30 Jan 2022 10:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q8GMCgGJ7u5WvfXXTmzIwugOW4M4CxLTKqQ0yWJ5B28=;
        b=yc/J6OvMU0b4NpjT9zrrHLwGZCY70WyY5y3SioxtWRxAT7/rEyjBnAv+ogIfZpbNNw
         Qp+ROGGjgb+F05A6Q6+ifr4OzNlMAigerFEdDdzgdH6YG8T/bRvIFb3if8CiG4JIDMP4
         pfIKKAXETYvu2cxqYPEVyns0/TUxSpBvTLPpXbbbmvMNy7XqSFgPqXRJ9K5hZryDYieP
         bhcI8umm9av1T95E6w0k7p6mA8smXZHTvWZwAJnxVHpjvOVG60eDwa34gyUbNE5KcNOl
         kQbeyQPCF5bnKgLPCUt0pBP6rQmRlQVSRe5KdQvhsKpVsvhFXT6LWJv0s4DJt41qrpIV
         gj7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q8GMCgGJ7u5WvfXXTmzIwugOW4M4CxLTKqQ0yWJ5B28=;
        b=RoqIbMHCFGEY6OslHUR1+Y7vyeNyrMF0pYhONkUC1r6Ncl78BRfxKA3SVf/4J3Larr
         3GaWSULmU0vsk+YRkhmq1FqB+OUZh1VjlsTutkByqq4UN2CJqB0mHMKdbfaTnVmnx1gT
         5TMWKKc1gVSwZ1Got/ld457wkk2DkDTgVEypmjctldI0WjI5i4MKhKxdhpYesk5p2eop
         EeurK2vGU1aJDJb4l8+4dnllPhjMgMOoVl4wlG7DfiaUMWDxGEKUnVXocJQn1/ULzDtq
         UPSRux2TTS/pI9l4/szNW/NwP8sCMWMpl1HREFGHGeUA+2wSUOhkwcBz7U0S6VR4Dd5I
         gMvA==
X-Gm-Message-State: AOAM532ZOBLUTQcqLogLgyD+TiAfJQE+JrmGVYBBse+NtZGzAc5ALJbC
	lBx5gbdLyFRwcM/+el5F84BmmKNHayl4X3MtFg45WMfA
X-Google-Smtp-Source: ABdhPJxHxGYj06aigdmwPZ37Q1nr+Nccq/I7+Li3Y/WdfVdTfgW/gPbuOkAIKXKE7NzSIweNcmOO3KUjHKjbhDUoucs=
X-Received: by 2002:a25:e0d4:: with SMTP id x203mr16296782ybg.719.1643568416169;
 Sun, 30 Jan 2022 10:46:56 -0800 (PST)
MIME-Version: 1.0
References: <DB8P194MB06314633F0EC4389D4DDBCB0AA249@DB8P194MB0631.EURP194.PROD.OUTLOOK.COM>
 <c477e389-5e0f-9e1a-b372-c2b262336adc@gmail.com>
In-Reply-To: <c477e389-5e0f-9e1a-b372-c2b262336adc@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sun, 30 Jan 2022 12:46:41 -0600
Message-ID: <CAFche=iaKz0itfTMg0Tx=cSm7pTod2G1KZUKud29NOXKBg=4Sg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: TICVKBFYPOJ6WVGIU5I5ZJORH667YKMI
X-Message-ID-Hash: TICVKBFYPOJ6WVGIU5I5ZJORH667YKMI
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x300 fw communication failure error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TICVKBFYPOJ6WVGIU5I5ZJORH667YKMI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0162456357214335394=="

--===============0162456357214335394==
Content-Type: multipart/alternative; boundary="0000000000009c359b05d6d1173f"

--0000000000009c359b05d6d1173f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I know this can happen if the number of samples per packet (SPP) is too
large for your configuration. You could try manually setting a smaller SPP
value, say 300, and see if that works. More information about your setup
would be helpful.

Wade


On Sun, Jan 30, 2022 at 11:02 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-30 07:46, Dmitry Kupchinetsky wrote:
>
> Hi,
>
> during receive samples from usrp following error occur:
>
>
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
> [ERROR] [UHD] An unexpected exception was caught in a task loop.The task
> loop will now exit, things may not work.EnvironmentError: IOError:
> 192.168.40.2: x300 fw communication failure #3
>
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
>
>
>
> After this error there's no communication between host and usrp. What is =
a
> root cause of this error and does exist any work around?
>
>
>
> Regards,
>
> Kupchinetsky Dmitry.
> This e-mail and any attachments thereto (the =E2=80=9CMessage=E2=80=9D) c=
ontains
> proprietary, business sensitive, confidential or otherwise protected by l=
aw
> information. If you are not the intended recipient of this Message, you a=
re
> hereby notified that any review, dissemination, distribution, taking of a=
ny
> action in reliance upon or copying of this Message is strictly prohibited=
.
> If you have received this Message in error, please notify the sender by
> replying to this message or by telephone and permanently delete the
> original and copy of this Message. Electronic messages are not secure or
> error free and can contain viruses or may be delayed, and the sender is n=
ot
> liable for any of these occurrences. Thank you.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> So, a few questions:
>
> Does this happen immediately on start-up, or only after a considerable
> period?
>
> What sample rate(s)?
>
> Are you using the 1G or 10G interface?
>
> What type of host network card are you using?  Do you know if it's based
> on the Intel 82579LM chip?
>
> What version of UHD are you running?
>
> Are the error counters increasing on your networking interface?    On
> linux you can use "ifconfig" or "ip -s link" to display error statistics
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009c359b05d6d1173f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I know this can happen if the number of samples per p=
acket (SPP) is too large for your configuration. You could try manually set=
ting a smaller SPP value, say 300, and see if that works. More information =
about your setup would be helpful.<br></div><div><br></div><div>Wade<br></d=
iv><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sun, Jan 30, 2022 at 11:02 AM Marcus D. Leech &lt;<a href=3D"mail=
to:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-01-30 07:46, Dmitry
      Kupchinetsky wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">Hi,<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">during
          receive samples from usrp following error occur:<u></u><u></u></p=
>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed"><span dir=3D"RTL" style=3D"font-family:&quot;Arial&quot;,san=
s-serif" lang=3D"HE"><u></u>=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed"><span dir=3D"LTR"></span><span dir=3D"LTR"></span><span dir=
=3D"LTR"></span><span dir=3D"LTR"></span>[ERROR] [X300] <a href=3D"http://1=
92.168.40.2" target=3D"_blank">192.168.40.2</a>: x300 fw
          communication failure #1<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">EnvironmentError:
          IOError: x300 fw poke32 - reply timed out<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">[ERROR]
          [X300] <a href=3D"http://192.168.40.2" target=3D"_blank">192.168.=
40.2</a>: x300 fw communication failure #2<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">EnvironmentError:
          IOError: x300 fw poke32 - reply timed out<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">[ERROR]
          [X300] <a href=3D"http://192.168.40.2" target=3D"_blank">192.168.=
40.2</a>: x300 fw communication failure #3<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">EnvironmentError:
          IOError: x300 fw poke32 - reply timed out<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">[ERROR]
          [UHD] An unexpected exception was caught in a task loop.The
          task loop will now exit, things may not work.EnvironmentError:
          IOError: <a href=3D"http://192.168.40.2" target=3D"_blank">192.16=
8.40.2</a>: x300 fw communication failure #3<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">EnvironmentError:
          IOError: x300 fw poke32 - reply timed out<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed"><span dir=3D"RTL" style=3D"font-family:&quot;Arial&quot;,san=
s-serif" lang=3D"HE"><u></u>=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">After
          this error there&#39;s no communication between host and usrp.
          What is a root cause of this error and does exist any work
          around?<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed"><span dir=3D"RTL" style=3D"font-family:&quot;Arial&quot;,san=
s-serif" lang=3D"HE"><u></u>=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">Regards,<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unico=
de-bidi:embed">Kupchinetsky
          Dmitry.<u></u><u></u></p>
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
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
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
    What type of host network card are you using?=C2=A0 Do you know if it&#=
39;s
    based on the Intel 82579LM chip?<br>
    <br>
    What version of UHD are you running?<br>
    <br>
    Are the error counters increasing on your networking interface?=C2=A0=
=C2=A0=C2=A0
    On linux you can use &quot;ifconfig&quot; or &quot;ip -s link&quot; to =
display error
    statistics<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009c359b05d6d1173f--

--===============0162456357214335394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0162456357214335394==--
