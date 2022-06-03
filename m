Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9209053CAB4
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jun 2022 15:34:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64C6238469E
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jun 2022 09:34:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654263268; bh=weDqVtsKcOZis3dNLa4d9VqwYO+ct75ZItRIysUo8bs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=AcoJ6DLEX9UgCNAeEuUSuIesA+yasnB57mWPaaSGins81hfdWCsa3V0qRu2vdL7Ve
	 KNROfvSk8ms9drg5WPQQu+07Pf4fJUWT1DThFVvYETXFnJbRykC05e0DkK8pGSHyqF
	 3Vfvc6iMzFDahk1J+X0sSEIm8G+pLre3bH6s/F8PR5Qfu5BebTbbqVlPx4LBxX9Tj6
	 QY2Q43Kp1zyqFoD53HY1ckMxH+QQttJaD2KfjC3o3ZVgnHMgMi4+yybeK4N3m6YdT4
	 vMEniZBY2L+AdK+A55ZhDEuCitV5qXs6APkj0eu55VSt57TPUyT9L2bj6xLtx/JVqw
	 PwhvIyj99v2ww==
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 850A2384651
	for <usrp-users@lists.ettus.com>; Fri,  3 Jun 2022 09:33:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="g2UrHTYL";
	dkim-atps=neutral
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-2ff7b90e635so82387477b3.5
        for <usrp-users@lists.ettus.com>; Fri, 03 Jun 2022 06:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UJM6ta6QLJZNkjcUZrqrmQlJg8kxtZVu4KxlUxf5lGs=;
        b=g2UrHTYLXW3Zpt/U4F/hzbLmJ4uBsufnXLncGqRl4sKGtEMIs2t1+VG5+DOkmhvpSm
         ie2XkDOPynmQHfyZt5Whi1yong/ilHYBulZTC6KkokbUyICrJqN64potbFJGEmug3CeF
         +/sfGhYY0rSDgdQoLFazFExnw2DAN6YhhUB5YP4f2WrsKAfdMUMf2tzlqwaRKLVa2fRj
         KL5m0nGSS1GUPyDfsgq8alBdFm2JfAuVn8cgvGQmMuYfUk+KL7NLsiBSM6NLbL9OKkjU
         cgckb649CcMjPnTlqWscv/D4KhlABmkWk+L79XuGR+IaBbjzgA1eAkI5K9LjVaFjbgdq
         1M8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UJM6ta6QLJZNkjcUZrqrmQlJg8kxtZVu4KxlUxf5lGs=;
        b=j9y8hwwBSYCvgIQC3Dt9JElQxWZPcZitx5eGPACWR+2bDTjDi7goLWhYBaze8HtG+2
         EeeLDMsrTOQI0ZCXrYZnyeM8H0xuqyO1a51D4iRpPFSEEsk1iUFK2yUohKvPPxgQX1JB
         KkZel1YyNOypHbbIwtgChw2UQB3Mta3mjVB7p8f5PyegWy6xTAnAkz8ZfOsiN0wmCeXY
         k6/oGm3gk9uSJyno+MYZm2U6zmGaAxauHK7D4enV7qss5t8EnKqfsKFX1DOyjuwn16YF
         QJXsLxKAqio2TMP4QCdJxdmqthjk1xSmvA8+O1sn/jniKH0eHDPsTQLp6n/ojy5l/yl7
         hnMg==
X-Gm-Message-State: AOAM533UsVjpjTrtq/2YBi82q5C+p9bnfC+uIwWge3vVIs0ItdK3xsQN
	zCT8ipTmxMU77eF1K/kAHqWtLAyRvBzCK/43W3NlMvXQxhM=
X-Google-Smtp-Source: ABdhPJwVtSAzOkgFi4xvjimgE7h2ZfLUyY256BymF4chrVainCWgDwLTRFE5kggf4rClXJ9HZ1UiymbA7J+XR1q/ACg=
X-Received: by 2002:a81:1e86:0:b0:2eb:66b9:3a93 with SMTP id
 e128-20020a811e86000000b002eb66b93a93mr11138587ywe.411.1654263206628; Fri, 03
 Jun 2022 06:33:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQXYKCytT_8vzQwrJw=mRpNOfEyP93iHBVMfU59VtHEUZQ@mail.gmail.com>
 <CAB__hTSXdzfq2CDVJQOeEFoej_oPr6L=2H7Qr8n6PYX4f6fnTw@mail.gmail.com> <CAG16vQUa0NDnpxP1P9uu=7-4432oBobKwPj8WU6L1VgGY3OQWw@mail.gmail.com>
In-Reply-To: <CAG16vQUa0NDnpxP1P9uu=7-4432oBobKwPj8WU6L1VgGY3OQWw@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 3 Jun 2022 09:33:15 -0400
Message-ID: <CAB__hTQ6Rpy6dpyqWYjg6f5z3xGUGRUc05k0OMMaQS_k+TWPYg@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: 3JQMGM7ZHCEFPEB7OSX6KOKJMV2IJUHV
X-Message-ID-Hash: 3JQMGM7ZHCEFPEB7OSX6KOKJMV2IJUHV
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to add an ip core to rfnoc OOT block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3JQMGM7ZHCEFPEB7OSX6KOKJMV2IJUHV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2042238915285980448=="

--===============2042238915285980448==
Content-Type: multipart/alternative; boundary="000000000000cc11f905e08b2aca"

--000000000000cc11f905e08b2aca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maria,
I apologize but I am not very experienced with these matters. I am able to
copy the rfnoc-example folder to an OOT location and build it and I know it
has both OOT and in-tree IP options.  In the past I have successfully run
the 'make <testbench>' and also built an image such as "make <x300_core>".
But, outside of that, I don't really know what I'm doing....
Rob

On Fri, Jun 3, 2022 at 9:05 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote:

> Hi Rob,
>
> I try to put these lines in the makefile.srcs inside my_block/fpga folder
> as in the rfnoc example:
>
> #RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},
> #my_other_module.v \
> #ip/my_ip_core/my_ip_core.xci \
> #))
>
> I add my .xci IP to this folder and give the name of the IP as a
> rfnoc_oot_src. I can compile the block but when I try to perform synthesi=
s
> it gives me this error:
>
> ERROR: [DRC INBB-3] Black Box Instances: Cell
> 'x300_core/bus_int_i/rfnoc_sandbox_i/b_3/top_i/my_clk' of type 'clk_wiz_0=
'
> has undefined contents and is considered a black box.  The contents of th=
is
> cell must be defined for opt_design to complete successfully.
> ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.
> ERROR: [Common 17-39] 'opt_design' failed due to earlier errors.
>
> So I think I am missing something. I do not see anything else related to
> IP core. Is there something else I have to do?
>
> Kind regards,
> Maria
>
> El mi=C3=A9, 1 jun 2022 a las 17:48, Rob Kossler (<rkossler@nd.edu>) escr=
ibi=C3=B3:
>
>> Hi Maria,
>> The rfnoc-example folder within the UHD tree shows an example of how to
>> add an out-of-tree IP block. Did you look at this yet?
>> Rob
>>
>> On Wed, Jun 1, 2022 at 5:12 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wro=
te:
>>
>>> Hi all,
>>>
>>> I'm trying to synthesize a design that includes a vivado ip core inside=
.
>>> Normally, I add my .vhd/.v source files to the Makefile.srcs inside my
>>> block like this:
>>>
>>> RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword
>>> $(MAKEFILE_LIST)))), \
>>> source1.vhd \
>>> source2.v \
>>> source3.v \
>>> )
>>>
>>> But adding the .xci file of my IP core does not work.
>>>
>>> What is the process to include this file in the makefile chain to
>>> compile it?
>>>
>>> Kind Regards,
>>>
>>> Maria.
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000cc11f905e08b2aca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Maria,<div>I apologize but I am not very experienced wi=
th these matters. I am able to copy the rfnoc-example folder to an OOT loca=
tion and build it and I know it has both OOT and in-tree IP options.=C2=A0 =
In the past I have successfully run the &#39;make &lt;testbench&gt;&#39; an=
d also built an image such as &quot;make &lt;x300_core&gt;&quot;. But, outs=
ide of that, I don&#39;t really know what I&#39;m doing....</div><div>Rob</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, Jun 3, 2022 at 9:05 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:m=
amuki92@gmail.com">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<div><br></div=
><div>I try to put these lines in the makefile.srcs inside my_block/fpga fo=
lder as in the rfnoc example:</div><blockquote style=3D"margin:0px 0px 0px =
40px;border:none;padding:0px"><div>#RFNOC_OOT_SRCS +=3D $(abspath $(addpref=
ix ${RFNOC_EXAMPLE_DIR},</div><div>#my_other_module.v \</div><div>#ip/my_ip=
_core/my_ip_core.xci \</div><div>#))</div></blockquote><div>I add my .xci I=
P to this folder and give the name of the IP as a rfnoc_oot_src. I can comp=
ile the block but when I try to perform synthesis it gives me this error:</=
div><div><br></div><div>ERROR: [DRC INBB-3] Black Box Instances: Cell &#39;=
x300_core/bus_int_i/rfnoc_sandbox_i/b_3/top_i/my_clk&#39; of type &#39;clk_=
wiz_0&#39; has undefined contents and is considered a black box.=C2=A0 The =
contents of this cell must be defined for opt_design to complete successful=
ly.<br>ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not r=
un.<br>ERROR: [Common 17-39] &#39;opt_design&#39; failed due to earlier err=
ors.<br></div><div><br></div><div>So I think I am missing something. I do n=
ot see anything=C2=A0else related to IP core. Is there something else I hav=
e to do?</div><div><br></div><div>Kind regards,</div><div>Maria=C2=A0</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
El mi=C3=A9, 1 jun 2022 a las 17:48, Rob Kossler (&lt;<a href=3D"mailto:rko=
ssler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>Hi Maria,</div><div>The rfnoc-example folder within the UHD tree shows a=
n example of how to add an out-of-tree IP block. Did you look at this yet?<=
/div><div>Rob<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, Jun 1, 2022 at 5:12 AM Maria Mu=C3=B1oz &lt;=
<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Hi all,<br><div><br></div><div>I&#39;m trying to synthesize=
 a design that includes a vivado ip core inside.=C2=A0</div><div>Normally, =
I add my .vhd/.v source files to the Makefile.srcs inside my block like thi=
s:</div><div><br></div><div>RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath=
 $(lastword $(MAKEFILE_LIST)))), \<br>source1.vhd \<br></div><div>source2.v=
 \<br>source3.v \<br>)<br></div><div><br></div><div>But adding the .xci fil=
e of my IP core does not work.</div><div><br></div><div>What is the process=
 to include this file in the makefile chain to compile it?</div><div><br></=
div><div>Kind Regards,</div><div><br></div><div>Maria.</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000cc11f905e08b2aca--

--===============2042238915285980448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2042238915285980448==--
