Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 548535BDBD8
	for <lists+usrp-users@lfdr.de>; Tue, 20 Sep 2022 06:54:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ED82F38407D
	for <lists+usrp-users@lfdr.de>; Tue, 20 Sep 2022 00:54:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663649690; bh=tWxtVipwwXwxcg9axr6O4ERZaSR2M/uybT9RMMOs4Qg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LDnx/WIDU1AlA2WcK+fA9S8vHx4ByoisKpe899Xfx9bgVcHlyePJ6QsdcKVZn4ya2
	 wIWu2YbM+oqk/ghlJa6EAAA6C3DsB4qMDKtrTMOlRsbwoD4UV4nhOI0wO0+xZOJWuc
	 X/eOcjyokFtWDEQJLaez3eWJBDCKUSbi0TaPaTyaQ+nO4AIqOmaFm5iOWVXRZ+vqxR
	 Fnk1DnbhMVijzRWmzy1CaqVq/9bvbk6yUVa7Qqx1jbl6A5h8dXsFFsrnlF6eIquCtI
	 nTnfaKEFutBNXmonRG3Dk95AbjBaqsE0F/dVdaMYygvpZzE5Sb7DYumbRYWH4pMLsD
	 4z1Hr7svYJc9g==
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D725383FD4
	for <usrp-users@lists.ettus.com>; Tue, 20 Sep 2022 00:53:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="XMWRs+HW";
	dkim-atps=neutral
Received: by mail-vs1-f54.google.com with SMTP id u189so1839713vsb.4
        for <usrp-users@lists.ettus.com>; Mon, 19 Sep 2022 21:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=xNtjlN00qm+F9YLeaVK4zGsuM9dIE3Sw4iN+xiq5yVQ=;
        b=XMWRs+HWvh/1qRZ4NnDgm/6kyj/pjkeg4JFKxULwa3Z6eKHCj4LSu7zmH63WPunBBz
         l+4p7VibkGNUyDy6RVHnTx9Ir/QG9ZTUPAdJcRKw2m6FqYb4AJ/A9/IC+NcH8XBRUSuA
         Pdy2pR53VMHzHbUnDT1TgwueTRTI4Bi0jeP0Uujpge24GplAyXnJhmP7ahbMrshX7Ja4
         jOEB8WYh1tyQs+YERfoK7w41xFSBuEQ92tA+jQCeagmhZNJL6uUnwrTzu9R7lbxGNKMn
         O4fGge1cbCR2RWQEWb0vFP69s4lu5iTn38hkwstNqm+D2lgLO8GYaww/DRyFprIOZCOr
         VmUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=xNtjlN00qm+F9YLeaVK4zGsuM9dIE3Sw4iN+xiq5yVQ=;
        b=UgxUcJLBwfk3W/ZwvDVI09iWgndN632FAgLdB/aBfqYM9lW8RF5Pg/shyGJgaM1KHA
         x7C3pr6yqyaVNDgKYB1AyLSMwuoj+UgDRvQMuqbVRlduCO8CQSzB7d2z/fbfBQraT2tf
         2tDA6gLh4w7Cttdu1k51ea7JXA4XtOlGH3XZWzKR2VZd5LIGGsnJs3zIU4nWwxyo5JZx
         fB91MVqn+2ZnIU//yyT6DiFHtN8dD4DmkfBJYItRyRT5Q36oUUDqWEIr62hUvTj++uIr
         YTvHrPEACa6GnYIWPCE+M7TH3Xn7cfmlzZj91ActnIqLwvEiNUuJHp0A8hLHbTp8RRO3
         UhXw==
X-Gm-Message-State: ACrzQf1q9s0Pfyi38GD5WRdjr1pHAGGGcZjGCvH5IL9Xkxe3NwEzB8k5
	5o7448G7ubV9tzskuu4tsc/1PpLVqyA+yLx1wwGaP46F
X-Google-Smtp-Source: AMsMyM5/Xv1C78zRkOepPlQmEFG5EOIezjsqvtlYoKle65G8KjepcrLyjbQHpYyFsXSjvNEgM7ojxO77LvoHiKd95z8=
X-Received: by 2002:a67:1087:0:b0:397:f1e8:79e3 with SMTP id
 129-20020a671087000000b00397f1e879e3mr6968663vsq.77.1663649620566; Mon, 19
 Sep 2022 21:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <SN6PR04MB3870C53A01D40869FAA91219E8469@SN6PR04MB3870.namprd04.prod.outlook.com>
 <CAEZoMYPb7H2NE+A-_-FimKQ4fu-ddLYpFOYYyB40Qqx6CwMe3A@mail.gmail.com>
In-Reply-To: <CAEZoMYPb7H2NE+A-_-FimKQ4fu-ddLYpFOYYyB40Qqx6CwMe3A@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 20 Sep 2022 00:53:29 -0400
Message-ID: <CAL7q81tXispufJixGZOOXwPUqfqBgyv+qcgQ1wV3RA2SHY23tQ@mail.gmail.com>
To: Chris Wozny <woznych@gmail.com>
Message-ID-Hash: 5KCVDYHTZJENIY7QHAPUZCOSKZZP3JMI
X-Message-ID-Hash: 5KCVDYHTZJENIY7QHAPUZCOSKZZP3JMI
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Steven Koo <steven.koo@ni.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.3.0.0 released!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5KCVDYHTZJENIY7QHAPUZCOSKZZP3JMI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0457818309309344703=="

--===============0457818309309344703==
Content-Type: multipart/alternative; boundary="000000000000aa38b005e9149c7d"

--000000000000aa38b005e9149c7d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Chris,

B2xx devices are Spartan based, so they use ISE 14.7. Vivado version
updates wouldn=E2=80=99t affect them.

Jonathon

On Sun, Sep 18, 2022 at 9:30 AM Chris Wozny <woznych@gmail.com> wrote:

> Thank you all!
>
> Question about the 4.3.0.0 FPGA builds using Vivado 2021.1: would you
> expect the bitstreams for the b2xx to still be identical as previous
> releases? Not sure if it=E2=80=99s anywhere as drastic as software compil=
er updates
> where you=E2=80=99ll see a dramatic amount of changes in the binary.
>
> Thanks,
> Chris
>
> On Wed, Sep 14, 2022 at 6:23 PM Steven Koo <steven.koo@ni.com> wrote:
>
>> UHD 4.3.0.0 is now available [1]! This release includes:
>>
>>    - Extension framework support
>>    - FPGA builds using Xilinx Vivado 2021.1 (B2xx, E3xx, N3xx, X3xx, and
>>    X4xx devices)
>>    - Bug fixes and improvements for USRP devices. See the changelog. [1]
>>
>>
>>
>> We'd like to thank all the USRP users that have filed issues or directly
>> contributed to
>>
>> UHD and meta-ettus. You contributions have helped the continued
>> improvement of UHD.
>>
>> As always, please file issues to our GitHub repo [2], by posting in the
>> USRP-users mailing list, or
>>
>> contacting support@ettus.com.
>>
>>
>>
>> Thanks!
>>
>> Steven
>>
>>
>>
>> [1] https://github.com/EttusResearch/uhd/releases/tag/v4.3.0.0
>>
>> [2] https://github.com/EttusResearch/uhd/issues/
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
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

--000000000000aa38b005e9149c7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello Chris,</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">B2xx devices are Spartan based, so they use ISE 14.7. Vivado version=
 updates wouldn=E2=80=99t affect them.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Jonathon</div><div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, Sep 18, 2022 at 9:30 AM Chris Wozny &=
lt;<a href=3D"mailto:woznych@gmail.com">woznych@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-=
color:rgb(204,204,204)"><div dir=3D"auto">Thank you all!</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">Question about the 4.3.0.0 FPGA builds usi=
ng Vivado 2021.1: would you expect the bitstreams for the b2xx to still be =
identical as previous releases? Not sure if it=E2=80=99s anywhere as drasti=
c as software compiler updates where you=E2=80=99ll see a dramatic amount o=
f changes in the binary.</div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>Thanks,</div><div dir=3D"auto">Chris</div><div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 2022 at 6:23 PM S=
teven Koo &lt;<a href=3D"mailto:steven.koo@ni.com" target=3D"_blank">steven=
.koo@ni.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
padding-left:1ex;border-left-color:rgb(204,204,204)">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">UHD 4.3.0.0 is now avail=
able [1]! This release includes:<u></u><u></u></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li style=3D"margin-left:0in;color:black">
Extension framework support<u></u><u></u></li><li style=3D"margin-left:0in;=
color:black">
FPGA builds using Xilinx Vivado 2021.1 (B2xx, E3xx, N3xx, X3xx, and X4xx de=
vices)<u></u><u></u></li><li style=3D"margin-left:0in;color:black">
Bug fixes and improvements for USRP devices. See the changelog. [1]<u></u><=
u></u></li></ul>
<p class=3D"MsoNormal"><span style=3D"color:black"><u></u>=C2=A0<u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:black">We&#39;d like to thank a=
ll the USRP users that have filed issues or directly contributed to<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">UHD and meta-ettus. You =
contributions have helped the continued improvement of UHD.<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">As always, please file i=
ssues to our GitHub repo [2], by posting in the USRP-users mailing list, or=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">contacting <a href=3D"ma=
ilto:support@ettus.com" target=3D"_blank">support@ettus.com</a>.<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black"><u></u>=C2=A0<u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:black">Thanks!<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:black">Steven<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:black"><u></u>=C2=A0<u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:black">[1] <a href=3D"https://g=
ithub.com/EttusResearch/uhd/releases/tag/v4.3.0.0" target=3D"_blank">https:=
//github.com/EttusResearch/uhd/releases/tag/v4.3.0.0</a><u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:black">[2] <a href=3D"https://g=
ithub.com/EttusResearch/uhd/issues/" target=3D"_blank">https://github.com/E=
ttusResearch/uhd/issues/</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
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

--000000000000aa38b005e9149c7d--

--===============0457818309309344703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0457818309309344703==--
