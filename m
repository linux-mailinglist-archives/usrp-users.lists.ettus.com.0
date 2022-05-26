Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E30535152
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 17:22:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1868384E00
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 11:22:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653578553; bh=msGXFPVMFjM6HSYleH50gGlu6p/xVIlsIz5pJn8+g5s=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MN9SbS3U1OJrEpos6li1OMfc59l/0Zo6a9JpwB9VPAwf9hT9DRnc0yayuhUlO6WmM
	 oyH3BnLUBQKLINfedpYniK+oRRgpMONugIQEyZYUFpKSWo5+fOSUKdA4iFxipHGqN1
	 ZyoaFPGWtlEKx44YH5sH8UAmgTkMTnFwOn6QO9AMvWraB2fElIxLXWkT1IvXsKKe3K
	 /VOwUYm82GyRihH980+jMlPwZldoAf1azeixYHvf7+B2l8EqGgMWbCPZd1SFXOHZNF
	 A4l4cnZ+Eda1Ok7T63cGEyL/aORmpigaObajQYS3SFyw6rob4FYUABeuR7R8JZEshm
	 EQ9IQ8PyPMTBA==
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 33E8138475F
	for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 10:54:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Q6ZgZjHc";
	dkim-atps=neutral
Received: by mail-pf1-f177.google.com with SMTP id i18so1878878pfk.7
        for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 07:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rFFXc6mBixiiHoVcFzJbOBqDMU4vGW6QTwd9XbeSAEc=;
        b=Q6ZgZjHccY935Ah4+SBxmFGbiuZUkeFFeOxyN4aBhrgklm8CdrnFUXINaOQPP1UPOL
         laOJr+dIre+wN2ZkxC9Oaye6ESor6Xp9rs9czENwhxAE+tSCd/J30JgqfyWcQ+KE7vmO
         qHm8Vog5vXmgKmqCo+bsL0x/E5Tj3aKbyNLgVMewEuZaOCnYWJfkQ5BLCZSb199sWXak
         qDAtxuXSvi/ozdpNw207EwRrQlIJLILV/Mj7RmTfjooYQQIFUoK2+8WgUbsffzzuNdgY
         +lOh0LfepDtf/jp6mV8/SNblOwHr6X1hTAez6bIV3ZLIsgnS26zgEt421BPZNEK9y12P
         /k9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rFFXc6mBixiiHoVcFzJbOBqDMU4vGW6QTwd9XbeSAEc=;
        b=SZCTjOZdO9eBWvmo3+tR1lmxc3l6t0iWbRRnQBWMNsr92LIlx8B0VLxCcj/8I8wuTt
         Dl2IStl7DLQK7GI+foinkigb9oyJwuP1tZZaydZkkDHg2CubKgkC4IPdNpcIFQpP8moZ
         6bocxrdrL+B/HJGg8Q9s95mz9evbgBdyuU3rwWxV+BxJaA5w3W3ll9/mK4Z3FapR1Ush
         w+zySZBJnsmKLSf+64Asprl5ytc4bwnrSFsWc06l7QcWrAGTB9Ddhylsy+dH8cb3VxBs
         fiTYfP2xgLxrkmppa0w3baEhQTCvjBYl77Wa++DbREkuV1WUtzG3syVA8JviZL4+ytzb
         tHyQ==
X-Gm-Message-State: AOAM532Cq0PwD5I2o9cUIGttKhDYJha2Raxz8uj5Q529V02Pjy5tWqcB
	jWSLGDwz7MFVffXQtfkIZYpY5wbzWj8H2cV47E9gqsCz56I=
X-Google-Smtp-Source: ABdhPJzmGQPDh4/MRTEO22M6beyV+N5QhqdetNIAKMDPKZqsbpQFdQ326x4GTw02uOWX1S4IpW9pS5FFQXe7+IAeE0I=
X-Received: by 2002:a63:2117:0:b0:3c2:85f9:1b6f with SMTP id
 h23-20020a632117000000b003c285f91b6fmr33188965pgh.66.1653576855006; Thu, 26
 May 2022 07:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg@lists.ettus.com>
In-Reply-To: <lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 26 May 2022 10:54:03 -0400
Message-ID: <CAEXYVK4SbAmwHdL8pkrb=5izfG=xsmPQRqggGbDPgpnxWeeEUw@mail.gmail.com>
To: luca.vigna@argotecgroup.com
Message-ID-Hash: A3RUGXFLRXJ4PUFN5ICSU4KGYXIS2H76
X-Message-ID-Hash: A3RUGXFLRXJ4PUFN5ICSU4KGYXIS2H76
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X300 DDC - Filter Taps
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A3RUGXFLRXJ4PUFN5ICSU4KGYXIS2H76/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6439224034251228643=="

--===============6439224034251228643==
Content-Type: multipart/alternative; boundary="0000000000000dc8b705dfeb5d3a"

--0000000000000dc8b705dfeb5d3a
Content-Type: text/plain; charset="UTF-8"

On Thu, May 26, 2022 at 10:43 AM <luca.vigna@argotecgroup.com> wrote:

> Hi all!
>
>
> I am starting to look through some of the FPGA code of the USRP X300 in
> order to understand which is the DDC chain configuration in the default
> image.
>
>
> I have understood that in the DDC chain there is 1 CIC filter + 3 Halfband
> filters. Since I want to characterize the DDC chain I have the following
> questions:
>
>    1.
>
>    How are they used? I suppose that the halfband filters are used based
>    on the decimation factor we need (max. 1024)
>    2.
>
>    Which is the order of the CIC filter?
>    3.
>
>    How many taps each halfband filters have? Which are the taps?
>
>
Taking a look at the ddc.v file is the best insight.  The cic_decimate has
an N which is the order it's given:


https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/ddc.v#L283

Here it's listed as 4.

In general, the CIC is used for bulk decimation up to 2, 4, or 8x
oversampled - ideally 8x.  The hbdec1 is the first, hbdec2 is the next, and
hbdec3 is the last.  Their coefficients can be found here:


https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/top/x300/coregen_dsp/hbdec1.mif

https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/top/x300/coregen_dsp/hbdec2.mif

https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/top/x300/coregen_dsp/hbdec3.mif

If the desired decimation rate is divisible by 8, then all 3 halfbands are
used.  If not, a division by 4 is checked, and 2 are used.  If not, a
division by 2 is checked and 1 is used.  If not, only the CIC is used.

If you want to test your model against the HDL itself, a testbench is
located here:


https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/rfnoc_block_ddc_tb.sv

But it's probably easier and much faster to pass samples through the actual
RFNoC block in a custom graph that just exercises the DDC.

Brian

--0000000000000dc8b705dfeb5d3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 26, 2022 at 10:43 AM &lt;<a h=
ref=3D"mailto:luca.vigna@argotecgroup.com">luca.vigna@argotecgroup.com</a>&=
gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><p>Hi all!</p><p><br></p><p>I am starting to look thr=
ough some of the FPGA code of the USRP X300 in order to understand which is=
 the DDC chain configuration in the default image.</p><p><br></p><p>I have =
understood that in the DDC chain there is 1 CIC filter + 3 Halfband filters=
. Since I want to characterize the DDC chain I have the following questions=
:</p><ol><li><p>How are they used? I suppose that the halfband filters are =
used based on the decimation factor we need (max. 1024)</p></li><li><p>Whic=
h is the order of the CIC filter?</p></li><li><p>How many taps each halfban=
d filters have? Which are the taps?</p></li></ol></blockquote><div><br></di=
v><div>Taking a look at the ddc.v file is the best insight.=C2=A0 The cic_d=
ecimate has an N which is the order it&#39;s given:</div><div><br></div><di=
v>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/5333d3d1=
2ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/ddc.v#L283">https://g=
ithub.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/f=
pga/usrp3/lib/rfnoc/ddc.v#L283</a></div><div><br></div><div>Here it&#39;s l=
isted as 4.</div><div><br></div><div>In general, the CIC is used for bulk d=
ecimation up to 2, 4, or 8x oversampled - ideally 8x.=C2=A0 The hbdec1 is t=
he first, hbdec2 is the next, and hbdec3 is the last.=C2=A0 Their coefficie=
nts can be found here:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"http=
s://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e=
57f/fpga/usrp3/top/x300/coregen_dsp/hbdec1.mif">https://github.com/EttusRes=
earch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/top/x300=
/coregen_dsp/hbdec1.mif</a></div><div>=C2=A0=C2=A0<a href=3D"https://github=
.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/u=
srp3/top/x300/coregen_dsp/hbdec2.mif">https://github.com/EttusResearch/uhd/=
blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/top/x300/coregen_d=
sp/hbdec2.mif</a></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/Ettus=
Research/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/top/x=
300/coregen_dsp/hbdec3.mif">https://github.com/EttusResearch/uhd/blob/5333d=
3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/top/x300/coregen_dsp/hbdec3.=
mif</a></div><div><br></div><div>If the desired decimation rate is divisibl=
e by 8, then all 3 halfbands are used.=C2=A0 If not, a division by 4 is che=
cked, and 2 are used.=C2=A0 If not, a division by 2 is checked and 1 is use=
d.=C2=A0 If not, only the CIC is used.</div><div><br></div><div>If you want=
 to test your model against the HDL itself, a testbench is located here:</d=
iv><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResea=
rch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/=
blocks/rfnoc_block_ddc/rfnoc_block_ddc_tb.sv">https://github.com/EttusResea=
rch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/=
blocks/rfnoc_block_ddc/rfnoc_block_ddc_tb.sv</a></div><div><br></div><div>B=
ut it&#39;s probably easier and much faster to pass samples through the act=
ual RFNoC block in a custom graph that just exercises the DDC.</div><div><b=
r></div><div>Brian</div></div></div>

--0000000000000dc8b705dfeb5d3a--

--===============6439224034251228643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6439224034251228643==--
