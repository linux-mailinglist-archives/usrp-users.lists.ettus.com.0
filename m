Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9922F812CCB
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 11:21:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 933A73852B8
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 05:21:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702549285; bh=W38TbqWJbFsY23elZCOR06jG5/Fd3UhlPgPHY7Viaqo=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Y6CfiPhlnjqc15V8MHSXrVX3ki/71g0eBvQhmDC1URVxMwh62w6RXiXc2zSN+RAyk
	 YfPpoejIO330v3AlZD/B6FROV4totxBTeJJSSRJpWVSmy3ZgFV3Gd3Bw1hiWErmEm0
	 HDB1VCqIshVn2t0IvD94OLth2JqZ7pKAm2fbTWsU2lVTY0iE6YSsZn6FP4BzPhxovo
	 Me0wEMfFXUBc1VwLvYltnnXoc0piRgo3SEUj6mkv89ev2dISl/E34Mlm5EqPDvXkyo
	 YvbNBN26hRut2A5ltqK3RjWkpnY+HVGXTRC24/DzsuWP7nZNzaVi+fExmhM8Vsgp30
	 t9yjBPHIcJS/Q==
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 7AAE6384E83
	for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 05:20:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CdktHR0H";
	dkim-atps=neutral
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3b9f8c9307dso4818603b6e.0
        for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 02:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702549231; x=1703154031; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/DcPvOaL+GDs+t5iFnPj1XLd9mrOwRv9rRz/IuiHrEw=;
        b=CdktHR0HSC8qRvcHhLacayzpT+OcatEu3PmZlkdUjB+pcoicszEj2jneOAuho0Glp/
         WWBA6B+O7kkGy84GvJoKcPWai5sXWc988iPNRS15/mFuDB4I2VAWxRF1MWz/X0dCM/gH
         L9wE7NZxuLXtCloXDbOWSlwf7MTJmjxRZpF8TdklzePcZzPoDDxHiCVPIBxvLeHWyA+E
         wjYLqCKWoC7vGkMWgWXtn39rzjw1g9bU/3ypnTAdzzJ4JlGiTeAd4vp/O+W6cQUsvxR8
         mXK8fv+kFrTd6apSOyUJ7uPIXv9c2E7IcORWLt76t7nYwocHn6ViZW7Zk/I+ydp0tuQW
         trgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702549231; x=1703154031;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/DcPvOaL+GDs+t5iFnPj1XLd9mrOwRv9rRz/IuiHrEw=;
        b=gT7A7IkPGK3sDPv0qrJ7TG6cWppANFoqGrJDPIKzX44pabFWzwY81lUXcPFWJ2ruJc
         p2Vj5qLrpaLaOH4PYWi2Us1KtOmhHprnp9v7f0qHmuDyq0pCumql80+oKTmLTnpH7SQY
         w36kP9FrDjvpK/Sx2QKGOSvGxw/vvgZz2CdWmv8Q03KRQYhXgh+QaxE1SRgYdoO6p9Wh
         YBEPtJtTdZecV9CLX0B1GhzluKC+OUPQKRtfR5XfsCut8Vt29k7T3LgvGiRH8j4hFd6K
         zl2J703VW6VIvOTKvCzOiPR15bSTjgEkeZoh2XEZcI1zA55Q8Rfu8mwlc3KiFDh8fCRV
         eMLg==
X-Gm-Message-State: AOJu0YwUf+QcOpwDArI0PxNNHokI3fS6iAOalA3rFa4F3NWPRe1E01XG
	LlYeWsXEcObxJH2In73B0gWIoKSEcmIMe1y23XVPkw8l4C8=
X-Google-Smtp-Source: AGHT+IF6BXGKEg5G7L4pCOU1sjs3bKzk1VaYHEuJJ0uIK9bxtwrIeY0fesSLoAzYjkGPzj3wy3IOBNZyJHdlTxvCPEU=
X-Received: by 2002:a05:6808:13c5:b0:3ba:917:eb2 with SMTP id
 d5-20020a05680813c500b003ba09170eb2mr8718047oiw.47.1702549231037; Thu, 14 Dec
 2023 02:20:31 -0800 (PST)
MIME-Version: 1.0
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Thu, 14 Dec 2023 11:20:20 +0100
Message-ID: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 6GBOIPL3NH5DPIRXOA7UPN25ZRZRUK6I
X-Message-ID-Hash: 6GBOIPL3NH5DPIRXOA7UPN25ZRZRUK6I
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] streamer error X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6GBOIPL3NH5DPIRXOA7UPN25ZRZRUK6I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5887011503513323686=="

--===============5887011503513323686==
Content-Type: multipart/alternative; boundary="00000000000020ef6f060c75a2f6"

--00000000000020ef6f060c75a2f6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear all,

I am trying to make an acquisition with two X310 equipped with two TwinRx.
I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains 128GB RAM
and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 40 and a 4TB SS=
D. I have
modified the example rx_samples_to_file.cpp code to get 8 channels and I
get the following error:

*D*
*[ERROR] [STREAMER] The receive packet handler failed to time-align
packets. 1002 received packets were processed by the handler. However, a
timestamp match could not be determined.*
*Timeout while streaming*

*[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw communication
failure #1*
*EnvironmentError: IOError: x300 fw poke32 - reply timed out*
*[ERROR] [UHD] An unexpected exception was caught in a task loop.The task
loop will now exit, things may not work.AssertionError: reply.sequence =3D=
=3D
request.sequence*
*  in virtual void
x300_ctrl_iface_enet::__poke32(uhd::wb_iface::wb_addr_type, uint32_t)*
*  at
/home/rs3_lab/workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:135*

I don't know how to solve the Timeout problem, I have tried to start the
acquisition 1.1 sg in time. But it didn't work.


*        stream_cmd.stream_now =3D false;        stream_cmd.time_spec =3D
usrp->get_time_last_pps(0)+1.1;*

What is the problem and how can I fix it?

Regards,
Anabel

--00000000000020ef6f060c75a2f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div></div><div>Dear all,</div><div><br></div><div>I am tr=
ying to make an acquisition with two X310 equipped with two TwinRx. I am us=
ing Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains 128GB RAM and an I=
ntel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 40 and a 4TB SSD. I hav=
e modified the example rx_samples_to_file.cpp code to get 8 channels and I =
get the following error:<br><br></div><div><div class=3D"gmail-x_elementToP=
roof"><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontSe=
rvice,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">D</span=
></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0=
)">[ERROR]
 [STREAMER] The receive packet handler failed to time-align packets.=20
1002 received packets were processed by the handler. However, a=20
timestamp match could not be determined.</span></i></div><div><i><span styl=
e=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Timeout while streaming</s=
pan></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0)"><br aria-hidden=3D"true"></span></i></div><div><i><span style=3D"font=
-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans=
-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR] [X300] <a href=3D"http://19=
2.168.60.2">192.168.60.2</a>: x300 fw communication failure #1</span></i></=
div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFon=
tService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Envi=
ronmentError: IOError: x300 fw poke32 - reply timed out</span></i></div><di=
v><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR]
 [UHD] An unexpected exception was caught in a task loop.The task loop=20
will now exit, things may not work.AssertionError: reply.sequence =3D=3D=20
request.sequence</span></i></div><div><i><span style=3D"font-family:Aptos,A=
ptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">=C2=A0 in virtual void x300_ctrl_iface_enet::__pok=
e32(uhd::wb_iface::wb_addr_type, uint32_t)</span></i></div><div><i><span st=
yle=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Hel=
vetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">=C2=A0 at /home/rs3_lab/=
workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:135</span></i></div><d=
iv><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></=
div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontSe=
rvice,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">I don&#=
39;t know how to solve the Timeout problem, I have tried to start the acqui=
sition 1.1 sg in time. But it didn&#39;t work. <br><br><i>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 stream_cmd.stream_now =3D false;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
stream_cmd.time_spec =3D usrp-&gt;get_time_last_pps(0)+1.1;</i></span></div=
><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServi=
ce,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span=
></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFon=
tService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">What=
 is the problem and how can I fix it? <br></span></div><div><span style=3D"=
font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,=
sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></div><div><span sty=
le=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helv=
etica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Regards,</span></div><div=
><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Ca=
libri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Anabel<br></spa=
n></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br=
></span></div></div></div>

--00000000000020ef6f060c75a2f6--

--===============5887011503513323686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5887011503513323686==--
