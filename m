Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9717B25F2
	for <lists+usrp-users@lfdr.de>; Thu, 28 Sep 2023 21:26:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F21038506C
	for <lists+usrp-users@lfdr.de>; Thu, 28 Sep 2023 15:26:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695929217; bh=oOlvW3WSRyxihN/M1NhT69Z5R4CBAk0VlEytOJPQK68=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=xVY31Pna1cBVQZymM4T5nevUOWhqvmRBY9zBX3sc0R5KkvafIYGgM3JX61Ry64zoL
	 99UrSLoz2jhfWTOWdPlPtf0fGqIL4opmPbE//809dA3qjTYCQ0vrxRMYIDiadOea8Y
	 fsEJehtmx5aThsn5iQADsTQmCt2FCzC4g0cyibdXDqie6O9vO0xOh2GoUELlZy6b+G
	 U/KKjD5tvqrBy+a7byXRgaPIaCjucVsedTbgtnpM2bpx8/l3nmqtoZCxfHaLJW1npS
	 TskgfJI+Pix3/XWetgQG4fny+9qbjBze8QWejB/PcnlgEtRzijOIBiazN+8j50v4Mb
	 FRfQDHWauNhqQ==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D6BF384FCC
	for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 15:26:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OzZU05Ie";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5334d78c5f6so16468267a12.2
        for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 12:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1695929203; x=1696534003; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0c+ZAYnrWYg3SH0/fOyJEuEeiJdots7vAVajU59abI4=;
        b=OzZU05IewMmxGQTU2nV8LOBNcjomtSZJorxSgJ8J0MrunCMDzI4FyIXiN3iaxh4am0
         26pLe9mxhYD8c4EgweRY3gyLlDETTHDoyHQLZzQQc50E7K7DYWt0RBvd5ANPuDPCl6A4
         pmojtt2eY1gC95mlZ2JnD1Olkd5oFVO9BtRggUK+tmJybRcTrxZyL1oTUdW0yqjq0QDS
         XNaJO+xkJIV1K2Gu5Dc/F1ctO7ToOy5r8XHtCsTYbm5xZFihJ60ZmwdeAAKnxOzDuxVA
         eqE3U/zidXaPL1pepiGHfsDEAbNVbOvBJs1DmvOrEKLFgp0lhInuYE/YrJIEIKKoV8CO
         i9Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695929203; x=1696534003;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0c+ZAYnrWYg3SH0/fOyJEuEeiJdots7vAVajU59abI4=;
        b=qxaIV737wKqdNTh1tF4Wvkpww2oxGvjGnw7tuf61Ja0sOilJO++AvPo8nSb8jNQ130
         UzmXNBTDRqLuZBNjRORlLi2/n2mDYB9u4quuFBvphZZSyJTFK52D+uFm1PXTm/ccljKB
         eOWeqwGEruD9X9YLwfImyzFprG2xUNwCK/rErljXDeYxg/IG93bUj6qPe9xFSABWnW5y
         VrW41MLR3We64M4Vb/Njt4YU2hoZwa6FglK4rz+G6CstgsytZiils04HNB9T4UmhwrD5
         zt5gYL3D3kNcYa4pv61Xy96eL0Job7QT7iywIW4RDPSu4eF4KYnGGnIEypzBwEThLOfG
         knBA==
X-Gm-Message-State: AOJu0Yx8r9aDjr9GPks3I67dO7upkImo/9muo/wyS6zHQqTEFTMcu/8I
	A3kuTxZlnBb12jYyT8mRCouu/Er38aHBnd/DkdmyqzMMG7qIcW2J
X-Google-Smtp-Source: AGHT+IEdGHtxTUqJZ9Ld+CaaD2LemNno7lo5oauLCvPM4mCzfE+RW2exhMjHsUp++W9UWqzZHoBaW8ZJkzt/Cd73o4Y=
X-Received: by 2002:aa7:da48:0:b0:52c:164:efe9 with SMTP id
 w8-20020aa7da48000000b0052c0164efe9mr1949284eds.29.1695929203101; Thu, 28 Sep
 2023 12:26:43 -0700 (PDT)
MIME-Version: 1.0
References: <6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu>
In-Reply-To: <6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu>
Date: Thu, 28 Sep 2023 15:26:31 -0400
Message-ID: <CAB__hTQezo8LVmsi=W929OP6ML6qSnRV1oNff7HuV+Es8vyv3g@mail.gmail.com>
To: Anna Lamkin Broome <abroome@stanford.edu>
Message-ID-Hash: 2SI4RR664BRHCKRRYEZVZFDF4B57XYW6
X-Message-ID-Hash: 2SI4RR664BRHCKRRYEZVZFDF4B57XYW6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Appears Laggy Using UHD 4.5
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2SI4RR664BRHCKRRYEZVZFDF4B57XYW6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4415901259675197558=="

--===============4415901259675197558==
Content-Type: multipart/alternative; boundary="000000000000b7aac6060670492c"

--000000000000b7aac6060670492c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Anna,
I do not have a response to your direct question regarding performance.
However, I have a suggestion that may make the performance irrelevant.
The  X310 image comes with a Replay block that accesses the DRAM chip for
storage.  Given that you are sending a repeatable waveform, you should have
plenty of room to store this ahead of time and playout from the Replay
block. This is exactly how I do all of my radar testing. While it will take
some effort to make your application play nice with the Replay block, it
will be worth it because you will never fight "Late" or "Underrun" again.
 (Note that there may be a RAM I/O bottleneck if trying to play both
channels simultaneously from the Replay block at 200 MS/s, but one channel
will be no problem).
Rob

On Thu, Sep 28, 2023 at 1:55=E2=80=AFPM Anna Lamkin Broome <abroome@stanfor=
d.edu>
wrote:

> Hello,
>
> We are developing a radar application built on the Ettus SDR platforms.
> Our code runs well on an X310 with UBX160 daughterboards using UHD 3.15 a=
nd
> a B205mini-i using UHD 4.1 and another B205mini-i using UHD 4.4. We want =
to
> take advantage of recent power calibration utilities and other features n=
ot
> present in UHD 3.15, so I am now trying to run our code on an X310 with t=
he
> most recent UHD 4.5 release.
>
> When running our code on the X310 with UHD 4.5 I get warnings for both
> radio 0 and radio 1 (we transmit on one UBX160 and receive on the other):=
 *[WARNING]
> [0/Radio#0] *Attempting to set tick rate to 0. Skipping. The code uses
> timed commands to transmit and receive samples from a frequency-swept pul=
se
> at a consistent interval (pulse repetition frequency). Our application
> requires a high PRF and we can tolerate some late command errors, but nee=
d
> to log them for post-processing. Using UHD 4.5, the behavior is not as
> expected in that something seems to be hanging. At some point during the
> process=E2=80=94I think once we first hit a late command error=E2=80=94th=
e timing becomes
> very off from what it should be, and eventually, samples stop being
> transmitted or received and the application just hangs. Sometimes when
> killing the application, I get this warning: *[WARNING]
> [RFNOC::GRAPH::DETAIL] *Cannot forward action tx_event from
> 0/Radio#0:INPUT_EDGE:0, no neighbour found! These warnings do not happen
> when running the application with UHD 3.15.
>
> I have tried running the benchmark_rate example with the same host
> computer and X310 running UHD 3.15 and UHD 4.5. With UHD 4.5 and high
> sample rates, I get an error: uhd::op_timeout: RfnocError: OpTimeout:
> Control operation timed out waiting for ACK, which stops the test before
> it begins running. Lower sample rates in UHD 4.5 run, but produce more
> errors (including sequence errors) than the same set up running UHD 3.15.
>
> I have tried refreshing the FPGA image for UHD 4.5 with no change in
> behavior. The behavior is replicable using multiple host computers (Mac a=
nd
> Ubuntu). If anyone has suggestions on debugging steps, or potential reaso=
ns
> why UHD 4.5 would seem laggy compared to UHD 3.15 (despite running well
> with UHD 4.x on the B205mini), I would greatly appreciate them. I suspect
> it may have something to do with the command queue and how it evolves aft=
er
> getting behind.
>
> Thanks,
> Anna Broome
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b7aac6060670492c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Anna,<div>I do not have a response to your direct quest=
ion regarding performance. However, I have a suggestion that may make the p=
erformance irrelevant.=C2=A0 The=C2=A0 X310 image comes with a Replay block=
 that accesses the DRAM chip for storage.=C2=A0 Given that you are sending =
a repeatable waveform, you should have plenty of room to store this ahead o=
f time and playout from the Replay block. This is exactly how I do all of m=
y radar testing. While it will take some effort to make your application pl=
ay nice with the Replay block, it will be worth it because you will never f=
ight &quot;Late&quot; or &quot;Underrun&quot; again.=C2=A0 =C2=A0(Note that=
 there may be a RAM I/O bottleneck if trying to play both channels simultan=
eously=C2=A0from the Replay block at 200 MS/s, but one channel will be no p=
roblem).</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Sep 28, 2023 at 1:55=E2=80=AFPM Anna =
Lamkin Broome &lt;<a href=3D"mailto:abroome@stanford.edu" target=3D"_blank"=
>abroome@stanford.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">



<div>
<div dir=3D"auto">
<div dir=3D"auto">
Hello,=C2=A0
<div><br>
</div>
<div>We are developing a radar application built on the Ettus SDR platforms=
. Our code runs well on an X310 with UBX160 daughterboards using UHD 3.15 a=
nd a B205mini-i using UHD 4.1 and another B205mini-i using UHD 4.4. We want=
 to take advantage of recent power
 calibration utilities and other features not present in UHD 3.15, so I am =
now trying to run our code on an X310 with the most recent UHD 4.5 release.=
=C2=A0</div>
<div><br>
</div>
<div>When running our code on the X310 with UHD 4.5 I get warnings for both=
 radio 0 and radio 1 (we transmit on one UBX160 and receive on the other):=
=C2=A0<span style=3D"font-family:Menlo;font-size:11px;font-variant-ligature=
s:no-common-ligatures;color:rgb(159,160,28)"><b>[WARNING]
 [0/Radio#0] </b></span><span style=3D"font-family:Menlo;font-size:11px;fon=
t-variant-ligatures:no-common-ligatures">Attempting to set tick rate to 0. =
Skipping.=C2=A0</span>The code uses timed commands to transmit and receive =
samples from a frequency-swept pulse
 at a consistent interval (pulse repetition frequency). Our application req=
uires a high PRF and we can tolerate some late command errors, but need to =
log them for post-processing. Using UHD 4.5, the behavior is not as expecte=
d in that something seems to be
 hanging. At some point during the process=E2=80=94I think once we first hi=
t a late command error=E2=80=94the timing becomes very off from what it sho=
uld be, and eventually, samples stop being transmitted or received and the =
application just hangs. Sometimes when killing the
 application, I get this warning:=C2=A0<span style=3D"font-family:Menlo;fon=
t-size:11px;font-variant-ligatures:no-common-ligatures;color:rgb(159,160,28=
)"><b>[WARNING] [RFNOC::GRAPH::DETAIL]
</b></span><span style=3D"font-family:Menlo;font-size:11px;font-variant-lig=
atures:no-common-ligatures">Cannot forward action tx_event from 0/Radio#0:I=
NPUT_EDGE:0, no neighbour found!=C2=A0</span>These warnings do not happen w=
hen running the application with
 UHD 3.15.=C2=A0</div>
<div><span style=3D"font-family:Menlo;font-size:11px;font-variant-ligatures=
:no-common-ligatures"><br>
</span></div>
<div>I have tried running the benchmark_rate example with the same host com=
puter and X310 running UHD 3.15 and UHD 4.5. With UHD 4.5 and high sample r=
ates, I get an error:=C2=A0<span style=3D"color:rgb(232,145,45);font-family=
:Monaco,Menlo,Consolas,&quot;Courier New&quot;,monospace;white-space:pre-wr=
ap;background-color:rgba(232,232,232,0.04)">uhd::op_timeout:
 RfnocError: OpTimeout: Control operation timed out waiting for ACK</span>,=
 which stops the test before it begins running. Lower sample rates in UHD 4=
.5 run, but produce more errors (including sequence errors) than the same s=
et up running UHD 3.15.=C2=A0</div>
<div><br>
</div>
<div>I have tried refreshing the FPGA image for UHD 4.5 with no change in b=
ehavior. The behavior is replicable using multiple host computers (Mac and =
Ubuntu). If anyone has suggestions on debugging steps, or potential reasons=
 why UHD 4.5 would seem laggy compared
 to UHD 3.15 (despite running well with UHD 4.x on the B205mini), I would g=
reatly appreciate them. I suspect it may have something to do with the comm=
and queue and how it evolves after getting behind.=C2=A0</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Anna Broome</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b7aac6060670492c--

--===============4415901259675197558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4415901259675197558==--
