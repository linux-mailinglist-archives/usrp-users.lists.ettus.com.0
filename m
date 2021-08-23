Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D75173F4BE4
	for <lists+usrp-users@lfdr.de>; Mon, 23 Aug 2021 15:52:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8CCB93840FB
	for <lists+usrp-users@lfdr.de>; Mon, 23 Aug 2021 09:52:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="b6ph9ibe";
	dkim-atps=neutral
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B774384056
	for <usrp-users@lists.ettus.com>; Mon, 23 Aug 2021 09:48:03 -0400 (EDT)
Received: by mail-ot1-f46.google.com with SMTP id g66-20020a9d12c8000000b0051aeba607f1so27958204otg.11
        for <usrp-users@lists.ettus.com>; Mon, 23 Aug 2021 06:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ABDDrF57KZYRUlVFbTf7FKyNeHI9yK+RR2TmkIqzjvY=;
        b=b6ph9ibeieuys2s/u2Hqrc8zB2mBSsRc1Zpo2X5blTravg9NB3o4iVZgxbb3h3KMIf
         R41jAQMzZCjkUi0zSMCjs8p0EEU5994rer8ktn+juUOmtbuQEntSOp6hP/OxC1qaCOvg
         JPvU0rzAH3ijTpO+quWfzBZnkc26wonlNZex3AKWTpxPpaIV62T8C8/0OHtb5Oyjjl2Q
         fzLPCOd2vG1RZ4EwJkLwsid/cYc3UWOJx+mMqkzzXSV7ZOnpdsWI+/uk28xIdkplEJxV
         SVAPxFn/DZ9xTm2xDDHXNcEFtIYYZ41beEK/CeD8YqoTMKQrCWcKfYnyXf0D4/RXB2+1
         eFMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ABDDrF57KZYRUlVFbTf7FKyNeHI9yK+RR2TmkIqzjvY=;
        b=HKVTDc80f9qPBVN0wfRnv812LCKTs8+rPEq7EOo6Krx2Ge3A6+JcPjdhWhqNgQkIy5
         1Ip2x+lYDkUfc4ZAYKKOddXicMD51cGaw4AeSEz3YJYhwTlZXprJB5XvFMmaGuSJiYhA
         5mf34bZqE7mql7incRZVSNG0WAYBLsed9e7wd4XKNtEdiL8wgVdjA9+CL2Jw3bBLYXJY
         B50ZRlgjWomw/CVEXT8uLPhm7imWaaIoFGhnc5GbFc+q5U3V7u/Ztqeoh+XBRw3yAMMQ
         2GCzT45OddAOaG6Q/d6mLaRNwwIJhH3jyC/tgo/WaM2AvfMZP6nWQmEPDGOQ9EHP5/SP
         z1Dw==
X-Gm-Message-State: AOAM5324Nar2q4iTjX965sSMP7wkAMj/5gz+Y7KGfMIChGgLRTgJ6aq4
	vKBFUiqeYcERssxHmJnWdfyR2cY/c43wZfLBwJkxA922CwA=
X-Google-Smtp-Source: ABdhPJzn3CZVr+OvimAPeTjps77ID1f/c1zVB/JeSS++QRbGfaNN9k4rXeckEMUZeRQkT6pQ6k3o8izzT8JkwUVMHtk=
X-Received: by 2002:a9d:6945:: with SMTP id p5mr27036806oto.301.1629726483011;
 Mon, 23 Aug 2021 06:48:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHaR3kE1Td0vH7QM9xDExms7N_drXXf__V6OUk-a5BWbyGTmQ@mail.gmail.com>
In-Reply-To: <CAKHaR3kE1Td0vH7QM9xDExms7N_drXXf__V6OUk-a5BWbyGTmQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 23 Aug 2021 09:47:52 -0400
Message-ID: <CAB__hTTAyMrGR3bsCK94OcUS4uOZBcpoa7W6R6bGsEi9doXw6Q@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Message-ID-Hash: U4YJBXS7C26LNQSORULXQGSLWDQL2VGU
X-Message-ID-Hash: U4YJBXS7C26LNQSORULXQGSLWDQL2VGU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: input only rfnoc blocks with UHD 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U4YJBXS7C26LNQSORULXQGSLWDQL2VGU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1554425980219478646=="

--===============1554425980219478646==
Content-Type: multipart/alternative; boundary="0000000000001a3c1605ca3a4445"

--0000000000001a3c1605ca3a4445
Content-Type: text/plain; charset="UTF-8"

Hi Dario,
How do you start the streaming? Using issue_stream_cmd()? If so, is this
called on the streamer object or on the DDC or radio? The reason I ask is
that if you call it on the streamer, I'm wondering if your issue is related
to command propagation.  That is, the command is not propagating through
your block.  If this is the case, try calling issue_stream_cmd() on the DDC
block which will then propagate it to the Radio block (or call directly on
the Radio if there is no DDC).
Rob

On Fri, Aug 20, 2021 at 1:26 PM Dario Pennisi <dario@iptronix.com> wrote:

> Hi,
> i'm trying to optimize FPGA consumption and on N310/UHD4.1.0.1 i am
> testing a block that needs only 2 inputs and no outputs. since i don't need
> to stream any data in/out of the FPGA i declared a single streamer with
> control only and declared no connection between it and any block in the yml
> and this way i can see i can read and write registers.
> the issue arises when i try to stream data to the block: if i have no
> outputs declared, inputs will not receive anything. if i have 1 output
> connected to a streamer, connected to a null sink, i can receive from the
> first input, if i have 2 outputs connected to two streamers connected to
> null sinks i can receive on both inputs.
> is there any way i can get rid of those useless outputs and remove at
> least 1 endpoint?
> if i declare i need a single endpoint with no data why does it complain if
> i don't declare buff_size in the yml?
> my rfnoc block uses a noc shell that outputs axi stream payload which i
> adapted for programmable number of inputs and outputs.
> It seems to me the issue is not on the FPGA side as the backend block
> seems to properly report information and o don't see any connection in NOC
> shell between input and outputs other than in there...
>
> Thanks,
>
> Dario
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001a3c1605ca3a4445
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Dario,<div>How do you start the stream=
ing? Using issue_stream_cmd()? If so, is this called on the streamer object=
 or on the DDC or radio? The reason I ask is that if you call it on the str=
eamer, I&#39;m wondering if your issue is related to command propagation.=
=C2=A0 That=C2=A0is, the command is not propagating through your block.=C2=
=A0 If this is the case, try calling issue_stream_cmd() on the DDC block wh=
ich=C2=A0will then propagate=C2=A0it to the Radio block (or call directly o=
n the Radio if there is no DDC).</div><div>Rob</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 20, 2021 at=
 1:26 PM Dario Pennisi &lt;<a href=3D"mailto:dario@iptronix.com">dario@iptr=
onix.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"auto"><div dir=3D"ltr">Hi,<div>i&#39;m trying to optimi=
ze FPGA consumption and on N310/UHD4.1.0.1 i am testing a block that needs =
only 2 inputs and no outputs. since i don&#39;t need to stream any data in/=
out of the FPGA i declared a single streamer with control only and declared=
 no connection between it and any block in the yml and this way i can see i=
 can read and write registers.</div><div>the issue arises when i try to str=
eam data to the block: if i have no outputs declared, inputs will not recei=
ve=C2=A0anything. if i have 1 output connected to a streamer, connected to =
a null sink, i can receive from the first input, if i have 2 outputs connec=
ted to two streamers connected to null sinks i can receive on both inputs.<=
/div><div>is there any way i can get rid of those useless outputs and remov=
e at least 1 endpoint?</div><div>if i declare i need a single endpoint with=
 no data why does it complain if i don&#39;t declare buff_size in the yml?<=
/div><div>my rfnoc block uses a noc shell that outputs axi stream payload w=
hich i adapted for programmable number of inputs and outputs.</div><div dir=
=3D"auto">It seems to me the issue is not on the FPGA side as the backend b=
lock seems to properly report information and o don&#39;t see any connectio=
n in NOC shell between input and outputs other than in there...</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Dario</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000001a3c1605ca3a4445--

--===============1554425980219478646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1554425980219478646==--
