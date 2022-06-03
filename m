Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D1A53CA65
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jun 2022 15:06:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE96A384940
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jun 2022 09:06:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654261600; bh=xzqEzUgcG1XnQQFsWtqQktPaB0ujS0VwaT/wICMXy+I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=VfWj4E3FOcru5DvosOsdAITTrT2ATfFuOZRPOeG5mRC4+tF2FpPb8qCi9iV9gwWtm
	 qN//Nk706g2sLxwNekAS3h+OPDWOtQNrhVtGdyCf6gqH8bJPdVA7JO8IeoamAghUqN
	 WWtUWMzS9LOxClhdzMtaogaPQ2NjjS9QmTwTJwjtyQ4je2QHxNrLYZwubLzTyJIzzp
	 ThGh/Keax8LXX7JyyhoRjq9r7m6cSVUfWJiqLbp5LWv5/rZz8LqPVmnusV+8Qf9VJZ
	 r+7h63olMm9iA3WA2eAbYYoSST/RhoM5Lt6yh1Db2OxL3g/Dv7Zk50COOOOl8p92/x
	 wg0i4l5fE/40A==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id BB371384102
	for <usrp-users@lists.ettus.com>; Fri,  3 Jun 2022 09:05:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QM2VnjqW";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id v1so5117887ejg.13
        for <usrp-users@lists.ettus.com>; Fri, 03 Jun 2022 06:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VBZEYl+l7lQ6Mz52g1ttQB0uW67j6WjiTSlBR5b5uDk=;
        b=QM2VnjqWtp47yjWS+KffRR1zPQ/ixWf1mzvOilrW+uCEll2U52YMsd+OI0+AmBISWL
         /MWS4ujGpPFOyu3zS0OBsLSKHY04uPnByEydfp5HoYVopx8s/lw3wHYaQb+QgPScBWLn
         uV5krhUGKRQPaNVUJ/gYCeO1mByzze+WZ6Ztf7iTQasWB9/bxBpqKZ2JI20l0x6ykOdl
         6dn37JVMdFPZjQGCfcb6Tygv2bCULyCPWqDIrFe3uw8miT6wjCJDImdfZYAi0UszQFM8
         52LuwGp/rL+74Q/P0ffjJNQIrwV4WwXRG/VU1zQMFnkFT7jvXRjuGgvEFDWNbbba33u4
         nzBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VBZEYl+l7lQ6Mz52g1ttQB0uW67j6WjiTSlBR5b5uDk=;
        b=5a58/bEZWrHMn/XL/hDkjoBhCkuP+6qbGdz3yo3v5ncFJUEDPdNLiPh2fB/bXzywm5
         m8HSSLH909urpviSWlw+QW1tA8eWcH1/YzcKXzqBUNDtsBdQwvJTyLrcol4hak36jm/e
         cqP+KtbShn0TXcOkzAwqwMPSTXqA1cw8s6SGEC668sjZjjmxxtJzcVDROT0zFEvc1rYU
         n6KYRUCFCczRwOMEAZUefGtb52YqgzPEFNIlbg+F6UINmlOW6mR6ZJc8r+Wi0YVTtwOI
         P1UbR9a0mVZvzILm/dmKH5CSu1nliea1ulkyuiohPTbMTVClc+RRqskm16lzcRZD56qi
         CHwA==
X-Gm-Message-State: AOAM532WN+Mixz/SAoLxpO3HrznUaKW+Bfn2TkT0Exf8yESw4uya3XlF
	IOBs+BgFo+iOaAj1pjEIyQZ7gjQV9fquEX582McyEKaJjn8=
X-Google-Smtp-Source: ABdhPJyCIlzdjSYahEiDIgvDr0l0toh0qdi6S+zHwyc1MICyIhMyTWvesbcnaszGzRgIZINzG3Nn3a+mDtDN1njDNYM=
X-Received: by 2002:a17:906:4784:b0:6ff:34ea:d824 with SMTP id
 cw4-20020a170906478400b006ff34ead824mr8819796ejc.526.1654261531483; Fri, 03
 Jun 2022 06:05:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQXYKCytT_8vzQwrJw=mRpNOfEyP93iHBVMfU59VtHEUZQ@mail.gmail.com>
 <CAB__hTSXdzfq2CDVJQOeEFoej_oPr6L=2H7Qr8n6PYX4f6fnTw@mail.gmail.com>
In-Reply-To: <CAB__hTSXdzfq2CDVJQOeEFoej_oPr6L=2H7Qr8n6PYX4f6fnTw@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Fri, 3 Jun 2022 15:05:19 +0200
Message-ID: <CAG16vQUa0NDnpxP1P9uu=7-4432oBobKwPj8WU6L1VgGY3OQWw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: NRSRMNEFJXLVHJRKA4LKCDA5L4TZDAR6
X-Message-ID-Hash: NRSRMNEFJXLVHJRKA4LKCDA5L4TZDAR6
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to add an ip core to rfnoc OOT block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NRSRMNEFJXLVHJRKA4LKCDA5L4TZDAR6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2997679175078418830=="

--===============2997679175078418830==
Content-Type: multipart/alternative; boundary="000000000000f3224b05e08ac6e4"

--000000000000f3224b05e08ac6e4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

I try to put these lines in the makefile.srcs inside my_block/fpga folder
as in the rfnoc example:

#RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},
#my_other_module.v \
#ip/my_ip_core/my_ip_core.xci \
#))

I add my .xci IP to this folder and give the name of the IP as a
rfnoc_oot_src. I can compile the block but when I try to perform synthesis
it gives me this error:

ERROR: [DRC INBB-3] Black Box Instances: Cell
'x300_core/bus_int_i/rfnoc_sandbox_i/b_3/top_i/my_clk' of type 'clk_wiz_0'
has undefined contents and is considered a black box.  The contents of this
cell must be defined for opt_design to complete successfully.
ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.
ERROR: [Common 17-39] 'opt_design' failed due to earlier errors.

So I think I am missing something. I do not see anything else related to IP
core. Is there something else I have to do?

Kind regards,
Maria

El mi=C3=A9, 1 jun 2022 a las 17:48, Rob Kossler (<rkossler@nd.edu>) escrib=
i=C3=B3:

> Hi Maria,
> The rfnoc-example folder within the UHD tree shows an example of how to
> add an out-of-tree IP block. Did you look at this yet?
> Rob
>
> On Wed, Jun 1, 2022 at 5:12 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrot=
e:
>
>> Hi all,
>>
>> I'm trying to synthesize a design that includes a vivado ip core inside.
>> Normally, I add my .vhd/.v source files to the Makefile.srcs inside my
>> block like this:
>>
>> RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword
>> $(MAKEFILE_LIST)))), \
>> source1.vhd \
>> source2.v \
>> source3.v \
>> )
>>
>> But adding the .xci file of my IP core does not work.
>>
>> What is the process to include this file in the makefile chain to compil=
e
>> it?
>>
>> Kind Regards,
>>
>> Maria.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000f3224b05e08ac6e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<div><br></div><div>I try to put these lines in the=
 makefile.srcs inside my_block/fpga folder as in the rfnoc example:</div><b=
lockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div>#RFNOC_O=
OT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},</div><div>#my_othe=
r_module.v \</div><div>#ip/my_ip_core/my_ip_core.xci \</div><div>#))</div><=
/blockquote><div>I add my .xci IP to this folder and give the name of the I=
P as a rfnoc_oot_src. I can compile the block but when I try to perform syn=
thesis it gives me this error:</div><div><br></div><div>ERROR: [DRC INBB-3]=
 Black Box Instances: Cell &#39;x300_core/bus_int_i/rfnoc_sandbox_i/b_3/top=
_i/my_clk&#39; of type &#39;clk_wiz_0&#39; has undefined contents and is co=
nsidered a black box.=C2=A0 The contents of this cell must be defined for o=
pt_design to complete successfully.<br>ERROR: [Vivado_Tcl 4-78] Error(s) fo=
und during DRC. Opt_design not run.<br>ERROR: [Common 17-39] &#39;opt_desig=
n&#39; failed due to earlier errors.<br></div><div><br></div><div>So I thin=
k I am missing something. I do not see anything=C2=A0else related to IP cor=
e. Is there something else I have to do?</div><div><br></div><div>Kind rega=
rds,</div><div>Maria=C2=A0</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 1 jun 2022 a las 17:48, Rob Ko=
ssler (&lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;) escr=
ibi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div>Hi Maria,</div><div>The rfnoc-example folder within the UH=
D tree shows an example of how to add an out-of-tree IP block. Did you look=
 at this yet?</div><div>Rob<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 1, 2022 at 5:12 AM Maria M=
u=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuk=
i92@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">Hi all,<br><div><br></div><div>I&#39;m trying=
 to synthesize a design that includes a vivado ip core inside.=C2=A0</div><=
div>Normally, I add my .vhd/.v source files to the Makefile.srcs inside my =
block like this:</div><div><br></div><div>RFNOC_OOT_SRCS +=3D $(addprefix $=
(dir $(abspath $(lastword $(MAKEFILE_LIST)))), \<br>source1.vhd \<br></div>=
<div>source2.v \<br>source3.v \<br>)<br></div><div><br></div><div>But addin=
g the .xci file of my IP core does not work.</div><div><br></div><div>What =
is the process to include this file in the makefile chain to compile it?</d=
iv><div><br></div><div>Kind Regards,</div><div><br></div><div>Maria.</div><=
/div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000f3224b05e08ac6e4--

--===============2997679175078418830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2997679175078418830==--
