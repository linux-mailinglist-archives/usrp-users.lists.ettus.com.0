Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8B6813E26
	for <lists+usrp-users@lfdr.de>; Fri, 15 Dec 2023 00:18:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 12F2D385390
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 18:18:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702595892; bh=9wvQM4PP7z2U3vcsQG9ebrhD6DcxW2mL1dRsoINVHPs=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Mfq4HGOk/fhNED4+RHgpkfCCcURxUakkaZsRbZA5qx3vgKdVvs+rlhDhehMMjsaSY
	 ymsJihmioatYY1TQEe/YbWbhvFECDHHYNUR3eWyNnpd8NpCHZp8th51QwxA2xcudx1
	 NiwMOll0MOQUEw/xjq44yN0jzVSssNFPOUezZX+R46Hl8t6QOlXBaXSWdRJ4Gp1BOK
	 eQjQaTdVG4QsQr2R86JTCx4/qHQUl60Nxf5O9BMNGWva13SIlR4BrIbVILyEVwoBzM
	 nJBYBJzj1OQeyZ033Wvz19WiYcfGknTiD3Z0COc6L/D0lmveYAxfOY4xWVT7gXC2/Q
	 EZsuMmKQZSwZw==
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 78E0B3852FF
	for <USRP-users@lists.ettus.com>; Thu, 14 Dec 2023 18:18:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="ZHVzQMcG";
	dkim-atps=neutral
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-28b1b5435c1so21359a91.2
        for <USRP-users@lists.ettus.com>; Thu, 14 Dec 2023 15:18:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google; t=1702595885; x=1703200685; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3HcuUr0nH+KkmX+DS0oK30UhxjVHoqWaDojF77/qaIQ=;
        b=ZHVzQMcGpwqum9nEFtAYeXV/AlMK6YYUfPuqI12ULUAHLb9d0yZpMvzdgqU+SBh+/0
         EUd8ced7aeDMhT4jRPdfy+PWN/YgjqbdjHLD3+ahzKSHhx9u2+H7RAnuHb49rgexidr0
         KxM0oMsG12GTYLlcOOkKz8eVkbqGFweLCkPBNZKiSKXTb9/tiUis/KVuNSLbcEmkNoWH
         ykrP8LtmlvUUHAQQ/lkZJKSS0nNYjZxy2vKEyBIzBtm+kVFDZMoKh6nGAZLUOThfam7G
         uT9j7E0IFz5ehdSM8zgzEP/PIEJ/gV6YzSkETQcJHZw32MzDGEWWjRMn6MLXJFUKyiru
         BMgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702595885; x=1703200685;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3HcuUr0nH+KkmX+DS0oK30UhxjVHoqWaDojF77/qaIQ=;
        b=VahnJ7uymM3M3P4Zb+kW7fAaZjD/Ah7noeScvixQtH/D0LoooGfc50dP7Vu96Nxf29
         7RLtDglx61s7xiGNpXFo88P52+lvc+RsO2EyEUUuW+PVZ+9f6V/LG4uBrrEFDnF2nOtV
         nLYiClfnB7OA3NV9L11R6YldYL6bdTK/EtuPS1gS9yVGfuMf1ezwf0P04Ie48w9kF7i5
         YtkhHo+Jcs+5jB59u187KDqA0HbTl89SqmrmBNVdaTbYoysInqICOsThMqxueVRFqFG3
         yinnFong301E1rqSzaxf/2PxDgXr1nbCCi2anFcnUtG3wWuwil7bAhQslWGK/no6eAVh
         m2sw==
X-Gm-Message-State: AOJu0YzG52YRikutQvSnMlUv8ZDzuTizT1tmhqsyHdFjq5Dv6UIB/QRI
	kKL1cW1bCHoMScXL84j73IVTVN1PvksRdW7PModpEg==
X-Google-Smtp-Source: AGHT+IGP23zON0+OMSO3z/Oj4i6nPZf8kciODBH3PS4gFEEInVcxFEYpDwbue6jDz4MkHj8lOk5cThXAr8r8EZa/6Eo=
X-Received: by 2002:a17:90b:3b86:b0:286:83af:f370 with SMTP id
 pc6-20020a17090b3b8600b0028683aff370mr8302031pjb.69.1702595885371; Thu, 14
 Dec 2023 15:18:05 -0800 (PST)
MIME-Version: 1.0
References: <CAKhiL6XLB_-aFw24M7s=r-60jEHU=BHLo8JKafQQhAA0HOQHiw@mail.gmail.com>
 <CANvw1+Q-WcRPAK-M-xJrjaPmj-wgtAwQfTpvr55SRLU9douEdQ@mail.gmail.com>
In-Reply-To: <CANvw1+Q-WcRPAK-M-xJrjaPmj-wgtAwQfTpvr55SRLU9douEdQ@mail.gmail.com>
Date: Thu, 14 Dec 2023 18:17:54 -0500
Message-ID: <CAKhiL6WAtkPFO3N=4yBSULM5pOmLiEED4zmN2tNsz9R3wOJdLA@mail.gmail.com>
To: Anil Gurses <agurses@ncsu.edu>
Message-ID-Hash: AAUYFHQI5LOHUHVPBNNMVH2Q2C2RP4YK
X-Message-ID-Hash: AAUYFHQI5LOHUHVPBNNMVH2Q2C2RP4YK
X-MailFrom: ljsmith9@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Change UHD Version
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AAUYFHQI5LOHUHVPBNNMVH2Q2C2RP4YK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: LoyCurtis Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: LoyCurtis Smith <ljsmith9@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============3845896799375684849=="

--===============3845896799375684849==
Content-Type: multipart/alternative; boundary="000000000000f21327060c807ea0"

--000000000000f21327060c807ea0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Anil.

It fails when I was trying it. Did you have to delete the build folder then
recreate it for a successful installation?

V/r

LoyCurtis Smith


On Thu, Dec 14, 2023 at 5:29=E2=80=AFPM Anil Gurses <agurses@ncsu.edu> wrot=
e:

> Hi LoyCurtis,
>
> You can install different version of UHD by changing your branch to the
> version's tag on the GitHub repository as shown below,
>
> ```
> git clone https://github.com/EttusResearch/uhd.git
> git checkout tags/v4.0.0.0
> ...
> ```
> With these steps, you change your branch to a specific version release.
> Then you need to build it again as usual.
>
> Let me know if you have any questions.
>
> A.
>
> On Thu, Dec 14, 2023 at 5:21=E2=80=AFPM LoyCurtis Smith via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Since Ubuntu 18.04 is EOL, my school upgraded my lab systems to Ubuntu
>> 22.04. Since upgrading to Ubuntu 22.04, I have been unable to connect to=
 my
>> USRP x310s via "*uhd_find_devices*." I can only PING them, and I can
>> only communicate with them via UHD when explicitly stating the IP Addres=
s
>> of my USRP. I was able to communicate with the devices via UHD v
>>
>> While troubleshooting what is blocking the traffic with my IT staff, I a=
m
>> trying to change the UHD version from 4.5 to UHD version 4.0 to see if i=
t
>> changes anything. However, I do not see any instructions on installing a
>> different UHD version. I installed UHD from source following the NI buil=
d
>> guide (https://files.ettus.com/manual/page_build_guide.html).
>>
>> Please assist.
>>
>> V/r
>>
>> LoyCurtis Smith
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000f21327060c807ea0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Anil.=C2=A0</div><div><br></div><div>It fails =
when I was trying it. Did you have to delete the build folder then recreate=
 it for a successful installation?=C2=A0</div><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><font color=3D"#073763"><br></font></div><div dir=3D"lt=
r"><font color=3D"#073763">V/r</font><div><span style=3D"background-color:r=
gb(255,255,255)"><font color=3D"#073763"><br></font></span></div><div><span=
 style=3D"background-color:rgb(255,255,255)"><font color=3D"#073763">LoyCur=
tis Smith</font></span></div></div></div></div></div></div><br></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec =
14, 2023 at 5:29=E2=80=AFPM Anil Gurses &lt;<a href=3D"mailto:agurses@ncsu.=
edu">agurses@ncsu.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Hi LoyCurtis,</div><div><br></di=
v><div>You can install different version of UHD by changing your branch to =
the version&#39;s tag on the GitHub repository as shown below,<br></div><di=
v><br></div><div>```<br></div><div>git clone <a href=3D"https://github.com/=
EttusResearch/uhd.git" target=3D"_blank">https://github.com/EttusResearch/u=
hd.git</a> <br></div><div>git checkout tags/v4.0.0.0 <br></div><div>... <br=
></div><div>```</div><div>With these steps, you change your branch to a spe=
cific version release. Then you need to build it again as usual.<br></div><=
div><br></div><div>Let me know if you have any questions.<br></div><div><br=
></div><div>A.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Dec 14, 2023 at 5:21=E2=80=AFPM LoyCurtis S=
mith via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Since Ubuntu 1=
8.04 is EOL, my school upgraded my lab systems to Ubuntu 22.04. Since upgra=
ding to Ubuntu 22.04, I have been unable to connect to my USRP x310s via &q=
uot;<b>uhd_find_devices</b>.&quot; I can only PING them, and I can only com=
municate with them via UHD when explicitly stating the IP Address of my USR=
P. I was able to communicate with the devices via UHD v <br><br>While troub=
leshooting what is blocking the traffic with my IT staff, I am trying to ch=
ange the UHD version from 4.5 to UHD version 4.0 to see if it changes anyth=
ing. However, I do not see any instructions on installing a different UHD v=
ersion. I installed UHD from source following the NI build guide (<a href=
=3D"https://files.ettus.com/manual/page_build_guide.html" target=3D"_blank"=
>https://files.ettus.com/manual/page_build_guide.html</a>).=C2=A0</div><div=
><br></div><div>Please assist.=C2=A0<br clear=3D"all"><div><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font col=
or=3D"#073763"><br></font></div><div dir=3D"ltr"><font color=3D"#073763">V/=
r</font><div><span style=3D"background-color:rgb(255,255,255)"><font color=
=3D"#073763"><br></font></span></div><div><span style=3D"background-color:r=
gb(255,255,255)"><font color=3D"#073763">LoyCurtis Smith</font></span></div=
></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000f21327060c807ea0--

--===============3845896799375684849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3845896799375684849==--
