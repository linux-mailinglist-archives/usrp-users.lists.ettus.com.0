Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B36BB904
	for <lists+usrp-users@lfdr.de>; Mon, 23 Sep 2019 18:05:37 +0200 (CEST)
Received: from [::1] (port=57722 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iCQqD-0005Is-9i; Mon, 23 Sep 2019 12:05:33 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:41500)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marsisslc@gmail.com>) id 1iCQq9-000580-8b
 for usrp-users@lists.ettus.com; Mon, 23 Sep 2019 12:05:29 -0400
Received: by mail-wr1-f68.google.com with SMTP id h7so14600205wrw.8
 for <usrp-users@lists.ettus.com>; Mon, 23 Sep 2019 09:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=LhKRrLdvRKIni6bjEINkUKUHK8FBqScVt4VX/3FckVM=;
 b=LqfmAUqUP3/vyv9UgVnGZ65QTx4XPlKHarrqDppbG2708FDEu/vBURPZh6bM498DWS
 Fyc1FTWH1fwinMTuAznmXjl1Lb7Rf8ZcVjhwrsfgk/DZ52XLYRe4Z66Dv9ODeV0JcKai
 23/cbqfS/F5t7JZPRsuPfgGDPxSuFgDwR5K65eCdMgTbZv+dGrG+b/x8CzW5kpidZdLG
 WbKool/h1Ff5k/jHH5weVxfAY2+IAgzfsaNHPlhs/ukPUC1SPsOQw3SD7MR8HRQqnQqz
 lyPV4KtWH7tcG+iymqlsGcKaPdeU1B+HuhnKqIbC33J/t1gJXMSAjTCoP8k8MDxYPf0C
 0twA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=LhKRrLdvRKIni6bjEINkUKUHK8FBqScVt4VX/3FckVM=;
 b=NNXJ5oZR5x111siKz3PqRN9uM13nOCfNHQXEQs9G3mdpTtmlGExrSklCDp6FW/xlPO
 mKQ7dZyoobiZz091PjljlQsyv3koMrQQO3sariGrb3U34yWEgAaydf8mZBA4i0RxPxq4
 FXQhrMG6bSS+NIoYrmouWqDsdc+nk/JTNMjgruyesbAdtrobARBP/ZOhPiL/TIVneG9h
 WTxFUQWKMu0EaxLk/41C+KYouD1NDGUcbESU1hn4T8+acYTCaBvSCMQ4CPzanJ/OfZfr
 WDtaMBsIhDgb+ajp5t3YBMhlwRcuA3you7kf8fGuUMUFLs7BhiPXQwXmta1e0rnJNZ+e
 IErw==
X-Gm-Message-State: APjAAAWdIARMCu0qJAPAPCBhrdbgW6VW5NrGPZBTUmIQUo+1nWXeJKuq
 kp5ij5f4SbGpOLpOfLEhArgCcRZ3INlqTjyMaaMoiaZG8cbUFA==
X-Google-Smtp-Source: APXvYqxzZKupwRc13t2O6dqxumnstqirGEzYRtlNTdvSigv909UyftewyhLGEwv8FMAlNV8JeE6ZESLhYDpxKUuhiOs=
X-Received: by 2002:adf:f404:: with SMTP id g4mr102529wro.353.1569254688076;
 Mon, 23 Sep 2019 09:04:48 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 23 Sep 2019 12:04:38 -0400
Message-ID: <CALzE40LKN-2egAu5+TGKV_4k5qpB=B_VO+gZaOfR9_s3N4PQvQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Different phase offsets in RX and TX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Markus Roman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Markus Roman <marsisslc@gmail.com>
Content-Type: multipart/mixed; boundary="===============0717695415573558134=="
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

--===============0717695415573558134==
Content-Type: multipart/alternative; boundary="0000000000003eb81005933a94e3"

--0000000000003eb81005933a94e3
Content-Type: text/plain; charset="UTF-8"

Hi,

Let's consider two simple test configurations using both channels of a USRP
X310 SDR*,* and developed in GNU Radio:

1.       SDRs in TX mode: generate a cosine signal, transmit with SDRs and
visualize their phase offset on an O-scope and

2.       SDRs in RX mode: SDRs receive a signal from a signal generator and
display their phase offset on a computer.

In the 1st configuration the phase offsets between channels are consistent
even if we power off the SDR. However, in the 2nd configuration, each time
when the GNU Radio script is restarted, the phase difference is changing. I
wonder what could cause the issue, specifically what determines re-tuning
in the GNU Radio script. Can this issue be corrected?

Thank you.

Regards

Markus

--0000000000003eb81005933a94e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-he=
ight:107%;font-size:11pt;font-family:Calibri,sans-serif">Hi,</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif">Let&#39;s consider two simple test =
configurations using both channels
of a <span lang=3D"EN" style=3D"">USRP</span><span lang=3D"EN" style=3D""> =
X310
SDR<strong style=3D"font-weight:bold">,</strong></span><span lang=3D"EN">=
=C2=A0and=C2=A0</span>developed
in GNU Radio:</p>

<p class=3D"gmail-MsoListParagraphCxSpFirst" style=3D"margin:0in 0in 0.0001=
pt 0.25in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif">1=
.<span style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;=
font-stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Time=
s New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span>SDRs in TX mode: generate a cosine signal,
transmit with SDRs and visualize their phase offset on an O-scope and</p>

<p class=3D"gmail-MsoListParagraphCxSpLast" style=3D"margin:0in 0in 8pt 0.2=
5in;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif">2.<span=
 style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font-s=
tretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Times New =
Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span>SDRs in RX mode: SDRs receive a signal from a signal generator and d=
isplay their phase offset on a computer. </p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif">In the 1<sup>st</sup> configuration=
 the phase offsets between
channels are consistent even if we power off the SDR. However, in the 2<sup=
>nd</sup>
configuration, each time when the GNU Radio script is restarted, the phase =
difference
is changing. I wonder what could cause the issue, specifically what determi=
nes re-tuning in the GNU Radio script. Can this issue be corrected? </p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif">Thank you.=C2=A0</p><p class=3D"Mso=
Normal" style=3D"margin:0in 0in 8pt;line-height:107%;font-size:11pt;font-fa=
mily:Calibri,sans-serif"><span style=3D"font-size:11pt">Regards</span><br><=
/p><p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font=
-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:11pt">M=
arkus</span></p></div>

--0000000000003eb81005933a94e3--


--===============0717695415573558134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0717695415573558134==--

