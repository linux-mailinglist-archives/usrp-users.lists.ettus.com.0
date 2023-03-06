Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5550D6ACF28
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 21:28:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CEC4E38538E
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 15:28:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678134525; bh=xyat4h2E8iDvBvlJnp+tAxSaEFMbXiPwrn0D7RB9KFw=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=TmROmosCKBvA3TzrXV1mF9IEwyH5yD8AAKhDcX6cewhcEJvOE9aBqzbnGAL4hiTyw
	 PRZvwGr2wcobkeJmwMjUJoPzQDYGQduk+oS5aqV3T80agx5oIp8kDxa1/3lZkNKbVC
	 pQ53eJIsdSkubXWtEDA2F4hpmYx9ekhuDmZi0wKl2mMMEb5ab2p2hpk18cG3EegZmP
	 KCTsA7a0vjK9H8V7EBzVZlBh2/faiVAA7Q9EwVTEykRH1tm5LBllwUFBCYU3lYBHN8
	 6dvccUGvDv/v88jnt+V0HgFNlcPuIlIueOk4s9doyCVVzeh0d4VxUUbSWPUoBQKF+V
	 CPlEr8I1KDGfQ==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 4924C385380
	for <usrp-users@lists.ettus.com>; Mon,  6 Mar 2023 15:28:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ieee.org header.i=@ieee.org header.b="S2bNcwOf";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id k10so19968956edk.13
        for <usrp-users@lists.ettus.com>; Mon, 06 Mar 2023 12:28:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1678134485;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PyOi+ID9+VPixr+A/KqQLtBIC/UykQnREbvCEm2aRkM=;
        b=S2bNcwOfFPvJpGZmuFWW1WUQ903hL1E/1K6SLpP3tQw2SfFMJEMyYtTDJP6a/raMZ4
         LiiXBvOWIW6EkFIUQ2TYbuFD1qu5P9KL/Lk8jnN8gB47BGhWVU0oi/HT1JxfvqyCC7Tz
         sUaGkOewSQMNiSsf20YgdmFPWFg2j6pKWV50I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678134485;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PyOi+ID9+VPixr+A/KqQLtBIC/UykQnREbvCEm2aRkM=;
        b=SDUMWidgtLJmrF2zIbRuLy6YpQ6FOcpMHqbvfmyo+VgSEKbmo356+HLR0rTVoIBLZt
         qHMO7L9EuDaC3BSI4qgW+XrkcDyksKZHDnfB53Xd8U7GmBv0fKXeJE+dg8sZPTWXzZPB
         WjVm+RLyxZObrHiNjzleNP5BmiLQ1MGyHFkpKThfpJtIDrXfqyDaJWOmoBdxQEVanPXI
         XUAZ3po7x4tbPM8Pvu1MHObH4MHpuOCSM0LI8m5IR4TpUvb35QU0y5cB9oX3Moi4DHAT
         N8EPQPB8DBmgnSNOmd7NS7LMEcSqdVPZ/NNaLEvJl8odO7kKC8KQLXg7COd7MHzA0o2J
         YcyQ==
X-Gm-Message-State: AO0yUKXynla2Tp6w3DEOQ5W66FgPSEDu8OYTG/6Yx04Ul9T0MKlsZ63J
	OTScn9ohL56/ULcqrizVAaalsLDqFHFMV0Ze0fayOq9Jp5/AborkrX0=
X-Google-Smtp-Source: AK7set/gix6SQ9WOHg7oQWk4qMJ7VQdpYDdJXuKVSFmKG9WVzLRNU6uJL8gQvRJcfkOXpQV6pUsJz2ppgJAThYoug84=
X-Received: by 2002:a50:d60d:0:b0:4bc:edde:14ff with SMTP id
 x13-20020a50d60d000000b004bcedde14ffmr6335507edi.0.1678134484747; Mon, 06 Mar
 2023 12:28:04 -0800 (PST)
MIME-Version: 1.0
References: <E1188D158AA7A048AF99B6A05DA3D62901B4EFF012@SPROMMAIL03.spengtes.space>
In-Reply-To: <E1188D158AA7A048AF99B6A05DA3D62901B4EFF012@SPROMMAIL03.spengtes.space>
Date: Tue, 7 Mar 2023 07:27:52 +1100
Message-ID: <CADrcXBT-gNx70iL-DRE60LXkjayMSPDHhgkPm_yok61mF3H=4w@mail.gmail.com>
To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Message-ID-Hash: PDBZ6X2EDKIVFWHEMFIZDKIAZUM33WZA
X-Message-ID-Hash: PDBZ6X2EDKIVFWHEMFIZDKIAZUM33WZA
X-MailFrom: efardin@ieee.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 FW error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PDBZ6X2EDKIVFWHEMFIZDKIAZUM33WZA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ernest Fardin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ernest Fardin <efardin@ieee.org>
Content-Type: multipart/mixed; boundary="===============1954737702753982204=="

--===============1954737702753982204==
Content-Type: multipart/alternative; boundary="000000000000d9c96405f6412180"

--000000000000d9c96405f6412180
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maurizio,

Compatibility number 33 indicates a fairly old version of the FPGA image,
so it would be best to perform an update.

To do this, run the command "/lib/bin/uhd_image_loader"
--args=3D"type=3Dx300,addr=3D192.168.10.2" as per the error message, then c=
ycle
the power after updating the FPGA.

Cheers

Ernest

On Mon, Mar 6, 2023 at 8:53=E2=80=AFPM STEFANI, Maurizio (External) via USR=
P-users <
usrp-users@lists.ettus.com> wrote:

> HI, I am trying to issue the following command:
>
>
>
> mau@mau-Vostro-3500:/usr/lib/uhd/examples$ ./benchmark_rate --rx_rate
> 10e6 --tx_rate 10e6
>
> but the answer is a runtime errot due to wrong fpga release,
>
> unfortunately I am not sure that the FW and FPGA inside the unit was not
> modified in the past.
>
> Cpuld you suggest if I have to update the FW or there is a work-around to
> go ahead?
>
> In the following the complete display answer
>
>
>
>
> mau@mau-Vostro-3500:/usr/lib/uhd/examples$ ./benchmark_rate --rx_rate
> 10e6 --tx_rate 10e6
>
> [INFO] [UHD]
> linux; GNU C++ version 10.2.1 20201207; Boost_107400; UHD_3.15.0.0-4build=
1
> [WARNING] [UHD] Unable to set the thread priority. Performance may be
> negatively affected.
> Please see the general application notes in the manual for instructions.
> EnvironmentError: OSError: error in pthread_setschedparam
> [00:00:00.000006] Creating the usrp device with: ...
> [INFO] [X300] X300 initialization sequence...
> Error: RuntimeError: Expected FPGA compatibility number 36, but got 33:
> The FPGA image on your device is not compatible with this host code build=
.
> Download the appropriate FPGA images for this version of UHD.
> Please run:
>
>  "/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>
> Then burn a new image to the on-board flash storage of your
> USRP X3xx device using the image loader utility. Use this command:
>
> "/lib/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.10.2"
>
> For more information, refer to the UHD manual:
>
>  http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash
> mau@mau-Vostro-3500:/usr/lib/uhd/examples$
>
> thank you in advance
>
>
>
> Maurizio Stefani
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

--000000000000d9c96405f6412180
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Maurizio,<div><br></div><div>Compatibility number 33 in=
dicates a fairly old version of the FPGA image, so it would be best to perf=
orm an update.</div><div><br></div><div>To do this, run the command &quot;/=
lib/bin/uhd_image_loader&quot; --args=3D&quot;type=3Dx300,addr=3D192.168.10=
.2&quot; as per the error message, then cycle the power after updating the =
FPGA.</div><div><br></div><div>Cheers</div><div><br></div><div>Ernest</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Mar 6, 2023 at 8:53=E2=80=AFPM STEFANI, Maurizio (External) via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div class=3D"msg-1813944630279242383">





<div lang=3D"IT">
<div class=3D"m_-1813944630279242383WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI, I am trying to issue the fo=
llowing command:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">mau@mau-Vostro-3500:/usr/lib/uh=
d/examples$ ./benchmark_rate --rx_rate 10e6 --tx_rate 10e6<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">but the answer is a runtime err=
ot due to wrong fpga release,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">unfortunately I am not sure tha=
t the FW and FPGA inside the unit was not modified in the past.<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Cpuld you suggest if I have to =
update the FW or there is a work-around to go ahead?<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In the following the complete d=
isplay answer<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br>
mau@mau-Vostro-3500:/usr/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6 =
--tx_rate 10e6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [UHD] <br>
linux; GNU C++ version 10.2.1 20201207; Boost_107400; UHD_3.15.0.0-4build1<=
br>
[WARNING] [UHD] Unable to set the thread priority. Performance may be negat=
ively affected.<br>
Please see the general application notes in the manual for instructions.<br=
>
EnvironmentError: OSError: error in pthread_setschedparam<br>
[00:00:00.000006] Creating the usrp device with: ...<br>
[INFO] [X300] X300 initialization sequence...<br>
Error: RuntimeError: Expected FPGA compatibility number 36, but got 33:<br>
The FPGA image on your device is not compatible with this host code build.<=
br>
Download the appropriate FPGA images for this version of UHD.<br>
Please run:<br>
<br>
=C2=A0&quot;/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py&quot;<=
br>
<br>
Then burn a new image to the on-board flash storage of your<br>
USRP X3xx device using the image loader utility. Use this command:<br>
<br>
&quot;/lib/bin/uhd_image_loader&quot; --args=3D&quot;type=3Dx300,addr=3D192=
.168.10.2&quot;<br>
<br>
For more information, refer to the UHD manual:<br>
<br>
=C2=A0</span><a href=3D"http://files.ettus.com/manual/page_usrp_x3x0.html#x=
3x0_flash" target=3D"_blank"><span lang=3D"EN-US">http://files.ettus.com/ma=
nual/page_usrp_x3x0.html#x3x0_flash</span></a><span lang=3D"EN-US"><br>
mau@mau-Vostro-3500:/usr/lib/uhd/examples$ <br>
<br>
thank you in advance<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizio Stefani<u></u><u></u><=
/span></p>
</div>
<font style=3D"font-size:9px">The information in this e-mail is confidentia=
l. The contents may not be disclosed or used by anyone other than the addre=
ssee. Access to this e-mail by anyone else is unauthorised.<br>If you are n=
ot the intended recipient, please notify Airbus immediately and delete this=
 e-mail.<br>Airbus cannot accept any responsibility for the accuracy or com=
pleteness of this e-mail as it has been sent over public networks. If you h=
ave any concerns over the content of this message or its Accuracy or Integr=
ity, please contact Airbus immediately.<br>All outgoing e-mails from Airbus=
 are checked using regularly updated virus scanning software but you should=
 take whatever measures you deem to be appropriate to ensure that this mess=
age and any attachments are virus free.</font></div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000d9c96405f6412180--

--===============1954737702753982204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1954737702753982204==--
