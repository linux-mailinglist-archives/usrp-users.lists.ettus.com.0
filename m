Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A9E6A95CF
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 12:08:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3256D384904
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 06:08:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677841718; bh=3DocnJM1+C4/g1I6r7wRvs+p/qfw0N7pfS/KHuh1HlI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=diHBxElSiIF4JAWJwnncUsvWWlOZQ5zdRHH0Iv+RasGc8bq9axUuMLKapoNMSNi7a
	 pAE62e0PA3WWht0TYBkCuvx7n2WxRI9nJcNxp1fjZ1503BYbWAGhHsOF83On09N/LE
	 IL0HRlNLUbEYw/l/ldpbcsM124La5RJoAFKs88FNMgxpDorTL1Snqj4/GtkqpF+3IM
	 z0auFObUtpT1QloYkjAPU1mLmZOJbAcySlHdyctrh87KPelxgROK3MxhW+G4qpSdmo
	 kN4ChPk1NTW8wBpuWvG0pr+FTrAsMRPs6naRp4XHTkJSiWn5gl/LzJw+aoy5unGlco
	 592rybCUo4ADQ==
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 0390138484C
	for <usrp-users@lists.ettus.com>; Fri,  3 Mar 2023 06:08:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="a2zAh8N1";
	dkim-atps=neutral
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-536bbef1c5eso36176467b3.9
        for <usrp-users@lists.ettus.com>; Fri, 03 Mar 2023 03:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1677841682;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2FcWcGqLI0zVZ82Nje4Y8fdG8JlCDDowp4n/Jy6xhqg=;
        b=a2zAh8N1jh0+YGv8hGm8O6adSyd4H0MLC9NfPQyDCqRy6YaWZ3U+NmW9DJegsdDzgk
         9jO59yKt/GZrXGKPJF+GnuXEkRD6cZIE0KDlmh7rw7NeWtEdIlzMi8y/2uvT9kqicanQ
         5gAuPkUQajYoxwYPcu+CHMNMYBmSOAEyDV9/XlgsJYQ3tr7z6iEiMubIrU9JNQYmNcgI
         fKkWXpUYDB69aq2po8N7Ape9tL4YBozTI8HmiO+BeVY6VuxqJDsf7fEXJlB0jMr6oqNa
         PByl7ZfpT+IgqbyQGi1/5XMAFn+zlCl7eiQX4ZpZ5/oqcOKsxF4hGPe65pv1fsnCJtD8
         zaqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677841682;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2FcWcGqLI0zVZ82Nje4Y8fdG8JlCDDowp4n/Jy6xhqg=;
        b=qDmgRqGIiMxkO4JdTUzpjX9ZJ1tAEIqevijn/j0T1OPRt59bpmtCrpqL+HHhYjP8AM
         ue+psQD73s9VgdicjQ58BDG6J7Iv2KcM2PlvtsMRKFWtnIJPpAa1V+mFWRXMNyyts3Ly
         +S08IIhHXIQPHUZcC50Lr4BNM5UysPG24kJr0wuFHoh/FXE9ycfkDbRsK3a3eV4B2ztw
         +KJYec+W/6+7XTMNwNWhiGjlLItugmKMSqj4/DI90Hrf6dbe1ttocPwwlHCofAk5rAQX
         gPZ5rHfmkakQ4Dm93rfC4XYt4/zh0WxW6dyxI+U1zv9bSz7gXATBwYgVSPJnO5BjzRe2
         94WA==
X-Gm-Message-State: AO0yUKUZKKJUlnW90zKE2NbQlCTzfitIZFfG/yfb2P2+EdwxBnxskS9s
	asPby5Dabak/2JpFLD0gkVWzBtgmy6WAgYcx//eraHnL7+YAYZo2ncQ=
X-Google-Smtp-Source: AK7set8yxan6+3LCqwWZ+d2Y4Cuv/RTXyvQK4FaSyoW5Zc1EvmoxzljZ8/1crDqNpktrdedZLJNqhYPJ28yV1Ecb5BI=
X-Received: by 2002:a81:ac28:0:b0:536:55e5:2eaa with SMTP id
 k40-20020a81ac28000000b0053655e52eaamr701644ywh.3.1677841682267; Fri, 03 Mar
 2023 03:08:02 -0800 (PST)
MIME-Version: 1.0
References: <E1188D158AA7A048AF99B6A05DA3D62901B4EFEF75@SPROMMAIL03.spengtes.space>
In-Reply-To: <E1188D158AA7A048AF99B6A05DA3D62901B4EFEF75@SPROMMAIL03.spengtes.space>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Fri, 3 Mar 2023 20:07:51 +0900
Message-ID: <CAL7q81tBz7-d++2iFfcPPZCCp7vyVdONgONj6bHO1Lyj4tJp4w@mail.gmail.com>
To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Message-ID-Hash: EYRNBZ6ZQWLINIGVXDC3N25UTZSKQVIW
X-Message-ID-Hash: EYRNBZ6ZQWLINIGVXDC3N25UTZSKQVIW
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: request for x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EYRNBZ6ZQWLINIGVXDC3N25UTZSKQVIW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2581792147325311390=="

--===============2581792147325311390==
Content-Type: multipart/alternative; boundary="00000000000076132305f5fcf587"

--00000000000076132305f5fcf587
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Maurizio,

Try going through these recovery steps:
https://kb.ettus.com/X300/X310_Device_Recovery

Jonathon

On Fri, Mar 3, 2023 at 7:07 PM STEFANI, Maurizio (External) via USRP-users =
<
usrp-users@lists.ettus.com> wrote:

> HI,
>
> I am using an x310 SDR,
>
> I am able to ping it 192.168.10.2, but if I try to issue: uhd_find-device=
s
> =E2=80=93args addr=3D192.168.10.2, it return:
>
> Linux, GNU C++ version 10.2.1 20201207; Boost_107400; UHD_3.15.0.0-4build=
1
>
> No UHD Devices Found
>
>
>
> Is there someone can help me?
>
> Thank you in advance
>
>
>
> maurizio
> The information in this e-mail is confidential. The contents may not be
> disclosed or used by anyone other than the addressee. Access to this e-ma=
il
> by anyone else is unauthorised.
> If you are not the intended recipient, please notify Airbus immediately
> and delete this e-mail.
> Airbus cannot accept any responsibility for the accuracy or completeness
> of this e-mail as it has been sent over public networks. If you have any
> concerns over the content of this message or its Accuracy or Integrity,
> please contact Airbus immediately.
> All outgoing e-mails from Airbus are checked using regularly updated viru=
s
> scanning software but you should take whatever measures you deem to be
> appropriate to ensure that this message and any attachments are virus fre=
e.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
--=20

Jonathon


*DISCLAIMER: Any attached Code is provided As Is. It has not been tested or
validated as a product, for use in a deployed application or system, or for
use in hazardous environments. You assume all risks for use of the Code.
Use of the Code is subject to terms of the licenses to the UHD or RFNoC
code with which the Code is used. Standard licenses to UHD and RFNoC can be
found at https://www.ettus.com/sdr-software/licenses/
<https://www.ettus.com/sdr-software/licenses/>.*

*NI will only perform services based on its understanding and condition
that the goods or services (i) are not for the use in the production or
development of any item produced, purchased, or ordered by any entity with
a footnote 1 designation in the license requirement column of Supplement
No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
company is not a party to the transaction.  If our understanding is
incorrect, please notify us immediately because a specific authorization
may be required from the U.S. Commerce Department before the transaction
may proceed further.*

--00000000000076132305f5fcf587
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello Maurizio,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Try going through these recovery steps:=C2=A0<div><a href=3D"http=
s://kb.ettus.com/X300/X310_Device_Recovery">https://kb.ettus.com/X300/X310_=
Device_Recovery</a></div></div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Jonathon</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Mar 3, 2023 at 7:07 PM STEFANI, Maurizio (External)=
 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:=
solid;padding-left:1ex;border-left-color:rgb(204,204,204)">





<div lang=3D"IT" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_4054320793069031574WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using an x310 SDR,<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am able to ping it 192.168.10=
.2, but if I try to issue: uhd_find-devices =E2=80=93args addr=3D192.168.10=
.2, it return:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Linux, GNU C++ version 10.2.1 2=
0201207; Boost_107400; UHD_3.15.0.0-4build1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">No UHD Devices Found<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there someone can help me?<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">maurizio<u></u><u></u></span></=
p>
</div>
<font style=3D"font-size:9px;color:rgb(0,0,0)">The information in this e-ma=
il is confidential. The contents may not be disclosed or used by anyone oth=
er than the addressee. Access to this e-mail by anyone else is unauthorised=
.<br>If you are not the intended recipient, please notify Airbus immediatel=
y and delete this e-mail.<br>Airbus cannot accept any responsibility for th=
e accuracy or completeness of this e-mail as it has been sent over public n=
etworks. If you have any concerns over the content of this message or its A=
ccuracy or Integrity, please contact Airbus immediately.<br>All outgoing e-=
mails from Airbus are checked using regularly updated virus scanning softwa=
re but you should take whatever measures you deem to be appropriate to ensu=
re that this message and any attachments are virus free.</font></div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><p style=3D"margin:0in;=
font-family:Calibri,sans-serif"><font style=3D"background-color:rgb(255,255=
,255)" color=3D"#000000">Jonathon</font></p><p style=3D"margin:0in;font-fam=
ily:Calibri,sans-serif"><br></p><p><font size=3D"1" color=3D"#999999"><i><s=
pan style=3D"font-family:Arial,sans-serif">DISCLAIMER: Any attached Code is=
 provided As Is. It has not been tested or validated as a product, for use =
in a deployed application or system, or for use in hazardous environments. =
You assume all risks for use of the Code. Use of the Code is subject to ter=
ms of the licenses to the UHD or RFNoC code with which the Code is used. St=
andard licenses to UHD and RFNoC can be found at=C2=A0<a href=3D"https://ww=
w.ettus.com/sdr-software/licenses/" target=3D"_blank">https://www.ettus.com=
/sdr-software/licenses/</a>.</span></i><u></u><u></u></font></p><p><i><span=
 style=3D"font-family:Arial,sans-serif"><font size=3D"1" color=3D"#999999">=
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.=C2=A0 If our understanding is incorrect, p=
lease notify us immediately because a specific authorization may be require=
d from the U.S. Commerce Department before the transaction may proceed furt=
her.</font></span></i></p></div></div>

--00000000000076132305f5fcf587--

--===============2581792147325311390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2581792147325311390==--
