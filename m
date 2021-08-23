Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6223F5007
	for <lists+usrp-users@lfdr.de>; Mon, 23 Aug 2021 20:02:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C176383D4D
	for <lists+usrp-users@lfdr.de>; Mon, 23 Aug 2021 14:02:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="MwMqFVTY";
	dkim-atps=neutral
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 07523383BA6
	for <usrp-users@lists.ettus.com>; Mon, 23 Aug 2021 14:02:11 -0400 (EDT)
Received: by mail-ej1-f54.google.com with SMTP id n27so6808119eja.5
        for <usrp-users@lists.ettus.com>; Mon, 23 Aug 2021 11:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qzEBpAI9fxL6LkPfCXEGbk+170Cv1sl9koeGdiuwkQg=;
        b=MwMqFVTYY/Z/GMptWUKXuawJ9cTaRQFfUB7HhXLqxPIjh5zViWQwS8RC8WGNSTeTd0
         C3AWHrltIpVbnwHdZXokqn47tt+ea80tZOQUvnFIDmPa8YC6FeXCPMVaVuTudQ67uhYz
         CBzm3GvTRphW/7/TG84FmJzRq6a7yvjQ1MFA3C7865O3zqQuR1f3mFHlry7CWHN+eKZX
         ugGsz7Xprn31UmI78agqKRyKQx1yvi1Gy+GWRNSVZk076s5pC36TzuVoof7nZQtkDkEa
         lKgeG2SRfBlHj1jFtEx7Zv8Z28mIwjmVtYKmLqFj9U8P+02L5h99RxvaLwcVqyRMw2sW
         FrMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qzEBpAI9fxL6LkPfCXEGbk+170Cv1sl9koeGdiuwkQg=;
        b=e28qEW4nOhbPLwTYfod06SMSRmRsIVf/SD4B6Tm4PvwKFLlK7SyL796lC+TF8rZolg
         MlkRxrzTvPoKcuRpaj2MXwtVAlde4M+66lNRUA65A2LcIEstV5okrO0ugs+ZNa+VEVWP
         CaIDiKiO6k8vw8sFtHnsaUPyV3oBT+aWXM4ZaLIx2ShSWmBWQJp0qw8arf1peUU3P0oX
         LSNHjM5SvznBIikQjT39tdQ202u06sEn+X9kEJc1WdgywVz4q2DfZMddT22PomD18Sag
         rITTsiZtdbFd0rjk+MTid004GGppsnS1/kdZW6k6qRPEGNMLlc26j8RYXcpG59piiTvy
         RL6w==
X-Gm-Message-State: AOAM531o3Z1ouEpAb5nAw4pVLv6Dc4fYOQ2SNmYb3rM1BxUe5QL3MrvH
	v0GZo5WB4fQ2ECAEVtFvNmD7tKxDPo+3Ah8hKv7zsA==
X-Google-Smtp-Source: ABdhPJxnSzDf+CwTso1SX5wq3Z7u61h2Rc8Zs4NFPLxMLuFLBepOcHCqq7zrI9QPik6bGE+Ut5MLwEJTsAaiqnjQ7ew=
X-Received: by 2002:a17:907:2b09:: with SMTP id gc9mr37775347ejc.49.1629741730731;
 Mon, 23 Aug 2021 11:02:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHaR3kE1Td0vH7QM9xDExms7N_drXXf__V6OUk-a5BWbyGTmQ@mail.gmail.com>
 <CAB__hTTAyMrGR3bsCK94OcUS4uOZBcpoa7W6R6bGsEi9doXw6Q@mail.gmail.com>
In-Reply-To: <CAB__hTTAyMrGR3bsCK94OcUS4uOZBcpoa7W6R6bGsEi9doXw6Q@mail.gmail.com>
From: Dario Pennisi <dario@iptronix.com>
Date: Mon, 23 Aug 2021 20:01:58 +0200
Message-ID: <CAKHaR3=sbWZVMMZA1qE1eGBW4Rdy0ZW0hmNEhTj6W1moKxX1vg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: SY3CAKPGN3ISI4XCR5MDSFXRIEA3JHUI
X-Message-ID-Hash: SY3CAKPGN3ISI4XCR5MDSFXRIEA3JHUI
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: input only rfnoc blocks with UHD 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SY3CAKPGN3ISI4XCR5MDSFXRIEA3JHUI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2730627940629964570=="

--===============2730627940629964570==
Content-Type: multipart/alternative; boundary="000000000000efc1a905ca3dd099"

--000000000000efc1a905ca3dd099
Content-Type: text/plain; charset="UTF-8"

Hi Rob,
As I was mentioning we're trying to get rid of the streamers so ideally I'd
only have two radios connected to my block which has no outputs. The graph
would appear to be entirely in the FPGA  and nothing except register reads
and writes would enter or exit FPGA.
As far as I understand there is no start streaming command on the radios
and I don't think I have them on my block.
I was tempted to directly write radio stream registers but it's a very
dirty solution...

Thanks,

Dario

Il Lun 23 Ago 2021, 15:48 Rob Kossler <rkossler@nd.edu> ha scritto:

> Hi Dario,
> How do you start the streaming? Using issue_stream_cmd()? If so, is this
> called on the streamer object or on the DDC or radio? The reason I ask is
> that if you call it on the streamer, I'm wondering if your issue is related
> to command propagation.  That is, the command is not propagating through
> your block.  If this is the case, try calling issue_stream_cmd() on the DDC
> block which will then propagate it to the Radio block (or call directly on
> the Radio if there is no DDC).
> Rob
>
> On Fri, Aug 20, 2021 at 1:26 PM Dario Pennisi <dario@iptronix.com> wrote:
>
>> Hi,
>> i'm trying to optimize FPGA consumption and on N310/UHD4.1.0.1 i am
>> testing a block that needs only 2 inputs and no outputs. since i don't need
>> to stream any data in/out of the FPGA i declared a single streamer with
>> control only and declared no connection between it and any block in the yml
>> and this way i can see i can read and write registers.
>> the issue arises when i try to stream data to the block: if i have no
>> outputs declared, inputs will not receive anything. if i have 1 output
>> connected to a streamer, connected to a null sink, i can receive from the
>> first input, if i have 2 outputs connected to two streamers connected to
>> null sinks i can receive on both inputs.
>> is there any way i can get rid of those useless outputs and remove at
>> least 1 endpoint?
>> if i declare i need a single endpoint with no data why does it complain
>> if i don't declare buff_size in the yml?
>> my rfnoc block uses a noc shell that outputs axi stream payload which i
>> adapted for programmable number of inputs and outputs.
>> It seems to me the issue is not on the FPGA side as the backend block
>> seems to properly report information and o don't see any connection in NOC
>> shell between input and outputs other than in there...
>>
>> Thanks,
>>
>> Dario
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000efc1a905ca3dd099
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Rob,<div dir=3D"auto">As I was mentioning we&#39;re tr=
ying to get rid of the streamers so ideally I&#39;d only have two radios co=
nnected to my block which has no outputs. The graph would appear to be enti=
rely in the FPGA=C2=A0 and nothing except register reads and writes would e=
nter or exit FPGA.=C2=A0</div><div dir=3D"auto">As far as I understand ther=
e is no start streaming command on the radios and I don&#39;t think I have =
them on my block.</div><div dir=3D"auto">I was tempted to directly write ra=
dio stream registers but it&#39;s a very dirty solution...</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">Dario</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Il Lun 23 Ago 2021, 15:48 Rob Kossler &lt;<a =
href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; ha scritto:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Dario=
,<div>How do you start the streaming? Using issue_stream_cmd()? If so, is t=
his called on the streamer object or on the DDC or radio? The reason I ask =
is that if you call it on the streamer, I&#39;m wondering if your issue is =
related to command propagation.=C2=A0 That=C2=A0is, the command is not prop=
agating through your block.=C2=A0 If this is the case, try calling issue_st=
ream_cmd() on the DDC block which=C2=A0will then propagate=C2=A0it to the R=
adio block (or call directly on the Radio if there is no DDC).</div><div>Ro=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Aug 20, 2021 at 1:26 PM Dario Pennisi &lt;<a href=3D"mailto:=
dario@iptronix.com" target=3D"_blank" rel=3D"noreferrer">dario@iptronix.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"auto"><div dir=3D"ltr">Hi,<div>i&#39;m trying to optimize FPGA =
consumption and on N310/UHD4.1.0.1 i am testing a block that needs only 2 i=
nputs and no outputs. since i don&#39;t need to stream any data in/out of t=
he FPGA i declared a single streamer with control only and declared no conn=
ection between it and any block in the yml and this way i can see i can rea=
d and write registers.</div><div>the issue arises when i try to stream data=
 to the block: if i have no outputs declared, inputs will not receive=C2=A0=
anything. if i have 1 output connected to a streamer, connected to a null s=
ink, i can receive from the first input, if i have 2 outputs connected to t=
wo streamers connected to null sinks i can receive on both inputs.</div><di=
v>is there any way i can get rid of those useless outputs and remove at lea=
st 1 endpoint?</div><div>if i declare i need a single endpoint with no data=
 why does it complain if i don&#39;t declare buff_size in the yml?</div><di=
v>my rfnoc block uses a noc shell that outputs axi stream payload which i a=
dapted for programmable number of inputs and outputs.</div><div dir=3D"auto=
">It seems to me the issue is not on the FPGA side as the backend block see=
ms to properly report information and o don&#39;t see any connection in NOC=
 shell between input and outputs other than in there...</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Dario</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div>
</blockquote></div>

--000000000000efc1a905ca3dd099--

--===============2730627940629964570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2730627940629964570==--
