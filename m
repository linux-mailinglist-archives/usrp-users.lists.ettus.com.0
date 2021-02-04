Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8D030FBF0
	for <lists+usrp-users@lfdr.de>; Thu,  4 Feb 2021 19:52:51 +0100 (CET)
Received: from [::1] (port=42082 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7jkF-0003Oo-S7; Thu, 04 Feb 2021 13:52:47 -0500
Received: from mail-ot1-f53.google.com ([209.85.210.53]:32833)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1l7jkC-0003L0-Fz
 for usrp-users@lists.ettus.com; Thu, 04 Feb 2021 13:52:44 -0500
Received: by mail-ot1-f53.google.com with SMTP id 63so4480515oty.0
 for <usrp-users@lists.ettus.com>; Thu, 04 Feb 2021 10:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c5H5Sav0eM5jct9BQLAnGBAFGO3EPP6PqgMLcKwmOu0=;
 b=GwmEUtm0Wm4UumYhNS/Q8yELrrNlsIN8CziXxqoezsT+BG3LGlMzAT7R79iWYrITP+
 /vPeVOoDnIRhZBnypGNYPjlfy+SZm97qj6E3xxtbwC2BWi/z8M9HPvfVwywedITdwNlQ
 LfcJf1pcSTCcATW6o5ODplyLoeQxkSW/zWlHK/vP5ZYAuTK5+WiT3M+kOhqwaewd+UuL
 WMtUksKOH2GMJHfqvQ57H3N3w+Xm8+7+zCvphxNIeyDNwj1Ffs+S7p2jkVsZUEmjjf8T
 L30ynZ4y3dXXNh2/+H9OuPX+wT9ekG6KGbVFS0VOR9ZJJP/3vHJHmlja6iDSlnRtq7uy
 7Ipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c5H5Sav0eM5jct9BQLAnGBAFGO3EPP6PqgMLcKwmOu0=;
 b=VkSvBSnbma2L51/JTeE2Yv9BgU5+ujXPJX1aQIBxvv8UTNX5uS9+DqFQS3TdXtmhnv
 ScGiAvA7h4PkAsB/7zqTo28QR/C3rz6CasDA3MXeka36U8ndS3THzB7+lzXst7f8xios
 bcpX/2UTiZ328m1ZoB3+GbhyOwL75eRr38jlFsJdaficwJuAgZORVKjfKbuKTMxyRWGF
 3FYqWV1gP9jqC89fdF1Yd+FaH+mRULEU/vASU6F53Ba8+6FCShjrn0fRy5hkOsSYmBaD
 bFNYjmICIPf9CwlauWa71LQn9m0ycrxhWChpBkiMq+023u2Wl4RiS9iDCxwku8hOuj0D
 PYgA==
X-Gm-Message-State: AOAM532n3Spg67OL5P0DFXupH6tbGchukhFsBn+bDvhTTk+ZYHH2HUtp
 O/s9I4FLEKAJKC+QTLJO5iDHSlExOQ2BtI7KLb8=
X-Google-Smtp-Source: ABdhPJwmTS+VJfmATzTsi0sKOcZUyIbuL/C+plw28tlM7cIikYU9jJSTujbKQtmiti0gaAn9IZwnoSArCnpP/Oofcqw=
X-Received: by 2002:a9d:3d36:: with SMTP id a51mr596580otc.131.1612464723697; 
 Thu, 04 Feb 2021 10:52:03 -0800 (PST)
MIME-Version: 1.0
References: <580D94C5-BA72-4A10-8CFA-274AF428B90D@contoso.com>
In-Reply-To: <580D94C5-BA72-4A10-8CFA-274AF428B90D@contoso.com>
Date: Thu, 4 Feb 2021 13:51:52 -0500
Message-ID: <CAEXYVK6Ohh=7u1Xmq-=XGzFdj3tV0NXocjkqrdP3ruUZfdnhWw@mail.gmail.com>
To: "Askar, Ramez" <ramez.askar@hhi.fraunhofer.de>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC 4 rfnocmodtool
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Content-Type: multipart/mixed; boundary="===============6449225938907364115=="
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

--===============6449225938907364115==
Content-Type: multipart/alternative; boundary="00000000000011a1f805ba8733bb"

--00000000000011a1f805ba8733bb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 4, 2021 at 1:15 PM Askar, Ramez via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear Sir or Madam,
>
>
>
> I would like to use one of the available FPGA blocks from Ettus =E2=80=93=
 such as
> FIR filter -- to customize my FPGA image, and add the corresponding contr=
ol
> driver for C++ application and Gnuradio. However, after creating newmod
> with rfnocmodtool, I have tried to add fir filter block, the tool is not
> aware about the existing blocks. Instead, the rfnocmodtool has created a
> module from scratch called FIR. In other words, it did not import the FIR
> module that is offered by Ettus team. Is there any other way of doing thi=
s?
> How can add a OOT RFNoC FIR control module to gnuradio?
>

Your request is a little confusing.  Do you mind clarifying?

Do you want to build a new FPGA image with the RFNoC FIR that Ettus already
made, or do you want to create your own custom module which uses a Xilinx
FIR filter from their FIR compiler?

Brian

--00000000000011a1f805ba8733bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Feb 4, 2021 at 1:15 PM Askar, Ram=
ez via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"en-DE" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_8399973875273614662WordSection1">
<p class=3D"MsoNormal"><span lang=3D"DE">Dear Sir or Madam,<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I would like to use one of the =
available FPGA blocks from Ettus =E2=80=93 such as FIR filter -- to customi=
ze my FPGA image, and add the corresponding control driver for C++ applicat=
ion and Gnuradio. However, after creating newmod
 with rfnocmodtool, I have tried to add fir filter block, the tool is not a=
ware about the existing blocks. Instead, the rfnocmodtool has created a mod=
ule from scratch called FIR. In other words, it did not import the FIR modu=
le that is offered by Ettus team.
 Is there any other way of doing this? How can add a OOT RFNoC FIR control =
module to gnuradio?</span></p></div></div></blockquote><div><br></div><div>=
Your request is a little confusing.=C2=A0 Do you mind clarifying?</div><div=
><br></div><div>Do you want to build a new FPGA image with the RFNoC FIR th=
at Ettus already made, or do you want to create your own custom module whic=
h uses a Xilinx FIR filter from their FIR compiler?</div><div><br></div><di=
v>Brian</div></div></div>

--00000000000011a1f805ba8733bb--


--===============6449225938907364115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6449225938907364115==--

