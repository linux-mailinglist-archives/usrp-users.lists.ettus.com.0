Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF7B457178
	for <lists+usrp-users@lfdr.de>; Fri, 19 Nov 2021 16:14:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4EB453843D4
	for <lists+usrp-users@lfdr.de>; Fri, 19 Nov 2021 10:14:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="WjORZSL8";
	dkim-atps=neutral
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id D9F06383C9C
	for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 10:13:26 -0500 (EST)
Received: by mail-ed1-f41.google.com with SMTP id r25so7121707edq.7
        for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 07:13:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3i7X8Qp9iQpywFhhxtIBFYOKzWKfBXGkoGcE+AjRdo8=;
        b=WjORZSL8I8vFZR31jzjgCVmOrrlULjtAmiwX+HJGXmBOcO1BY7EQA4vPAbZzpeluZH
         hGyuB4y6jQdAtGqhAs/M5Ot7CCSkngZS3vgElYzGYyqNkm30TU4qljREInlofJNgr/Pw
         JcEm2PQ+H2uqMr7cMhl5NeRMa10o3Lq35ncVIqrPLiu0CpevG2Nf1aGeXBXmqKdHh51F
         x8RDGcrjLqLqNILTzsi82t7W4ZjscuRTzbaXmEqapKJbNi7B7+OW9enSWV60zFiCKNRL
         zSqbNmZ67FQWYh4tCrYBStlM+Sm+LDiozoSktDEnff10gAMehp6OCVFQZMIm/KQJ9nxX
         OGFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3i7X8Qp9iQpywFhhxtIBFYOKzWKfBXGkoGcE+AjRdo8=;
        b=GcqRWCemBzoq1jcLkpfJT9deS4meBWbvTxvFfo+Eom5yJXCrr1TuZ9DQh/ZHW+MIRy
         /zeqTxO98dgbjvk7b9WLsW9pebEf1BtJTNQMOhddqLJj/dHe9cpJczncamvWYBLVIvOn
         zkmKKPj/3yuG0EdWN89rtgXvhOB47x2xvN9H5sk0dQ93I49bnJ9cXYPClh3JpD240ue0
         w0wnq8VY+ygaJWPlR9BzB79bKz6NDAQ7fQE8o7iA2jPz4Z+z0X5rGcLpiBksJNX7RnRe
         0xJkJfsc/3DFsAE4A/iXAL2/THBt0JvyWnhhjTaEGMM6uetaNcqxvEuBPItU7rVg0SNd
         3JNA==
X-Gm-Message-State: AOAM532H0yAtLEigROmFeL7fN3Q4TDiwQgiX7Dp3Ba5XqDH+8LmHi9g3
	6CHotRcE2eYtw5ytST2RSYWgZ925M0D8JU0BabN9SX5r
X-Google-Smtp-Source: ABdhPJwabMK5c4LgYEskoZTcT3HueX2nbozSY3sitRfoBtBI0ZTnVsVTwbq+9uO0ynlmhVmNTb+rnRovIONQU9bxlkQ=
X-Received: by 2002:a05:6402:653:: with SMTP id u19mr24746237edx.106.1637334805700;
 Fri, 19 Nov 2021 07:13:25 -0800 (PST)
MIME-Version: 1.0
References: <d636bd419e2548878b27baeacbca4b39@gmv.com> <6cc298a5-c5c6-27e4-f5d6-b23a2975e372@gmail.com>
 <CAB__hTQY491Q0xiYWY75hTpbEV3u744uYMr9EK3xk-R-Lzy+RQ@mail.gmail.com>
 <1e81a40f9ccc4a15be101a63c926b8f7@gmv.com> <836ea247-5c8d-c5cd-86d9-78372ef7f99e@gmail.com>
 <CAB__hTTPKrcry6NmiP8sLuH1TGsu1tq3q=3Rh+DE1mBXmw3zRw@mail.gmail.com>
 <fd555cbc7d2c4498bd1fa48ee720af7d@gmv.com> <f2e476e2-20c7-5f0d-18ff-fb14ba86d223@gmail.com>
 <7ac64ef957f2477ea403b0b03739ce8c@gmv.com> <a925d2f2-aa2b-4e2a-318c-248c2c101178@gmail.com>
 <053b1b73b720470b846a73d8f79c5f72@gmv.com> <CAB__hTQGyfjs=1r3cffcfac8=TN-DTRqTUL2WD8KQXXx062FGw@mail.gmail.com>
 <CAA7+tqSZ2KtkP1Kmu=a2Q4Rvk=hbdqJaeAEA_dYz2p1xG0bUVg@mail.gmail.com>
In-Reply-To: <CAA7+tqSZ2KtkP1Kmu=a2Q4Rvk=hbdqJaeAEA_dYz2p1xG0bUVg@mail.gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Fri, 19 Nov 2021 10:13:14 -0500
Message-ID: <CAGNhwTP07=GSHcfkgczAActtxLqjQe66g9c_YAJoiQ+anio5Rg@mail.gmail.com>
To: Berkay SAYGILI <zuhasdasn@gmail.com>
Message-ID-Hash: YFRBCNRTDRDVFLV3EJSVW34GDIF24XJP
X-Message-ID-Hash: YFRBCNRTDRDVFLV3EJSVW34GDIF24XJP
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, Guillermo Ortas Delgado <g.ortas@gmv.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YFRBCNRTDRDVFLV3EJSVW34GDIF24XJP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4464453340908185000=="

--===============4464453340908185000==
Content-Type: multipart/alternative; boundary="00000000000078f26f05d125b7d8"

--00000000000078f26f05d125b7d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It is worth trying a Mellanox 10 GbE NIC. In our recent internal testing
with UHD + DPDK + N320/N321, we saw similar issues as Berkay notes, and
eventually tracked the issue to the Intel driver. We approached Intel and
while they acknowledged the probable issue, since they have moved
development work to the 800-series NICs, they declined to fix the issue in
their 500/700 series NIC driver. We switched to a Mellanox NIC and that
resolved the issues. Please note that UHD currently supports DPDK 18.11
(exact version), which does not have support for Intel 800-series NICs --
the oldest DPDK for that support is 19.04, and 19.11 is recommended as the
minimum version. We are actively working on updating DPDK support to 19.11
/ 20.11 / 21.11 -- looks like the same API, which is different from that
for 18.11. - MLD

On Fri, Nov 19, 2021 at 1:54 AM Berkay SAYGILI <zuhasdasn@gmail.com> wrote:

> Hello Guillermo,
>
> I have the same problem with DPDK. I can receive data with 200 MSPS in
> both channels with a single N320 without DPDK, but when I use DPDK, it
> starts to drop samples even at much lower sample rates. I have an X520-DA=
2
> NIC. When I wrote this problem to Ettus, they suggested me to try the DPD=
K
> with Mellanox NIC. Therefore, I am considering buying a Mellanox NIC at t=
he
> moment, but I am not certain that a new NIC will solve the problem.
>
>
> Best regards
>
> Berkay S.
>
> On Thu, 18 Nov 2021 at 18:01, Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Guillermo,
>> My experience with DPDK was the following:
>>
>>    - very difficult to configure
>>    - once configured properly, streaming was exceptional (significant
>>    improvement compared to no DPDK).  I was using Intel cards (likely X5=
20-DA2
>>    and XL710-QDA1).
>>    - lots of bad side effects related to DPDK taking over a dedicated
>>    CPU. I'm not sure why but at times even the mouse and keyboard would =
get so
>>    slow that the system became unusable - it occurred to me that maybe t=
he
>>    mouse/keyboard were mistakenly being serviced by the CPU that was ded=
icated
>>    to DPDK - very strange. And, it wasn't just the mouse - other applica=
tions
>>    could be affected.  The side effects were severe enough for me to aba=
ndon
>>    using DPDK on a regular basis.  That said, I would consider it in you=
r
>>    situation where you needed the performance.
>>
>> I never experienced the troubles you are having where DPDK is working bu=
t
>> performing poorly. In my case, if it worked at all, the performance was
>> good. Sorry that I don't have any good suggestions for you.
>>
>> Whenever I am trying to capture high data rate receive streams, I save
>> the data to files in a RAM file system. If I need these files permanentl=
y
>> stored, I have had best success with running a separate utility that
>> moves the saved files from RAM to storage.  It doesn't seem like this
>> approach should be necessary (as compared to multi threads within one
>> process and/or keeping the data in shared memory rather than buffering i=
n
>> 'files') but perhaps my attempts at other approaches were faulty.
>>
>> Rob
>>
>> On Thu, Nov 18, 2021 at 5:03 AM Guillermo Ortas Delgado <g.ortas@gmv.com=
>
>> wrote:
>>
>>> Hi Marcus,
>>>
>>>
>>>
>>> Wow, good to know that I=E2=80=99m doing good. I thought I wasn=E2=80=
=99t the only one
>>> working at these high rates.
>>>
>>> I guess there is the possibility to spread the load on another computer=
,
>>> but I was interested in DPDK as it showed potential to accomplish my go=
al
>>> more elegantly instead of just throwing more money at the problem.
>>>
>>>
>>>
>>> I=E2=80=99m still puzzled by DPDK dropping samples at even 25Msps on 2 =
channels.
>>>
>>> *@Rob Kossler: do you have any more input on this matter?*
>>>
>>>
>>>
>>> Best,
>>>
>>> Guillermo
>>>
>>>
>>>
>>> *De:* Marcus D. Leech [mailto:patchvonbraun@gmail.com]
>>> *Enviado el:* 17 November 2021 17:43
>>> *Para:* Guillermo Ortas Delgado <g.ortas@gmv.com>; Rob Kossler <
>>> rkossler@nd.edu>
>>> *CC:* usrp-users@lists.ettus.com
>>> *Asunto:* Re: [USRP-users] Re: DPDK drops samples at low rates
>>>
>>>
>>>
>>> On 2021-11-17 11:27, Guillermo Ortas Delgado wrote:
>>>
>>> Hi Marcus, thank you for your message.
>>>
>>>
>>>
>>> I do think the network layer is indeed the most significant part of thi=
s
>>> challenging setup, let me illustrate:
>>>
>>> The platform I=E2=80=99m using is a server form-factor computer with a =
Xeon
>>> Silver 4215R, 32GB of memory and no GPU. For storage, I have 4 SSDs of
>>> 3.2TB mounted in RAID 0 providing a write capacity of 4GB/s, so that=E2=
=80=99s no
>>> issue. I=E2=80=99m using all the optimizations mentioned here
>>> <https://urldefense.com/v3/__https:/kb.ettus.com/Getting_Started_with_D=
PDK_and_UHD__;!!MvyJQugb!UJ8FfsPbUrq0LfNpjFLHfw9YyY1nkelByXNeHL_5zu_b0NDpEm=
1rMWVt0ZYW$>
>>> and here
>>> <https://urldefense.com/v3/__https:/kb.ettus.com/USRP_Host_Performance_=
Tuning_Tips_and_Tricks__;!!MvyJQugb!UJ8FfsPbUrq0LfNpjFLHfw9YyY1nkelByXNeHL_=
5zu_b0NDpEm1rMVnRj1fb$>,
>>> so raw CPU power I think should be enough.
>>>
>>> Each of the four x310 USRPs is attached to a dedicated network card wit=
h
>>> dual 10GbE ports, so network capacity is theoretically more than enough
>>> (6.4Gb out of 10Gb maximum usage per interface).
>>>
>>> The scheme I=E2=80=99m trying to run is as follows:
>>>
>>> 1.      USRP 1: 200 Msps on both channels
>>>
>>> 2.      USRP 2: 200 Msps on both channels
>>>
>>> 3.      USRP 3: 50 Msps on both channels
>>>
>>> 4.      USRP 4: 50 Msps on both channels
>>>
>>> I=E2=80=99m streaming samples directly into shared memory, from which a=
 separate
>>> thread converts the samples to selectable 1/2/4/8/16 bits per sample an=
d
>>> stores them to the RAID 0 disk volume. Bit depth conversion is fast and
>>> doesn=E2=80=99t seem to be the bottleneck. In fact, converting to 4 bit=
s per sample
>>> achieves better results than no conversion at all, forcing me to write =
the
>>> full incoming 16 bits per sample. I launch a separate instance of my
>>> program to store samples for each USRP, as I have observed this deliver=
s
>>> the best performance.
>>>
>>> With this, I=E2=80=99m able to run 4 channels at 200Msps and 2 channels=
 at
>>> 50Msps. But when I launch the last two channels at 50Msps the system ca=
n=E2=80=99t
>>> keep up and the recording starts losing/dropping samples.
>>>
>>> I was able to run 4 channels at 184.32Msps and 4 channels at 46.08Msps
>>> for a few seconds, but this is also not sustainable and samples are dro=
pped
>>> periodically.
>>>
>>> The application is very sensitive, so even a single sample lost or
>>> dropped completely invalidates the recording.
>>>
>>>
>>>
>>> At these rates, the sheer amount of kernel systems calls seems to be th=
e
>>> most significant performance hit, that=E2=80=99s why I was looking at D=
PDK as a
>>> potential solution. That being said, I=E2=80=99m able to sustain a soli=
d stream
>>> using the benchmark_rate program (discarding the samples) with 4
>>> channels at 200Msps and 4 channels at 50Msps without any drops/overflow=
s.
>>>
>>> Do you have a sample program for high-performance/high-rate sample
>>> streaming? The provided rx_samples_to_file is not nearly enough.
>>>
>>> What=E2=80=99s the preferred way to approach storing samples for maximu=
m
>>> performance?
>>>
>>>
>>>
>>> Thank you a lot and best regards,
>>>
>>> Guillermo
>>>
>>> 1Gsps is a totally *eye-watering* sample-rate for an ordinary computer
>>> to "swallow" and write to disk.  You are very likely at the very bleedi=
ng
>>> edge with this, and
>>>   I'm not aware of anyone else doing work at these aggregate rates.  Th=
e
>>> fact that you are able to *both* "do stuff with the samples" AND write =
them
>>> to a RAID
>>>   array at ~1Gsps is amazing.
>>>
>>> Do all USRPs have to be on the same computer for your application?  Are
>>> there opportunities to use a more distributed approach?
>>>
>>>
>>>
>>> *De:* Marcus D. Leech [mailto:patchvonbraun@gmail.com
>>> <patchvonbraun@gmail.com>]
>>> *Enviado el:* 17 November 2021 16:51
>>> *Para:* Guillermo Ortas Delgado <g.ortas@gmv.com> <g.ortas@gmv.com>;
>>> Rob Kossler <rkossler@nd.edu> <rkossler@nd.edu>
>>> *CC:* usrp-users@lists.ettus.com
>>> *Asunto:* Re: [USRP-users] Re: DPDK drops samples at low rates
>>>
>>>
>>>
>>> On 2021-11-17 04:50, Guillermo Ortas Delgado wrote:
>>>
>>> Thanks for your message, I already have the mbuf size maxed out to 512
>>> (that=E2=80=99s the maximum value it will take).
>>>
>>>
>>>
>>> I have noticed that DPDPK v19.11 made great improvements to the BNXT
>>> driver. Is there any chance to get UHD running with DPDK 19.11? Or even
>>> better 20.11.3?
>>>
>>> Both are long-term support releases which are more mature and support
>>> vector mode, which offers must better performance.
>>>
>>> Quote from DPDK 19.11:
>>> =E2=80=9CThe BNXT PMD includes support for SSE vector mode on x86 platf=
orms.
>>> Vector provides *significantly improved performance* over the base
>>> implementation=E2=80=9D
>>>
>>>
>>>
>>> I already tried building UHD 4.1.0.4 with DPDK 19.11 by modifying the
>>> makefile to accept this version, but the build fails.
>>>
>>> I would really appreciate it if you could add support for newer version=
s
>>> of DPDK.
>>>
>>>
>>>
>>> Best,
>>>
>>> Guillermo
>>>
>>>
>>>
>>>
>>>
>>> P Please consider the environment before printing this e-mail.
>>>
>>>
>>>
>>> P Please consider the environment before printing this e-mail.
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000078f26f05d125b7d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It is worth trying a Mellanox 10 GbE NIC. In our recent in=
ternal testing with UHD=C2=A0+ DPDK=C2=A0+ N320/N321, we saw similar issues=
 as Berkay notes, and eventually tracked the issue to the Intel driver. We =
approached Intel and while they acknowledged the probable issue, since they=
 have moved development work to the 800-series NICs, they declined to fix t=
he issue in their 500/700 series NIC driver. We switched to a Mellanox NIC =
and that resolved the issues. Please note that UHD currently supports DPDK =
18.11 (exact version), which does not have support for Intel 800-series NIC=
s -- the oldest DPDK for that support is 19.04, and 19.11 is recommended as=
 the minimum version. We are actively=C2=A0working on updating DPDK support=
 to 19.11 / 20.11 / 21.11 -- looks like the same API, which is different fr=
om that for 18.11. - MLD</div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Nov 19, 2021 at 1:54 AM Berkay SAYGILI &lt;=
<a href=3D"mailto:zuhasdasn@gmail.com">zuhasdasn@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hello Guillermo,<div><br></div><div>I have the same problem with DPDK. I ca=
n receive data with 200 MSPS in both channels with a single N320 without DP=
DK, but when I use DPDK, it starts to drop samples even at much lower sampl=
e rates. I have an X520-DA2 NIC. When I wrote this problem to Ettus, they s=
uggested me to try the DPDK with Mellanox NIC. Therefore, I am considering =
buying a Mellanox NIC at the moment, but I am not certain that a new NIC wi=
ll solve the problem.</div><div><br></div><div><br></div><div>Best regards<=
/div><div><br></div><div>Berkay S.</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 18 Nov 2021 at 18:01, Rob K=
ossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd=
.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Guillermo,<div>My experience with =
DPDK was the following:</div><div><ul><li>very difficult to configure</li><=
li>once configured properly, streaming was exceptional (significant improve=
ment compared to no DPDK).=C2=A0 I was using Intel cards (likely X520-DA2 a=
nd XL710-QDA1).<br></li><li>lots of bad side effects related to DPDK taking=
 over a dedicated CPU. I&#39;m not sure why but at times even the mouse and=
 keyboard would get so slow that the system became unusable - it occurred t=
o me that maybe the mouse/keyboard were mistakenly being serviced by the CP=
U that was dedicated to DPDK - very strange. And, it wasn&#39;t just the mo=
use - other applications could be affected.=C2=A0 The side effects were sev=
ere enough for me to abandon using DPDK on a regular basis.=C2=A0 That said=
, I would consider it in your situation where you needed the performance.</=
li></ul><div>I never experienced the troubles you are having where DPDK is =
working but performing poorly. In my case, if it worked at all, the perform=
ance was good. Sorry that I don&#39;t have any good suggestions for you.</d=
iv></div><div><br></div><div>Whenever I am trying to capture high data rate=
 receive streams, I save the data=C2=A0to files in a RAM file system. If I =
need these files permanently stored, I have had best success with running a=
 separate utility that moves=C2=A0the saved files from RAM to storage.=C2=
=A0 It doesn&#39;t seem like this approach should be necessary (as compared=
 to multi threads within one process and/or keeping the data in shared memo=
ry rather than buffering in &#39;files&#39;) but perhaps my attempts at oth=
er approaches were faulty.</div><div><br></div><div>Rob</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 18=
, 2021 at 5:03 AM Guillermo Ortas Delgado &lt;<a href=3D"mailto:g.ortas@gmv=
.com" target=3D"_blank">g.ortas@gmv.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">





<div lang=3D"ES">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Hi Marcus,<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Wow, good to know that I=E2=
=80=99m doing good. I thought I wasn=E2=80=99t the only one working at thes=
e high rates.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">I guess there is the possibil=
ity to spread the load on another computer, but I was interested in DPDK as=
 it showed potential
 to accomplish my goal more elegantly instead of just throwing more money a=
t the problem.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">I=E2=80=99m still puzzled by =
DPDK dropping samples at even 25Msps on 2 channels.<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:Calibri,sans-serif;color:rgb(31,73,125)">@Rob Kossler: do you have =
any more input on this matter?<u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Best,<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Guillermo</span><span lang=3D=
"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31=
,73,125)"><u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:Calibri,sans-serif">De:</span></b><span lang=3D"EN-US" style=3D"fon=
t-size:11pt;font-family:Calibri,sans-serif"> Marcus D. Leech [mailto:<a hre=
f=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.=
com</a>]
<br>
<b>Enviado el:</b> 17 November 2021 17:43<br>
<b>Para:</b> Guillermo Ortas Delgado &lt;<a href=3D"mailto:g.ortas@gmv.com"=
 target=3D"_blank">g.ortas@gmv.com</a>&gt;; Rob Kossler &lt;<a href=3D"mail=
to:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
<b>CC:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Asunto:</b> Re: [USRP-users] Re: DPDK drops samples at low rates<u></u><=
u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<p class=3D"MsoNormal">On 2021-11-17 11:27, Guillermo Ortas Delgado wrote:<=
u></u><u></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Hi Marcus, thank you for your=
 message.</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0</span><span lang=3D"EN=
-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">I do think the network layer =
is indeed the most significant part of this challenging setup, let me illus=
trate:</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">The platform I=E2=80=99m usin=
g is a server form-factor computer with a Xeon Silver 4215R, 32GB of memory=
 and no GPU. For storage,
 I have 4 SSDs of 3.2TB mounted in RAID 0 providing a write capacity of 4GB=
/s, so that=E2=80=99s no issue. I=E2=80=99m using all the optimizations men=
tioned
</span><a href=3D"https://urldefense.com/v3/__https:/kb.ettus.com/Getting_S=
tarted_with_DPDK_and_UHD__;!!MvyJQugb!UJ8FfsPbUrq0LfNpjFLHfw9YyY1nkelByXNeH=
L_5zu_b0NDpEm1rMWVt0ZYW$" target=3D"_blank"><span lang=3D"EN-US" style=3D"f=
ont-size:11pt;font-family:Calibri,sans-serif">here</span></a><span lang=3D"=
EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,=
73,125)">
 and </span><a href=3D"https://urldefense.com/v3/__https:/kb.ettus.com/USRP=
_Host_Performance_Tuning_Tips_and_Tricks__;!!MvyJQugb!UJ8FfsPbUrq0LfNpjFLHf=
w9YyY1nkelByXNeHL_5zu_b0NDpEm1rMVnRj1fb$" target=3D"_blank"><span lang=3D"E=
N-US" style=3D"font-size:11pt;font-family:Calibri,sans-serif">here</span></=
a><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-ser=
if;color:rgb(31,73,125)">,
 so raw CPU power I think should be enough.</span><span lang=3D"EN-US"><u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Each of the four x310 USRPs i=
s attached to a dedicated network card with dual 10GbE ports, so network ca=
pacity is theoretically
 more than enough (6.4Gb out of 10Gb maximum usage per interface).</span><s=
pan lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">The scheme I=E2=80=99m trying=
 to run is as follows:</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p><u></u><span>1.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u><span lang=3D"EN-US" style=3D"font-size:11pt;font-fami=
ly:Calibri,sans-serif;color:rgb(31,73,125)">USRP 1: 200 Msps on both channe=
ls</span><u></u><u></u></p>
<p><u></u><span>2.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u><span lang=3D"EN-US" style=3D"font-size:11pt;font-fami=
ly:Calibri,sans-serif;color:rgb(31,73,125)">USRP 2: 200 Msps on both channe=
ls</span><u></u><u></u></p>
<p><u></u><span>3.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u><span lang=3D"EN-US" style=3D"font-size:11pt;font-fami=
ly:Calibri,sans-serif;color:rgb(31,73,125)">USRP 3: 50 Msps on both channel=
s</span><u></u><u></u></p>
<p><u></u><span>4.<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u><span lang=3D"EN-US" style=3D"font-size:11pt;font-fami=
ly:Calibri,sans-serif;color:rgb(31,73,125)">USRP 4: 50 Msps on both channel=
s</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">I=E2=80=99m streaming samples=
 directly into shared memory, from which a separate thread converts the sam=
ples to selectable 1/2/4/8/16
 bits per sample and stores them to the RAID 0 disk volume. Bit depth conve=
rsion is fast and doesn=E2=80=99t seem to be the bottleneck. In fact, conve=
rting to 4 bits per sample achieves better results than no conversion at al=
l, forcing me to write the full incoming
 16 bits per sample. I launch a separate instance of my program to store sa=
mples for each USRP, as I have observed this delivers the best performance.=
</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">With this, I=E2=80=99m able t=
o run 4 channels at 200Msps and 2 channels at 50Msps. But when I launch the=
 last two channels at
 50Msps the system can=E2=80=99t keep up and the recording starts losing/dr=
opping samples.</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">I was able to run 4 channels =
at 184.32Msps and 4 channels at 46.08Msps for a few seconds, but this is al=
so not sustainable
 and samples are dropped periodically.</span><span lang=3D"EN-US"><u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">The application is very sensi=
tive, so even a single sample lost or dropped completely invalidates the re=
cording.</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0</span><span lang=3D"EN=
-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">At these rates, the sheer amo=
unt of kernel systems calls seems to be the most significant performance hi=
t, that=E2=80=99s why
 I was looking at DPDK as a potential solution. That being said, I=E2=80=99=
m able to sustain a solid stream using the
</span><span lang=3D"EN-US" style=3D"font-size:10pt;font-family:Consolas;co=
lor:rgb(31,73,125)">benchmark_rate</span><span lang=3D"EN-US" style=3D"font=
-size:10pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">
</span><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,san=
s-serif;color:rgb(31,73,125)">program (discarding the samples) with 4 chann=
els at 200Msps and 4 channels at 50Msps without any drops/overflows.</span>=
<span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Do you have a sample program =
for high-performance/high-rate sample streaming? The provided
</span><span lang=3D"EN-US" style=3D"font-size:10pt;font-family:Consolas;co=
lor:rgb(31,73,125)">rx_samples_to_file</span><span lang=3D"EN-US" style=3D"=
font-size:10pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">
</span><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,san=
s-serif;color:rgb(31,73,125)">is not nearly enough.</span><span lang=3D"EN-=
US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">What=E2=80=99s the preferred =
way to approach storing samples for maximum performance?</span><span lang=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0</span><span lang=3D"EN=
-US"><u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Thank you a lot and best rega=
rds,</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Guillermo</span><span lang=3D=
"EN-US"><u></u><u></u></span></p>
</div>
</blockquote>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1Gsps is a totally *eye-waterin=
g* sample-rate for an ordinary computer to &quot;swallow&quot; and write to=
 disk.=C2=A0 You are very likely at the very bleeding edge with this, and<b=
r>
=C2=A0 I&#39;m not aware of anyone else doing work at these aggregate rates=
.=C2=A0 The fact that you are able to *both* &quot;do stuff with the sample=
s&quot; AND write them to a RAID<br>
=C2=A0 array at ~1Gsps is amazing.<br>
<br>
Do all USRPs have to be on the same computer for your application?=C2=A0 Ar=
e there opportunities to use a more distributed approach?<br>
<br>
<br>
<br>
<u></u><u></u></span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:Calibri,sans-serif">De:</span></b><span lang=3D"EN-US" style=3D"fon=
t-size:11pt;font-family:Calibri,sans-serif"> Marcus D. Leech [</span><a hre=
f=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"><span lang=3D"EN-US"=
 style=3D"font-size:11pt;font-family:Calibri,sans-serif">mailto:patchvonbra=
un@gmail.com</span></a><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif">]
<br>
<b>Enviado el:</b> 17 November 2021 16:51<br>
<b>Para:</b> Guillermo Ortas Delgado </span><a href=3D"mailto:g.ortas@gmv.c=
om" target=3D"_blank"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fam=
ily:Calibri,sans-serif">&lt;g.ortas@gmv.com&gt;</span></a><span lang=3D"EN-=
US" style=3D"font-size:11pt;font-family:Calibri,sans-serif">;
 Rob Kossler </span><a href=3D"mailto:rkossler@nd.edu" target=3D"_blank"><s=
pan lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-serif">=
&lt;rkossler@nd.edu&gt;</span></a><span lang=3D"EN-US" style=3D"font-size:1=
1pt;font-family:Calibri,sans-serif"><br>
<b>CC:</b> </span><a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_=
blank"><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,san=
s-serif">usrp-users@lists.ettus.com</span></a><span lang=3D"EN-US" style=3D=
"font-size:11pt;font-family:Calibri,sans-serif"><br>
<b>Asunto:</b> Re: [USRP-users] Re: DPDK drops samples at low rates</span><=
span lang=3D"EN-US"><u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal">On 2021-11-17 04:50, Guillermo Ortas Delgado wrote:<=
u></u><u></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Thanks for your message, I al=
ready have the mbuf size maxed out to 512 (that=E2=80=99s the maximum value=
 it will take).</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0</span><span lang=3D"EN=
-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">I have noticed that DPDPK v19=
.11 made great improvements to the BNXT driver. Is there any chance to get =
UHD running with
 DPDK 19.11? Or even better 20.11.3?</span><span lang=3D"EN-US"><u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Both are long-term support re=
leases which are more mature and support vector mode, which offers must bet=
ter performance.</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Quote from DPDK 19.11:<br>
=E2=80=9CThe BNXT PMD includes support for SSE vector mode on x86 platforms=
. Vector provides
<b>significantly improved performance</b> over the base implementation=E2=
=80=9D</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0</span><span lang=3D"EN=
-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">I already tried building UHD =
4.1.0.4 with DPDK 19.11 by modifying the makefile to accept this version, b=
ut the build fails.</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">I would really appreciate it =
if you could add support for newer versions of DPDK.</span><span lang=3D"EN=
-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0</span><span lang=3D"EN=
-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Best,</span><span lang=3D"EN-=
US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Guillermo
</span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p>
</blockquote>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:18pt;font-family:Webdings;c=
olor:green">P
</span><span lang=3D"EN-US" style=3D"font-size:7pt;font-family:Arial,sans-s=
erif;color:green">Please consider the environment before printing this e-ma=
il.</span><span lang=3D"EN-US">
<u></u><u></u></span></p>
</blockquote>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<span><br>
</span><span style=3D"font-size:18pt;line-height:125%;font-family:Webdings;=
color:green">P<span></span>
<span style=3D"font-size:7pt;line-height:125%;font-family:Arial,&quot;sans-=
serif&quot;;color:green">
Please consider the environment before printing this e-mail.</span></span><=
span></span>
</div>

</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000078f26f05d125b7d8--

--===============4464453340908185000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4464453340908185000==--
