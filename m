Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C07D7B25F8
	for <lists+usrp-users@lfdr.de>; Thu, 28 Sep 2023 21:32:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72B71385540
	for <lists+usrp-users@lfdr.de>; Thu, 28 Sep 2023 15:32:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695929542; bh=+P9KorqGev/4jgBPHT+EvlKTxOvOSDsRxQNQPVKEqhY=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=lSqXqbbBtU/Mvt1J4elQyD7qfTy92drPQOZgQ5/Zvwvr6luUuAUo36hNO8W7eBk9s
	 aoz2DnjIb8f09uXa4lMxqs+olgEwTlZSLUl2tkEv/MFyGOVSQ1qlbDT9ZbfIUs/E46
	 kJ7QTAG5v8OIoC/rBX+wVtbG8Sa8wE+02Za0DqL3Vi3zLo7mxzEHkRYp1TI4RlfA9A
	 t/crwklSSA+W4LqeEC7s7HJMWl15ULhpciFSFRNczKIAK0QMuLPRvEQFbAUM+TdBq6
	 xkbVb7fhreupDHVRXGgPoI/1+uOcJ2q15sDmGDCcZYEVOUqaJOxzQoih++39UaDpTV
	 tw8oz0umXew+Q==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 87C68384FFC
	for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 15:32:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="NN0jrU62";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-534659061afso7553280a12.3
        for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 12:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1695929528; x=1696534328; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y1vo3Gsr+bbKQG6bbLrAYTMpCmXzqdXjQNPlEqanjdQ=;
        b=NN0jrU627WYe3mgp187AQFHP5lDxCWeAAsubvoCDTn+35PjSPA2PbSIgs8nA959yuO
         J77bAXTnvkFJ+nldjaoE8oZiRAD1II/NBspUYm+zOV3nLN9Rbg4I9vur2Co/vZTR7qOc
         Sypl0skztF/tOiYsVSVXD1WrOWFfT6eziGKRM0pc5OAQnB5UkdNiI2mZNNpsDnpj+2eL
         BqYFf1XgSCvYD+73Izc2FCeDYvy4H4NUYNFD5XVLWtlf4FBA46NOKw55OTXCf+wDGLlZ
         XAhPGdZiKRYHsEN0srrj8OgzTKHPRY/ztkEiZs4JlLhYEiKKy/2tWjNwM6oRRSHjbyd0
         Ei0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695929528; x=1696534328;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y1vo3Gsr+bbKQG6bbLrAYTMpCmXzqdXjQNPlEqanjdQ=;
        b=lDnKMP/HmhV6K6N51JYkATYbjk/fCovoboQ9x7I4QbJp+YnVYvnpa+oUUTUF/61uYa
         PdksCeh9CPE2cCJEHbRXcJSvfrrWrb67jUo+ibz/TD5OLA60R2628x9A3307CqwK+2GL
         P+9juFESVWZhourX4Tmqoi+3emqZiFxLX/wlJk09y1k9SXW/w7bTzO/gdNlJIDjmOWQW
         qpLrm7vdmGRNNhKsggU1/4tcQxl6Lw3IRtz9wLHGGF6OkJXKZm2isohQxyhghbjyGv6u
         nOKINg3HdKnv1BufTF8QsLzD4rIQ/TfTFt/5/zSsPJ4kDl+jCwZ/obSHX2+HA7UFDwYw
         vZug==
X-Gm-Message-State: AOJu0YxIpyXwqhdTSNJ7qHeb0vpWra7UXYPkce6ynNOr7RNref3VcjyZ
	9PAmjLVh4YmttwiSkGyClrrlb1Y/adFazjOKTNggFUSAbib1a40n
X-Google-Smtp-Source: AGHT+IEC992XZRCWTNSDwhpXV2Yxm7SJ3AGpuEUHCuRKAYrAuanvv9BgcXXqdNCY7hXnHO9J+pythxG+CAs9DbW/bAU=
X-Received: by 2002:a05:6402:515c:b0:533:193d:da60 with SMTP id
 n28-20020a056402515c00b00533193dda60mr1895506edd.19.1695929527953; Thu, 28
 Sep 2023 12:32:07 -0700 (PDT)
MIME-Version: 1.0
References: <6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu> <CAB__hTQezo8LVmsi=W929OP6ML6qSnRV1oNff7HuV+Es8vyv3g@mail.gmail.com>
In-Reply-To: <CAB__hTQezo8LVmsi=W929OP6ML6qSnRV1oNff7HuV+Es8vyv3g@mail.gmail.com>
Date: Thu, 28 Sep 2023 15:31:56 -0400
Message-ID: <CAB__hTTM2CmUd5sNOxH-hT3xJNaKBBS91hJhH9j99vqrz0H1Sg@mail.gmail.com>
To: Anna Lamkin Broome <abroome@stanford.edu>
Message-ID-Hash: GQYOY7JTS5MWKT6QO3N56R3MQ3I25DPA
X-Message-ID-Hash: GQYOY7JTS5MWKT6QO3N56R3MQ3I25DPA
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Appears Laggy Using UHD 4.5
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GQYOY7JTS5MWKT6QO3N56R3MQ3I25DPA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0967974388667133188=="

--===============0967974388667133188==
Content-Type: multipart/alternative; boundary="000000000000148ebf0606705d03"

--000000000000148ebf0606705d03
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One more thing.  One difference between 3.15 and 4.xx might be the length
of FIFOs on the FPGA for buffering Tx data arriving from the host.  If the
4.xx buffers are smaller, then it may be more likely for a "glitch" to
occur if your host is a bit "bursty" when providing the samples.  If this
is true, then perhaps you could build a custom X310 image with larger
buffers.


On Thu, Sep 28, 2023 at 3:26=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrote=
:

> Hi Anna,
> I do not have a response to your direct question regarding performance.
> However, I have a suggestion that may make the performance irrelevant.
> The  X310 image comes with a Replay block that accesses the DRAM chip for
> storage.  Given that you are sending a repeatable waveform, you should ha=
ve
> plenty of room to store this ahead of time and playout from the Replay
> block. This is exactly how I do all of my radar testing. While it will ta=
ke
> some effort to make your application play nice with the Replay block, it
> will be worth it because you will never fight "Late" or "Underrun" again.
>  (Note that there may be a RAM I/O bottleneck if trying to play both
> channels simultaneously from the Replay block at 200 MS/s, but one channe=
l
> will be no problem).
> Rob
>
> On Thu, Sep 28, 2023 at 1:55=E2=80=AFPM Anna Lamkin Broome <abroome@stanf=
ord.edu>
> wrote:
>
>> Hello,
>>
>> We are developing a radar application built on the Ettus SDR platforms.
>> Our code runs well on an X310 with UBX160 daughterboards using UHD 3.15 =
and
>> a B205mini-i using UHD 4.1 and another B205mini-i using UHD 4.4. We want=
 to
>> take advantage of recent power calibration utilities and other features =
not
>> present in UHD 3.15, so I am now trying to run our code on an X310 with =
the
>> most recent UHD 4.5 release.
>>
>> When running our code on the X310 with UHD 4.5 I get warnings for both
>> radio 0 and radio 1 (we transmit on one UBX160 and receive on the other)=
: *[WARNING]
>> [0/Radio#0] *Attempting to set tick rate to 0. Skipping. The code uses
>> timed commands to transmit and receive samples from a frequency-swept pu=
lse
>> at a consistent interval (pulse repetition frequency). Our application
>> requires a high PRF and we can tolerate some late command errors, but ne=
ed
>> to log them for post-processing. Using UHD 4.5, the behavior is not as
>> expected in that something seems to be hanging. At some point during the
>> process=E2=80=94I think once we first hit a late command error=E2=80=94t=
he timing becomes
>> very off from what it should be, and eventually, samples stop being
>> transmitted or received and the application just hangs. Sometimes when
>> killing the application, I get this warning: *[WARNING]
>> [RFNOC::GRAPH::DETAIL] *Cannot forward action tx_event from
>> 0/Radio#0:INPUT_EDGE:0, no neighbour found! These warnings do not happen
>> when running the application with UHD 3.15.
>>
>> I have tried running the benchmark_rate example with the same host
>> computer and X310 running UHD 3.15 and UHD 4.5. With UHD 4.5 and high
>> sample rates, I get an error: uhd::op_timeout: RfnocError: OpTimeout:
>> Control operation timed out waiting for ACK, which stops the test before
>> it begins running. Lower sample rates in UHD 4.5 run, but produce more
>> errors (including sequence errors) than the same set up running UHD 3.15=
.
>>
>> I have tried refreshing the FPGA image for UHD 4.5 with no change in
>> behavior. The behavior is replicable using multiple host computers (Mac =
and
>> Ubuntu). If anyone has suggestions on debugging steps, or potential reas=
ons
>> why UHD 4.5 would seem laggy compared to UHD 3.15 (despite running well
>> with UHD 4.x on the B205mini), I would greatly appreciate them. I suspec=
t
>> it may have something to do with the command queue and how it evolves af=
ter
>> getting behind.
>>
>> Thanks,
>> Anna Broome
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000148ebf0606705d03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">One more thing.=C2=A0 One difference between 3.15 and 4.xx=
 might be the length of FIFOs on the FPGA for buffering Tx data arriving fr=
om the host.=C2=A0 If the 4.xx buffers are smaller, then it may be more lik=
ely for a &quot;glitch&quot; to occur if your host is a bit &quot;bursty&qu=
ot; when providing the samples.=C2=A0 If this is true, then perhaps you cou=
ld build a custom X310 image with larger buffers.<div><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep=
 28, 2023 at 3:26=E2=80=AFPM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.=
edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">Hi Anna,<div>I do not have a response =
to your direct question regarding performance. However, I have a suggestion=
 that may make the performance irrelevant.=C2=A0 The=C2=A0 X310 image comes=
 with a Replay block that accesses the DRAM chip for storage.=C2=A0 Given t=
hat you are sending a repeatable waveform, you should have plenty of room t=
o store this ahead of time and playout from the Replay block. This is exact=
ly how I do all of my radar testing. While it will take some effort to make=
 your application play nice with the Replay block, it will be worth it beca=
use you will never fight &quot;Late&quot; or &quot;Underrun&quot; again.=C2=
=A0 =C2=A0(Note that there may be a RAM I/O bottleneck if trying to play bo=
th channels simultaneously=C2=A0from the Replay block at 200 MS/s, but one =
channel will be no problem).</div><div>Rob</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 28, 2023 at 1:5=
5=E2=80=AFPM Anna Lamkin Broome &lt;<a href=3D"mailto:abroome@stanford.edu"=
 target=3D"_blank">abroome@stanford.edu</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">



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
</blockquote></div>

--000000000000148ebf0606705d03--

--===============0967974388667133188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0967974388667133188==--
