Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPqCJvyx2Gk8hAgAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 10:17:00 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DCD3D3E11
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 10:17:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F7453860DC
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 04:16:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1775809019; bh=NmcdWtQjQYgWwjphxelntMJoWrLs9wqOPln733glotI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wed2PiB+clfGU1UCIF+pOHFM7LSuWj+C858NIXJLEno3Q+pJzk+KOqFRnCTbI3K1V
	 8hagT/OmlUFvxa/idYSYI4JYld2f3lryEjZ1epmZ9PN4zfl+MPHCf38pXGi5iRI98o
	 Ez6mpwHrtGE7dub3fRhHf2TYalI7tPY0wjPxj0X8n/E6enBvPFyZ3aCKm1LlKJ5TjX
	 XbB4iLdpgDNCeaQhiGT/GLdAxLTlvbwn5rBRJxO9jK5cZEtTlpqOMKuUPQqitrWuuP
	 gTql10pKoWB8Lr6jYJlXBcuvb1FY0EbWN3zcNlwIaY67yUh0ftAGsE6toeEMJD6P/d
	 nT7wffXKcTlTw==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id A9EAA38650C
	for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2026 04:16:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20251104.gappssmtp.com header.i=@ettus-com.20251104.gappssmtp.com header.b="CpztAIoP";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-8a4b8c3a30bso20136016d6.3
        for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2026 01:16:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775808961; cv=none;
        d=google.com; s=arc-20240605;
        b=B6XEgv8R6zsliyr5C/RFxVc8lx2XLqnd8RyGQrfm7cqNMkOTo9RLLQpWkgK4V5lxgj
         QK39sChusP2b7sOzVbzrU8mBmmI9KGtU9/BUaBcR9mYzEX46qB9G7xtWslJkexCvTuC+
         z6azetaQojJxUIjYpukztrHTyCJ4XV1Qa1Sq4t/9CalhaxHtREHF3HNaL2+eD21nLvxh
         KD0Ac84E3JISQ0VtMm1al0e+z+gizZPBtgu3O6A6djcgOtnkc2nhxEI3Skzt4p9CKBL+
         CEFjv+rmHtBp9S0n2R8ihzZTwisyCbuMNzODLdglrSP7mizgFm6ecE5alC3DVvM8KcRW
         UWRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Wxlu+GMGrQLxkY2w02OZDsJ/yNOvZkRqHEyyVjXNxUw=;
        fh=1adcuLN4VePyAip7Shvc4XVYUZRXr323UxdtkoipyMM=;
        b=Futyfb0wybEmKk/lWNvGbNFjQ81jozMtCQFBjV6L0js0hvTh11+uIRze91Ff4iZjHs
         Qm5tG7I1uNJFIs+stR5E79vwG5Jrqs9gFQRd7Lo82ZOiyOMHO5kqVjkPa5Bqt4oFRGJw
         StDThduJz2ZBIZwcw6pW0phYOFuk4xU49xfw7utA4usW037BPnd6+fJmBwAFZryj+R9P
         dLzvekIcI2OF+F3ns1KbmW+p2YVJfp9nHdt+fr9HeBVVNYfXlsrMi2GEM6aGBJ7wcFUI
         fEzvYZygV8jSony3S4W09+9QbgV6+RSg3duo7rnjczVP7uewabThK6mB3qvj1Jmt5aqD
         GOEA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1775808961; x=1776413761; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wxlu+GMGrQLxkY2w02OZDsJ/yNOvZkRqHEyyVjXNxUw=;
        b=CpztAIoP49whyvEyRbK9s1EADDyw4M4+gVUGJlO0qkKG9hTxP7fdyGjJSdl1OUTDWv
         B7SrX4/Qwkqliq0s2235f3FUVt0paE60zYHgwF7GVZuNzSiVqf8FDDqTLWaHw7ekOn+0
         z7qGwSsJm+WTIHbrqdaOsXnW91bHtYsHBkRFDGkV69IWelO7+/qKmfUxF65Lstz7R3YZ
         RPVK9OhjQFJVLh76/iVs8/ua9V2pYFYC8duICRzpE0tfjZ4xa+Mhop1XA/JlHoTo5d0m
         KJtUSzgMH32rlDW+IE8E+mVD6gEuBty+acgmR1XeFY2wow7jE7YUD+M+y6wrBdsbaMvq
         eQVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775808961; x=1776413761;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wxlu+GMGrQLxkY2w02OZDsJ/yNOvZkRqHEyyVjXNxUw=;
        b=oWsRMXVcOCI8JIy5jpxVsWYEEDfguosHjRN5dO2i+/b8wpwGzLX8UOVBXT1czYj5B6
         4p5fGPrLJ4VTVKt8eFCFYdWVxqQYqTgQGzNBg/NhOroMVbrL1AjRaACTEIkiCsDq4O9r
         ez8VgxhSnu0qacxPQ1Qw5ysVKvf0j1kytQULO7hYhXEynsKosLijxEz2EUmpSXwqX8br
         GYJE3eiy6+QTNHGEdV+vFkM0KnZfLFFaHwHw//wBJbCcxmuI0WkjqUkMAjyW0VQoCWbT
         QR44GdINvcztsRS8iuXni7Ick1mH/nQrMNd0C+EwnRvupp/RL5XBL4ScZDdYbyfsQOur
         nAAA==
X-Gm-Message-State: AOJu0YyZAFVX+By9jmWiprW1ZRueHEJ+dwNAcLA7qAVU+AD4ezJ2jc2G
	AgwcST4zlMlgqBD/tIZx2k65qX1R6cC/mASh8x+P4SNUlTFKVjZOJfAGCJXQa5OVTRtbhPqwruP
	AxX20zRaGFxBWJ8eVd3O1YGskuCl79nZIp29iqgiGMh6s54/h4SbXOT8=
X-Gm-Gg: AeBDievWg9f30WJkBNyb30HtPE1Ry/9kWfqh35PaZ5P+2mA/IYPqNPFsmlCfhyh0HkD
	dt5FZsibOWWAbQ3slWds2xEFmP1Gq/845sgGKf9lZPC23wAcLkinGoQFtWiAPBttjKAOBf94en+
	kbdghLnvPhhq2FrgzjpAjWgTwAnR5iprlX95lXSjm2lHpd+qFJFUzyN+/ZQCEw43m2XVtRhAZO/
	ZTx3P0lyOjW4Yr6Km3sxkIAS1XZC0gJmoQaNkD/I37HSZUxTEFBhJaGVkb7quM6MF9az3O7FnVo
	sVEekJK0f0rXFtieeODwXwJFf2Q18V+nwr4en7JKLMbEOxhOXg==
X-Received: by 2002:a05:6214:c2b:b0:8ac:8337:ca08 with SMTP id
 6a1803df08f44-8ac86245532mr32386776d6.51.1775808960854; Fri, 10 Apr 2026
 01:16:00 -0700 (PDT)
MIME-Version: 1.0
References: <mail.bb7c0fed-7c8e-4098-991f-501490c95c59@storage.wm.amazon.com> <0100019d6d58baa7-4c4077d4-6be1-49d9-a339-32daac5455f4-000000@email.amazonses.com>
In-Reply-To: <0100019d6d58baa7-4c4077d4-6be1-49d9-a339-32daac5455f4-000000@email.amazonses.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 10 Apr 2026 10:15:49 +0200
X-Gm-Features: AQROBzDNYnLvWrI_QSPJCRGVxSkGww8hyyB2arOpFYVzuIbomFRaKN6MsIiEBJ0
Message-ID: <CAFOi1A5QekG27WDjZRJEF4kSKkGS32HB0arXieHG8=Ofowmb3Q@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: Y5HZCETUKLQCCM3X4MDCPIEUITX2X6N7
X-Message-ID-Hash: Y5HZCETUKLQCCM3X4MDCPIEUITX2X6N7
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 Update Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y5HZCETUKLQCCM3X4MDCPIEUITX2X6N7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6384075826521681661=="
X-Spamd-Result: default: False [2.49 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DMARC_NA(0.00)[ettus.com];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:email,emwd.com:dkim]
X-Rspamd-Queue-Id: 16DCD3D3E11
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============6384075826521681661==
Content-Type: multipart/alternative; boundary="0000000000004d0e25064f16bedb"

--0000000000004d0e25064f16bedb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tom,

the overlay warnings can be ignored. Are there any other errors or
warnings? What happens when you run uhd_find_devices or uhd_usrp_probe
against your device? What if you ssh onto the device and run those commands
there?
Or does the boot process just stop there?

--M

On Wed, Apr 8, 2026 at 3:47=E2=80=AFPM Tom Wallace via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I have a couple of E310s (the early speed grade 1 models) that have been
> on the shelf for a long while, and I=E2=80=99m trying to check them out. =
They boot
> properly with current sg1 card images, but any attempt to update the
> firmware fails. Here=E2=80=99s example output from the auto-update that o=
ccurs
> immediately after boot using the 3.15.0 SD image:
>
>
>
> [   31.931863] fpga_manager fpga0: writing e310_sg1_idle.bin to Xilinx
> Zynq FPGA Manager
> [   32.105915] OF: overlay: WARNING: memory leak will occur if overlay
> removed, property: /fpga-full/firmware-name
> [   32.136579] OF: overlay: WARNING: memory leak will occur if overlay
> removed, property: /__symbols__/devctrl
> [   32.149637] OF: overlay: WARNING: memory leak will occur if overlay
> removed, property: /__symbols__/charger
> [   32.181045] OF: overlay: WARNING: memory leak will occur if overlay
> removed, property: /__symbols__/battery
> [   32.701432] e31x-pmu fpga-full:pmu: Unsupported firmware version 0.0
> [   32.718069] e31x-pmu: probe of fpga-full:pmu failed with error -524
>
>
> I see the same error with 4.6.0, and when running uhd_image_loader =E2=80=
=93args
> type=3De3xx on both 3.15.0 and 4.6.0 (there are additional complaints fro=
m
> MPM.PeriphManager on 4.6.0).
>
>
>
> This occurs on both systems with identical symptoms. Is this a known issu=
e
> with upgrading older E310s, and if so, is there a solution?
>
>
>
> ---
>
>   Tom Wallace
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004d0e25064f16bedb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Tom,</div><div><br></div><div>the overlay warnings ca=
n be ignored. Are there any other errors or warnings? What happens when you=
 run uhd_find_devices or uhd_usrp_probe against your device? What if you ss=
h onto the device and run those commands there?</div><div>Or does the boot =
process just stop there?</div><div><br></div><div>--M</div></div><br><div c=
lass=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Apr 8, 2026 at 3:47=E2=80=AFPM Tom Wallace via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv class=3D"msg6357364939539446976"><div lang=3D"EN-US" style=3D"overflow-w=
rap: break-word;"><div class=3D"m_6357364939539446976WordSection1"><p class=
=3D"MsoNormal"><span style=3D"font-size:11pt">I have a couple of E310s (the=
 early speed grade 1 models) that have been on the shelf for a long while, =
and I=E2=80=99m trying to check them out. They boot properly with current s=
g1 card images, but any attempt to update the firmware fails. Here=E2=80=99=
s example output from the auto-update that occurs immediately after boot us=
ing the 3.15.0 SD image:<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an style=3D"font-size:11pt"><u></u>=C2=A0<u></u></span></p><p style=3D"marg=
in:0in"><span style=3D"font-family:&quot;Arial&quot;,sans-serif">[=C2=A0 =
=C2=A031.931863] fpga_manager fpga0: writing e310_sg1_idle.bin to Xilinx Zy=
nq FPGA Manager<br>[=C2=A0 =C2=A032.105915] OF: overlay: WARNING: memory le=
ak will occur if overlay removed, property: /fpga-full/firmware-name<br>[=
=C2=A0 =C2=A032.136579] OF: overlay: WARNING: memory leak will occur if ove=
rlay removed, property: /__symbols__/devctrl<br>[=C2=A0 =C2=A032.149637] OF=
: overlay: WARNING: memory leak will occur if overlay removed, property: /_=
_symbols__/charger<br>[=C2=A0 =C2=A032.181045] OF: overlay: WARNING: memory=
 leak will occur if overlay removed, property: /__symbols__/battery<br>[=C2=
=A0 =C2=A032.701432] e31x-pmu fpga-full:pmu: Unsupported firmware version 0=
.0<br>[=C2=A0 =C2=A032.718069] e31x-pmu: probe of fpga-full:pmu failed with=
 error -524<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"f=
ont-family:&quot;Arial&quot;,sans-serif"><br></span><span style=3D"font-siz=
e:11pt">I see the same error with 4.6.0, and when running uhd_image_loader =
=E2=80=93args type=3De3xx on both 3.15.0 and 4.6.0 (there are additional co=
mplaints from MPM.PeriphManager on 4.6.0).<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span style=3D"font-size:11pt">This occurs on both=
 systems with identical symptoms. Is this a known issue with upgrading olde=
r E310s, and if so, is there a solution?<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span style=3D"font-size:11pt">---<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0 Tom W=
allace <u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u>=
</p></div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000004d0e25064f16bedb--

--===============6384075826521681661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6384075826521681661==--
