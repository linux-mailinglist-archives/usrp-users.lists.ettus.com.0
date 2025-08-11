Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 031A8B21231
	for <lists+usrp-users@lfdr.de>; Mon, 11 Aug 2025 18:37:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F03FA3861C7
	for <lists+usrp-users@lfdr.de>; Mon, 11 Aug 2025 12:37:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754930248; bh=SS99WyOAlNNnfgkts/DuxZKokFYB2D3A+Es9kNQALs0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=npjKjOHFYAslqxElkfPgVk422BX8yut57oTDBNXtCmbF2XPbOxlKujbhhhW9VZ6tt
	 kvl+14uLQWl4ieBvPn0lxgb81BL2Nxu9A0p1fYQBV/n5TNlkq+iRJFKgnF0+HxXuem
	 8pdQE+e4M1LgmBv/aCEKvQ6ALyNfdaI+84CPdIFVA0jIZZifXMSapoulO6JxJo4SGH
	 aq50eYm6XOj40CsilBifvWJ487NSZqZXG177O2+MrAmqMJcLY7z2Lq6yMeOzGGaHSD
	 3X1ZtN4HPh3AetQfElt0JvB3XrggxIDEneoJeIy114TTOH8U8FxAg1mo0DVtzss5aV
	 4ichd5uzKP56A==
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A38F3864E9
	for <usrp-users@lists.ettus.com>; Mon, 11 Aug 2025 12:14:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="oUJ/c6+U";
	dkim-atps=neutral
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-712be7e034cso45950667b3.0
        for <usrp-users@lists.ettus.com>; Mon, 11 Aug 2025 09:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1754928854; x=1755533654; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aHhXow6P0i48myae9V67+mvxxhuvwNmCmenETaHukjc=;
        b=oUJ/c6+U2H24DRINIfBHifPWKpxU/e3teNhd+SRb6qh+mYdhgld0KxiOMYe1fDk+03
         F+mGwSkZFE2Z+28saYW8PMZcoiSMCbTisumbQIgwwb0P/Ad8gDa/fpxJi8f4la6zsZLf
         ac/OsTNa/w+35DJRX2u/UA1qQteiPaxy8Rykz7Att5b7s6Wk2NXJMZT7CSRONKzSVZwe
         a2jUX8RmzBsR2G67EDNxDUVYaaT8ATVjf+2ekl5B06C4H8xOiAWi5iqyXTlGNV5XNMir
         0fr+s6BJXceGIcJ0sTyOkYVvLxdRKGG7Z+AwfOay86jhFJqRBqhbTYaDCQE+WUOdiPAf
         jwOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754928854; x=1755533654;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aHhXow6P0i48myae9V67+mvxxhuvwNmCmenETaHukjc=;
        b=CE1/xgkz948yk3feYSciFQy9B3YeLoLuIRQ/mzKRtXMYS4w0S5cbbJsmKXOywdhgoZ
         PJHLa8p/LwspgjDv1Y/nA/d+rOTiU/pKayCFfl097YQGB/0syBHMNnVC7YpPyg+ki0XP
         yjaEAFInJkGoG2ZQb84xH2kaDZfAsbHcgnCceLJJXceV6KPARrTQjKoDTUmEkXEoi65H
         0NlNPEF2xlPHlpnaaRGOnLMAH5llxWgw+Gf2hiGQdUsi9lJuZp/yvb4iCX3CxFJYUKYN
         lw4jClk7xXmHZvpGQe/5IW8qT8ZgFGF9qoPdjExIWaiFlpTFRDpmxNLmkmfX3RCvuc6b
         iXrw==
X-Gm-Message-State: AOJu0YywMDrCgaMzLeqq7JgI2HReGfsrygxhDLJpynnqljAillgTcP7i
	Z0nIsegCsFadoRcQwygABy416evRv6jWqQQw3MfzE1Xp+6zhQytUsz4rmn2P0TeksvxjjfDfZ5t
	9ha3iTDiQaoCalbICIA3/WxfrRoUeLqUAvnMn7aHwfrWv
X-Gm-Gg: ASbGncuUVngMX5sExzcKQQbueVf4eGyzlNzKOVgr9N0TOmV44Usl1SIGRzDc+MSRZSB
	8oktzeC/NnWEh2bM7nECPvRgJ4iyyFPrOZ3i4WHeyjGTVg3j8Johu+FiUKUpfE9gSsyUlhnVD2X
	hlNDFBshmOUTTaEV1QlnQnkZE3dkB6sE7h+wkmNte+75vcAf08Se25vS2Ar5V7wnd+/ri2JUUNc
	7IQ
X-Google-Smtp-Source: AGHT+IEWF1ozaS2JF0M/aAf+o9TWKxmIDKoQM6eD3JLalkLLLDEtsGsxERnO4Hy0wdwqYxKM+JRZF4+UkVSzzI9tLZ0=
X-Received: by 2002:a05:690c:62c6:b0:71c:3fde:31b6 with SMTP id
 00721157ae682-71c42a7c5aamr3531857b3.34.1754928851836; Mon, 11 Aug 2025
 09:14:11 -0700 (PDT)
MIME-Version: 1.0
References: <PH1P110MB12848D088BBBDBE9711FF960982FA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB12848D088BBBDBE9711FF960982FA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 11 Aug 2025 11:13:54 -0500
X-Gm-Features: Ac12FXy_8vB1X8jNIQ3wVXn1WrAf62cSzMcNwWprZ2k-DUdET27908WLeFQBhrw
Message-ID: <CAFche=gwK5YR70UUpYqzFWoYcpb37iJ=JWVezcyz7SC05M0CmA@mail.gmail.com>
To: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
Message-ID-Hash: PRQXR5BTJXMZ75VJDUE6UKUUUQKWV5UO
X-Message-ID-Hash: PRQXR5BTJXMZ75VJDUE6UKUUUQKWV5UO
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Connecting an X410 to a 10 Gb SFP+ port
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PRQXR5BTJXMZ75VJDUE6UKUUUQKWV5UO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0797179014801292513=="

--===============0797179014801292513==
Content-Type: multipart/alternative; boundary="000000000000d1f3a4063c193603"

--000000000000d1f3a4063c193603
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi John,

The breakout cable assembly that is recommended on the X410 Knowledge Base
<https://kb.ettus.com/X410#10_Gigabit_Ethernet> is NI part number
788214-01. This is a Molex cable, part number 1003451101. I've also
personally used the NVIDIA (Mellanox) MCP7F00-A003.

The X410 port is QSFP28 and the X410 does support up to 25 Gbps per lane,
since this is what 100 GbE uses, so the 28 cables are generally recommended=
.

Thanks,

Wade

On Fri, Aug 8, 2025 at 8:43=E2=80=AFAM Mann, John - 0662 - MITLL <mannj@ll.=
mit.edu>
wrote:

> So far, we have only used our X410s on servers with 100 Gbit QSFP28
> ports.  We now have an application that requires a connection to a server
> that only has 10 Gb (SFP+) ports.
>
>
>
> It is my understanding that the X4_200 FPGA image supports using the Port
> 0 QSFP28 interface as 4x10GbE connections.
>
>
>
> My question is which cable assembly I need to purchase to accomplish this=
=E2=80=A6
>
>
>
> There appear to be adapters that go from QSFP+ to 4xSFP+, and there appea=
r
> to be ones that go from QSFP28 to 4xSFP28.
>
>
>
> I am a bit confused about which to buy.  If someone has done this already=
,
> and can recommend a particular product that they know works, that would b=
e
> great!
>
>
>
> Thanks ,
>
>
>
> John Mann
>
> MIT Lincoln Laboratory
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d1f3a4063c193603
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi John,</div><div><br></div><div>The breakout cable =
assembly that is recommended on the <a href=3D"https://kb.ettus.com/X410#10=
_Gigabit_Ethernet">X410 Knowledge Base</a>=C2=A0is NI part number 788214-01=
. This is a Molex cable, part number 1003451101. I&#39;ve also personally u=
sed the NVIDIA (Mellanox) MCP7F00-A003.</div><div><br></div><div>The X410 p=
ort is QSFP28 and the X410 does support up to 25 Gbps per lane, since this =
is what 100 GbE uses, so the 28 cables are generally recommended.</div><div=
><br></div><div>Thanks,</div><div><br></div><div>Wade</div></div><br><div c=
lass=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_=
attr">On Fri, Aug 8, 2025 at 8:43=E2=80=AFAM Mann, John - 0662 - MITLL &lt;=
<a href=3D"mailto:mannj@ll.mit.edu">mannj@ll.mit.edu</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg855547=
4999455326973"><div lang=3D"EN-US" style=3D"overflow-wrap: break-word;"><di=
v class=3D"m_8555474999455326973WordSection1"><p class=3D"MsoNormal">So far=
, we have only used our X410s on servers with 100 Gbit QSFP28 ports.=C2=A0 =
We now have an application that requires a connection to a server that only=
 has 10 Gb (SFP+) ports.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><p class=3D"MsoNormal">It is my understanding that the X4_200=
 FPGA image supports using the Port 0 QSFP28 interface as 4x10GbE connectio=
ns.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p clas=
s=3D"MsoNormal">My question is which cable assembly I need to purchase to a=
ccomplish this=E2=80=A6<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><p class=3D"MsoNormal">There appear to be adapters that go fr=
om QSFP+ to 4xSFP+, and there appear to be ones that go from QSFP28 to 4xSF=
P28.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p cla=
ss=3D"MsoNormal">I am a bit confused about which to buy.=C2=A0 If someone h=
as done this already, and can recommend a particular product that they know=
 works, that would be great!<u></u><u></u></p><p class=3D"MsoNormal"><u></u=
>=C2=A0<u></u></p><p class=3D"MsoNormal">Thanks ,<u></u><u></u></p><p class=
=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">John Mann<u><=
/u><u></u></p><p class=3D"MsoNormal">MIT Lincoln Laboratory<u></u><u></u></=
p></div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000d1f3a4063c193603--

--===============0797179014801292513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0797179014801292513==--
