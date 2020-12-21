Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0ED2DFE20
	for <lists+usrp-users@lfdr.de>; Mon, 21 Dec 2020 17:42:04 +0100 (CET)
Received: from [::1] (port=44182 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1krOFx-0005M3-0y; Mon, 21 Dec 2020 11:41:57 -0500
Received: from mail-qt1-f178.google.com ([209.85.160.178]:37447)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1krOFt-0005Dx-Li
 for USRP-users@lists.ettus.com; Mon, 21 Dec 2020 11:41:53 -0500
Received: by mail-qt1-f178.google.com with SMTP id z9so6988161qtn.4
 for <USRP-users@lists.ettus.com>; Mon, 21 Dec 2020 08:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=ULb91ghIPZJYFFAnaNpv+0odvA5ZAHaC0VPnhvzivDo=;
 b=CDmAHuTiNnBVXCzPLFIVhZ8iJKyNbfuJJ41rVqkqQMNL5Rd9RXw2IQhhoITnaM8fgp
 X3UfHtvyRYYskj9bOZ1I5cKAEaNsVBT8eGU4+zruASOhF15EzT78UhXWGBu0mWlV9di4
 m/pcYeOoWnAOMfDRXoD5Blsx2JG+0nR/1895UaN8XoHBn1wo2EdlXEApRxOfzCmrHMCi
 eU9Bnf3m40RknegA6B/AOjgMZa0dltbT00nZx75sGTDa1XSPDjSORojgPHVeDDfbuT+H
 88hi/U3h62OxYmfmCATpxd6vL3tywXtAjb3U13oFGhSgkkeRm73FJeBCPcRIMHV9wojO
 NqCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=ULb91ghIPZJYFFAnaNpv+0odvA5ZAHaC0VPnhvzivDo=;
 b=T18Yggv6WIGSTA680XC+tdme534Fxyu3Z10uzIpq35Mm3ZLWxLLbToRXcQ/zHofP03
 oGemlt5uOfm1lkDIbDqGDHYaQW6kHZpgLuiJ3Dzqx7ODWUPgTmiDnDT5K15yQIoQA/J6
 fL9TEZhNE/JsDDM1Y35msI3gZvYXLmyJScl3QJCigFwngUlKzybbzBCYys0K0hjF3T/K
 vROtQgnpZdaLkueG15XJWjol5aO/jtQ3UuumNc0+AT3h53UUCDBLkeZGCQpU/j1JSJzK
 LyuNC4MwT+RXK5ow5KOR+3UUbLk3b9Ui6d2D1OUUEOJ8xFFGNFgW33sNfOxlYxdqQxvp
 L9zg==
X-Gm-Message-State: AOAM530mtPTKyTL/fSiYrNWVsOQlwvsmpvjiC2+BPpxy+MBM0QSaTrXJ
 PTGHSwxj8h0BMXizKGiSGUP1RefKrFk=
X-Google-Smtp-Source: ABdhPJyHWfF+5oTFV6Qng9J9t2vwJr/SB+NLEJN3E3EzgR3GP9pOnwf12cacaf5wfGwlnMGmNe1pCg==
X-Received: by 2002:ac8:3aa7:: with SMTP id x36mr17019622qte.206.1608568872856; 
 Mon, 21 Dec 2020 08:41:12 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id z30sm10650015qtc.15.2020.12.21.08.41.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Dec 2020 08:41:12 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 21 Dec 2020 11:41:11 -0500
Message-Id: <03F82937-AF56-48E8-A2DA-FFBB4011E9A7@gmail.com>
References: <8CC32919-3C30-449F-83A2-18CE6BC62291@htw-berlin.de>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <8CC32919-3C30-449F-83A2-18CE6BC62291@htw-berlin.de>
To: Philipp Schach <s0564590@htw-berlin.de>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] Connection problems
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============5453463939955404250=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============5453463939955404250==
Content-Type: multipart/alternative; boundary=Apple-Mail-F3A794E3-A5E0-4B55-A977-5C26FBB3E2E4
Content-Transfer-Encoding: 7bit


--Apple-Mail-F3A794E3-A5E0-4B55-A977-5C26FBB3E2E4
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It=E2=80=99s clearly not an N210 if you=E2=80=99re getting LIBUsB errors. Pe=
rhaps it=E2=80=99s a B210?

This sounds like insufficient power being supplied by your USB controller. T=
ry an external power supply if it=E2=80=99s a B210.=20

Sent from my iPhone

> On Dec 21, 2020, at 6:50 AM, Philipp Schach via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi guys!=20
> I am new here and needed some help. My name is Philipp and I am a student a=
t HTW Berlin in Germany.
> We have built a small test network with srsLTE in our lab. The network con=
sists of a computer with a USRP N210 and a Virtual Access GW2028 as UE with a=
 Pi. The computer runs the eNodeB service of srsLTE with Open5GS as EPC. The=
 network was built by another student last semester. It was configured for b=
and 3 at 1800 MHz. Now the network should run in band 31 at 450 MHz. Basical=
ly it runs as well. The GW2028 successfully logs in. However, after a short t=
ime there is an error with the USRB N210:
>=20
> [ERROR] [UHD] An unexpected exception was caught in a task loop.The task l=
oop will now exit, things may not work.EnvironmentError: IOError: usb rx8 tr=
ansfer status: LIBUSB_TRANSFER_NO_DEVICE
> /home/u1804/srsLTE_20_10/srsLTE/lib/src/phy/rf/rf_uhd_imp.cc.228: USRP rep=
orted the following error: EnvironmentError: IOError: usb rx6 transfer statu=
s: LIBUSB_TRANSFER_NO_DEVICE
>=20
> After the appearance the command "uhd_find_devices" returns wrong answers.=
 The serial number is no longer returned completely or no device is found at=
 all. After a restart it runs again for a few minutes and then crashes again=
 with the error.
> In band 3, everything was supposedly running relatively stable.=20
>=20
> Unfortunately, due to Corona, I am not at the university in the lab every d=
ay, but I plan to be there in the next few days.
> If more information is needed, I will submit it when I am on site. Current=
ly running a version of Ubuntu 18 as operating system. UHD is installed in v=
ersion 3.15.
>=20
> Has anyone had this problem before, or could kindly help me?
>=20
> Greetings Philipp
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-F3A794E3-A5E0-4B55-A977-5C26FBB3E2E4
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It=E2=80=99s clearly not an N210 if you=E2=80=
=99re getting LIBUsB errors. Perhaps it=E2=80=99s a B210?<div><br></div><div=
>This sounds like insufficient power being supplied by your USB controller. T=
ry an external power supply if it=E2=80=99s a B210.&nbsp;<br><br><div dir=3D=
"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite=
">On Dec 21, 2020, at 6:50 AM, Philipp Schach via USRP-users &lt;usrp-users@=
lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cit=
e"><div dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"Content-Type" content=3D"te=
xt/html; charset=3Dus-ascii"><div style=3D"caret-color: rgb(0, 0, 0); color:=
 rgb(0, 0, 0);" class=3D"">Hi guys!&nbsp;</div><div style=3D"caret-color: rg=
b(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">I am new here and needed some h=
elp. My name is Philipp and I am a student at HTW Berlin in Germany.</div><d=
iv style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">We h=
ave built a small test network with srsLTE in our lab. The network consists o=
f a computer with a USRP N210 and a Virtual Access GW2028 as UE with a Pi. T=
he computer runs the eNodeB service of srsLTE with Open5GS as EPC. The netwo=
rk was built by another student last semester. It was configured for band 3 a=
t 1800 MHz. Now the network should run in band 31 at 450 MHz. Basically it r=
uns as well. The GW2028 successfully logs in. However, after a short time th=
ere is an error with the USRB N210:</div><div style=3D"caret-color: rgb(0, 0=
, 0); color: rgb(0, 0, 0);" class=3D""><br class=3D""></div><div style=3D"ca=
ret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><div class=3D"">[E=
RROR] [UHD] An unexpected exception was caught in a task loop.The task loop w=
ill now exit, things may not work.EnvironmentError: IOError: usb rx8 transfe=
r status: LIBUSB_TRANSFER_NO_DEVICE</div><div class=3D"">/home/u1804/srsLTE_=
20_10/srsLTE/lib/src/phy/rf/<a href=3D"http://rf_uhd_imp.cc" class=3D"">rf_u=
hd_imp.cc</a>.228: USRP reported the following error: EnvironmentError: IOEr=
ror: usb rx6 transfer status: LIBUSB_TRANSFER_NO_DEVICE</div></div><div styl=
e=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br class=3D=
""></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" clas=
s=3D"">After the appearance the command "uhd_find_devices" returns wrong ans=
wers. The serial number is no longer returned completely or no device is fou=
nd at all.&nbsp;After a restart it runs again for a few minutes and then cra=
shes again with the error.</div><div style=3D"caret-color: rgb(0, 0, 0); col=
or: rgb(0, 0, 0);" class=3D"">In band 3, everything was supposedly running r=
elatively stable.&nbsp;</div><div style=3D"caret-color: rgb(0, 0, 0); color:=
 rgb(0, 0, 0);" class=3D""><br class=3D""></div><div style=3D"caret-color: r=
gb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">Unfortunately, due to Corona, I=
 am not at the university in the lab every day, but I plan to be there in th=
e next few days.</div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0,=
 0, 0);" class=3D"">If more information is needed, I will submit it when I a=
m on site. Currently running a version of Ubuntu 18 as operating system. UHD=
 is installed in version 3.15.</div><div style=3D"caret-color: rgb(0, 0, 0);=
 color: rgb(0, 0, 0);" class=3D""><br class=3D""></div><div class=3D""><font=
 color=3D"#000000" class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" cla=
ss=3D"">Has anyone had this problem before, or could kindly help me?</span><=
/font></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" c=
lass=3D""><br class=3D""></div><div style=3D"caret-color: rgb(0, 0, 0); colo=
r: rgb(0, 0, 0);" class=3D"">Greetings Philipp</div><span>__________________=
_____________________________</span><br><span>USRP-users mailing list</span>=
<br><span>USRP-users@lists.ettus.com</span><br><span>http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</span><br></div></blockquote></d=
iv></body></html>=

--Apple-Mail-F3A794E3-A5E0-4B55-A977-5C26FBB3E2E4--


--===============5453463939955404250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5453463939955404250==--

