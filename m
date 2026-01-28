Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COHGHU0GemlE1gEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 28 Jan 2026 13:51:25 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A11CA1976
	for <lists+usrp-users@lfdr.de>; Wed, 28 Jan 2026 13:51:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05E6138CB8B
	for <lists+usrp-users@lfdr.de>; Wed, 28 Jan 2026 07:51:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769604683; bh=kEh7ZEk4boNTc2MG0tRk154OzcOIrtMfLEVuzxgJbdM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=M+1T2vhlB8LZYYeZVeKNfuvcYvyJmETLrPqujvu+Q2fieWQlZEdMDJzkkYSOsPNGj
	 B2vnT3uOtARcG7VEzNVsGNhQRgGNDxYVLQxTXa/XuCMeLFaWuyHQNrNaKeKQD8+y6N
	 A5sb73y2BphjxmwJppCbopyGGMgsxfbogqYrYSAX1aZQyjQK670AMWQLJ55q+JHt4e
	 liZf2vrZesowBee7PLpl+jgPBnlvmc7Vji//tsGlPBNTdI19vuIMeaBNm6RH/hQU3F
	 FQitdcrr91ovqiva9DaktNJ8oIbcJkssppkqherkKWt/RBReOy1j5VGt/MYjsUVqmx
	 in20mCu/UupXQ==
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 73BCE38CAB9
	for <usrp-users@lists.ettus.com>; Wed, 28 Jan 2026 07:50:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PWUaBdJn";
	dkim-atps=neutral
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59dd490be5fso8861382e87.2
        for <usrp-users@lists.ettus.com>; Wed, 28 Jan 2026 04:50:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769604610; cv=none;
        d=google.com; s=arc-20240605;
        b=Bugzwzghn5a5NRUKli2kA3G7zBGtIyOxbPd4tx6byn1PUkOELOaQsN5Rv3QLLwnBBf
         xOD7iblbcZC9cCYzzDWSlhMP1MIZynzI+Oc7/Q1NEhozbOlfzCIS4+YIrv2I/DakQPF2
         Y/IfzQaOUCb0zdMlo8ri3OxnYeqYweIbs1jP3gfDyz5oOH6FIpxpCK9MGkcdHTlQtnMo
         8Z6WPas/WKeAY1w4SCqbLA+v8xGIs6KAIrUg5KBkEEYJSJQbUBFnWxQDN/42E3b130Yd
         qz2lVA66gHRB59HAQzEYdXmK++ExXUnX3IuuO4kkI4zf8hpQWi/Jcjxj0o8S/wWqdxhh
         zDtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hMuxmpkvMYxoif33IfymsMnA56h/mAIkmrK/XARWfrQ=;
        fh=zVmoyH26z6MzJJI6YVSrN64Nd7a1jURGGHbUG7O6htQ=;
        b=VzolODu8MwDf6iRw4Tp1uA2gB0AoP+cq9nt1vnj1EMsIpM85JTe+3DzIq74H/XYSP5
         WFG7BX1Jg3h/WDLNA/SUukcyVm7o5wycv7SLWe+O9kIYziUGjLghub4y3FhcAUeMtB8o
         Eq05nBV0aikTn7JPlwWBN4ZvAz7b31/8VrOPaVTbPLg45CIjhqj2fFALAgI2z7WfaYcd
         5s91sFVHJfRsF+Nc4qO/l8C1yXOWK7KoIJZrI9psflKyd6iqiwJK4fAtsH5NSPwLbHiI
         /aiNyEix+ghH90DYGpyoQXytHK9KaCz5jm5GDegqhUMIrz7oRTIY7uw0hlIj1DSjpkjX
         ut4w==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769604610; x=1770209410; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hMuxmpkvMYxoif33IfymsMnA56h/mAIkmrK/XARWfrQ=;
        b=PWUaBdJnPWN+KeBgo4N9mW10EjpcLCHTpoUT5gO4sath3pYgjny3X9mnM/FtH2km4U
         3bZtsU0GFsif9OknTxvTJn45Y+0HB8MFErMcnN1mLCcLYxYllS8E/HCs4T7eh7T6ZlbU
         /PiDPtN5RejwFTX8uZBceT0tiRDMibnsQ/WGjrgbed8qEKxBHxXNgneywRFbhDYohKNo
         gmnkfgboesK6MpFVpqA2FQplgxMT/5jl43Dr2UtRD3sbsaGkezppDvx51DZJceeOu+/A
         Fzw/+7bEyIJFFilgtflSebUJPKmsDj5/lYbui6agyAFi/4PhD9nMdujjMDt3ep6C5FZ9
         u4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769604610; x=1770209410;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hMuxmpkvMYxoif33IfymsMnA56h/mAIkmrK/XARWfrQ=;
        b=AxtxusoihcGk79pstDLb2cokbeIAXunviz0cGUDtKCnlZaT8MmU2RmsRkh4wZdmXk0
         mD0qR6UmOvzcRroWSbiGOrlounP7NkQqjaSg5bsxEFknt9M2AHBUpVkY25hEFnmPQjsp
         mbgubtPMopwKU8B4w3UbDlnmVDJeq1s7XF32KV8mLXrUxQGM7wEk9f64Kf7fTUSaCmlP
         YUZ/KT7O9LqpuGSrvbCsKxRs73OwyHziATvdyJX9dgU8iNiVjmqvVP0tKXSLQ1c3goYP
         /keV+emt8v/4jW1QPWWMi+MGiBXOlJ/WL+nf9OQ7/INxcnNsn1/wW+oxosn559afZWET
         fAfQ==
X-Gm-Message-State: AOJu0YwTwYrXA8RrhS8ncMl+RXGpCOjQ90HR8hJvIE0ltlJM/SQdjeV9
	1TwVi9HsC4jXHhseiUmZBVK41q0+grdDVEyRE80KSL+hOgnoJoEs2dx8/lQWfVkZ0lS76LMskqC
	RD7M96Lp/nyDRxJe5dw0n+MGJ+oh3Epo=
X-Gm-Gg: AZuq6aL5IdOCQy59EElZn17iRcVepegEWnU9ZObA/2V2m+dwq240iQf3mmlY3as8Kzx
	eIx/F+LIPf2Q6pyisqdrGKmU6wLYvuMvaoaLAXgnRK7L5JesBHas1ymwdOgI2IIv7fmyZDEopFK
	RhSbPaHYwhZYJbBXhNmzAAXPOK3Z9v869dTT7SAqaJVj6yu8qEbqrFDD6tLIVcwuXLB731EF+9t
	5poTBr0WEo+jLkBZHxbvbg5Vcj4RGGIUfDxFSSsROzqLVBVy3f5DrV3U6ft2QrY5nQIMyMBDFsy
	D76qFpnGAY2x0+FEt3WlKFhX0n/d/hFcXA3L1baVR6UDIgJcUjKXosKq7Bg=
X-Received: by 2002:a05:6512:6c7:b0:59d:f545:f2da with SMTP id
 2adb3069b0e04-59e0401d0bdmr2017325e87.8.1769604609391; Wed, 28 Jan 2026
 04:50:09 -0800 (PST)
MIME-Version: 1.0
References: <opvBtdJRjFznFDZtTPSk8huJqKCStTx50oICCtWaQrA@lists.ettus.com>
In-Reply-To: <opvBtdJRjFznFDZtTPSk8huJqKCStTx50oICCtWaQrA@lists.ettus.com>
From: Daniel Ozer <danielozer22@gmail.com>
Date: Wed, 28 Jan 2026 14:49:57 +0200
X-Gm-Features: AZwV_QigxoTtLuNRy-Ta_xX-qrSDqv3jDwwLbLMb3rbZgEVw6sZx33ygsfwitBQ
Message-ID: <CAE_Rk56+4FYfmw7Oma+g9mwujsOJXOmKirDWCew092AJOEYuKA@mail.gmail.com>
To: niels.steffen.garibaldi@emerson.com
Message-ID-Hash: WANBLOLM7HUTHUFHEEKXQPFN62WOWDK2
X-Message-ID-Hash: WANBLOLM7HUTHUFHEEKXQPFN62WOWDK2
X-MailFrom: danielozer22@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IFg0NDAgWDRfNDAwIHdpdGggRERDIG5vdCB3b3JraW5n4oCP4oCP?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WANBLOLM7HUTHUFHEEKXQPFN62WOWDK2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2963776973087259123=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[gmail.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielozer22@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim,ettus.com:url,ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: 2A11CA1976
X-Rspamd-Action: no action

--===============2963776973087259123==
Content-Type: multipart/alternative; boundary="00000000000022c0660649722e0c"

--00000000000022c0660649722e0c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the detailed response.
In the end, I want to take all 491.52e6 band (from 1 Rx) and split it into
smaller bands.
Is it possible in the rfnoc framework? Can I change the ce clock of my OOT
block to a higher clock than 266e6 ?
or I must upload the samples to the host ?
+ can i change the DDC clock to something lower than 266.66MHz (for sample
rate smaller than 100M)
thanks in advance

=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=D7=
=B3, 14 =D7=91=D7=99=D7=A0=D7=95=D7=B3 2026 =D7=91-18:35 =D7=9E=D7=90=D7=AA=
 =E2=80=AAniels.steffen.garibaldi--- via
USRP-users=E2=80=AC=E2=80=8F <=E2=80=AAusrp-users@lists.ettus.com=E2=80=AC=
=E2=80=8F>:=E2=80=AC

> Hi Daniel,
>
> The short answer is that the current DDC/DUC implementations will not wor=
k
> for Sampling rates above 250MHz.
>
> The long Answer:
> The current implementation of the DDC/DUC RFNoC blocks only supports a
> single sample per clock cycle processing of data.
>
> Internally the DDC/DUC blocks use the faster CE(Compute Engine) clocks to
> do the Down-/Upconverting, which on your X440 device is running at
> 266.66MHz <https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#X440>.
>
> Therefore the highest sampling rates supported by the DDC/DUC blocks is
> 250MHz, which corresponds to the 200MHz BW variants of the provided
> bitfiles.
>
> If the radio provides samples at a higher rate, they will still reach the
> DDC block but the internal serialization buffers will fill up quickly as
> the block can not process incoming samples fast enough. This will lead to
> an overflow, which might be related to why your rfnoc session times out.
>
> This is the also the main reason why only the =E2=80=9C*_200_rfnoc_image_=
core.yml=E2=80=9D
> variants have the DDC/DUC blocks included.
>
> You can still capture samples at a faster sampling rate, but you will hav=
e
> to stream them to your host first and then do the downconversion there.
> Be aware that this requires a fast connection between USRP and Host, whic=
h
> can be challenging in some setups.
>
> Another thing you could try is to reduce the MCR closer to your target
> sampling rate. The x440 supports a wider variety of flexible sampling rat=
es
> than the other USRPs, so if you only care about the downsampled waveform,
> you could just try to get close to your desired sampling rate that way. S=
ee the
> appendix of this document for a list of supported sampling rates of the x=
440
> <https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_for_the=
_USRP_X440#Appendix>
> .
>
> If you still require this feature, you will either have to update the
> implementation yourself and make the DDC/DUC multisample capable, or you
> could try and contact Ettus/NI/Emerson support and put in a feature
> request. Depending on your business case the implementation might be
> prioritized and updated in a future release.
>
> Regards,
> Niels
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000022c0660649722e0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div dir=3D"ltr">Thank you for the detailed response.<br>I=
n the end, I want to take all 491.52e6 band (from 1 Rx) and split it into s=
maller bands.<br>Is it possible in the rfnoc framework? Can I change the ce=
 clock=C2=A0of my OOT block to a higher clock than 266e6 ?<br>or I must upl=
oad the samples to the host ?<br>+ can i change the DDC clock to something =
lower than 266.66MHz (for sample rate smaller than 100M)<br>thanks in advan=
ce=C2=A0</div></div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=
=D7=9A =D7=99=D7=95=D7=9D =D7=93=D7=B3, 14 =D7=91=D7=99=D7=A0=D7=95=D7=B3 2=
026 =D7=91-18:35 =D7=9E=D7=90=D7=AA =E2=80=AAniels.steffen.garibaldi--- via=
 USRP-users=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=
=AC<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi Daniel=
,<br><br>The short answer is that the current DDC/DUC implementations will =
not work for Sampling rates above 250MHz.<br><br>The long Answer:<br>The cu=
rrent implementation of the DDC/DUC RFNoC blocks only supports a single sam=
ple per clock cycle processing of data.<br><br>Internally the DDC/DUC block=
s use the faster CE(Compute Engine) clocks to do the Down-/Upconverting, <a=
 href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#X440" title=
=3D"" target=3D"_blank">which on your X440 device is running at 266.66MHz</=
a>.<br><br>Therefore the highest sampling rates supported by the DDC/DUC bl=
ocks is 250MHz, which corresponds to the 200MHz BW variants of the provided=
 bitfiles.<br><br>If the radio provides samples at a higher rate, they will=
 still reach the DDC block but the internal serialization buffers will fill=
 up quickly as the block can not process incoming samples fast enough. This=
 will lead to an overflow, which might be related to why your rfnoc session=
 times out.<br><br>This is the also the main reason why only the =E2=80=9C*=
_200_rfnoc_image_core.yml=E2=80=9D variants have the DDC/DUC blocks include=
d.</p><p>You can still capture samples at a faster sampling rate, but you w=
ill have to stream them to your host first and then do the downconversion t=
here.<br>Be aware that this requires a fast connection between USRP and Hos=
t, which can be challenging in some setups.<br><br>Another thing you could =
try is to reduce the MCR closer to your target sampling rate. The x440 supp=
orts a wider variety of flexible sampling rates than the other USRPs, so if=
 you only care about the downsampled waveform, you could just try to get cl=
ose to your desired sampling rate that way. See <a href=3D"https://kb.ettus=
.com/About_Sampling_Rates_and_Master_Clock_Rates_for_the_USRP_X440#Appendix=
" title=3D"" target=3D"_blank">the appendix of this document for a list of =
supported sampling rates of the x440</a>.<br><br>If you still require this =
feature, you will either have to update the implementation yourself and mak=
e the DDC/DUC multisample capable, or you could try and contact Ettus/NI/Em=
erson support and put in a feature request. Depending on your business case=
 the implementation might be prioritized and updated in a future release.<b=
r><br>Regards,<br>Niels</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000022c0660649722e0c--

--===============2963776973087259123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2963776973087259123==--
