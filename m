Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 771DF50BD30
	for <lists+usrp-users@lfdr.de>; Fri, 22 Apr 2022 18:34:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C978384E2F
	for <lists+usrp-users@lfdr.de>; Fri, 22 Apr 2022 12:34:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650645242; bh=DZpIpYnSto8U2IxTRklNZ30rQAKErfTrpAIwX0id7gc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=glZgWbme2xbd2vlxKPd29Y6DmtXkDsEZC83iD/Bvo+E26pyGogrVmZpa+U+oC1O4e
	 gYo8k/mW6vwz9eCvlTEuR4xM7wnrRii9MR9iqjhW0qBXh1KIPzZ/rKbDPWlg7/2069
	 lEpX5JI2l/X12AQFx5DdrqXkDxczbak9TMdNSu657cqEKQsBHOpSxbs/JEQ+dwkNK6
	 VW1RUN3kGhCL0FWUidDPsodaaV+zevnHjH11Y+qh/mHLWvnRP63oXHAJmL3AsnWFpJ
	 Y6Yz1z1aV4O4PXtHZU/kv48Rd80rO+d29k6dHV8//CjclKonatXfOlFfV6V7bDlHRh
	 v16T8ugnygQSw==
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 16FEF384D3A
	for <usrp-users@lists.ettus.com>; Fri, 22 Apr 2022 12:32:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MP2sqTKA";
	dkim-atps=neutral
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-2edbd522c21so90696447b3.13
        for <usrp-users@lists.ettus.com>; Fri, 22 Apr 2022 09:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=QZJA4nZsehwnZnRJqzT3zPzEdJw2yrIy1JZWmhpKlss=;
        b=MP2sqTKAqBMkcj7a0ZBb1oE1hM6ut/eMigs6kYi9BL287CWqMwj/g/qjHQcr+Sj2Fx
         JfimjLoqG37TgHFHYLmTDUZz62KpuOfZNVcVfhba9o0EvIZpznGYk1qc1mjnxW1wZyFM
         L/xa/w/2dawPWeI5VX4VclyPKuRXxGggfeMyXmfDLmTvaAjhx9T/HYdnr0Z4aTq9TVTQ
         +v1wnMee/ZEFuUeQYZYT0MpkwaFO+2WdVgYH8jdKsfYMLaZfobzounacx9cPAEPy2F7A
         f8toWSa+CjdruRQLppi3Fn00voJvFMT2yoYJ7k8QklWVJ7qH5jhBU0O4bf79l6xOBvPF
         V7bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=QZJA4nZsehwnZnRJqzT3zPzEdJw2yrIy1JZWmhpKlss=;
        b=FUNWPcXJ0nnvNhIXymzzd+moW90kWMOhHNfr3OUTAhfCnfVA/60SRQtRFNnj93WRIp
         ClIoy0QUC3oF0hDJe+f7R0WRdBNtZUSqONIFI9hSNk/jZP9KshpliD1Gy7Z3cbNJKxa6
         +ngcQVOM7FCD68jd1SoCFS2k0mbLoIjFSMFODsKfCqyRmxJEjivfoXqSPotCEHAUbxgf
         z2oTvv2YSfHxtq1BzWFBr1Iqs44J0kjMhjCUgqHWTZM0QJwaaFxFVrGcpOeQDF/7MPh1
         1kZ8GK7BZ2c1Xc7e6tD33hntIt6HqG+dALEkKKcLYmlNgBgRsMTQnYEEGAZKnpf/r2fc
         JfQA==
X-Gm-Message-State: AOAM531KX21A6Mj2u5jiJ5M+y4kSDKTiGnNMj7y+DpE8+Mydt9o84dlv
	Mb/j7roWciSNy2pK+0grq56CxbVF7SDS/ca6krUi6ZWknKE=
X-Google-Smtp-Source: ABdhPJxoZ9JyKEJdbp39smOWcGUg6fQd/44rKhRepT4ZOcVcuJHi5X64rltMdB079QL8LpmBvTlRPaPBcQ1i/PmuDHA=
X-Received: by 2002:a0d:d78a:0:b0:2f7:c361:abf3 with SMTP id
 z132-20020a0dd78a000000b002f7c361abf3mr111282ywd.498.1650645171939; Fri, 22
 Apr 2022 09:32:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAPT2EegX83McE_TznHb_vPcsgJSw46mBfE9O5mjnnGx8hrt3uw@mail.gmail.com>
 <17c6ff8a-23d3-857d-cd9e-8c7481f5f225@gmail.com> <CAL0m=NYwuKBAiyEj_-rdu2ypjsV+vjfrZfw3HQz_upLdd09+cA@mail.gmail.com>
In-Reply-To: <CAL0m=NYwuKBAiyEj_-rdu2ypjsV+vjfrZfw3HQz_upLdd09+cA@mail.gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Fri, 22 Apr 2022 12:32:41 -0400
Message-ID: <CAL0m=NbeN7fBXYHWkbCd60zVZjOWVntDjhzJrpGayb7O1Fwsnw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: A5GIWRDZFHXSPTHNERW6QHMDMLGD5B6V
X-Message-ID-Hash: A5GIWRDZFHXSPTHNERW6QHMDMLGD5B6V
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 with two BasicRX Daughterboards
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A5GIWRDZFHXSPTHNERW6QHMDMLGD5B6V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2064925708997065080=="

--===============2064925708997065080==
Content-Type: multipart/alternative; boundary="0000000000001facf705dd40c7ca"

--0000000000001facf705dd40c7ca
Content-Type: text/plain; charset="UTF-8"

Hi All,

Can anyone having successful experience with X310 + two BasicRX
Daughterboards confirm that such a setup works? We can make it work for the
following settings: i) X310 + one BasicRX, ii) X310 + two BasicTX, iii)
X310 + two SBX for both TX and RX, iv) two N210 + MIMO cable + two BasicRX.
But we are not able to make it work for X310 + two BasicRX. We tried
different UHD versions (4.2, 3.15, etc.) and got no luck.

Any suggestions would be appreciated!

Hua



On Tue, Apr 19, 2022 at 10:44 PM Zeng, Huacheng <huacheng.zeng@gmail.com>
wrote:

> Below is a more detailed description of our issue.
>
> 1. We have an X310 with two BasicRX boards installed (no BasicTX). We
> tried to read the two data streams from X310 on a computer at a sampling
> rate 5Msps. The computer displays "OOOOOOOOOOOO" overflow constantly. We
> tried other sampling rates such as 1Msps and 10Msps, the observation is the
> same.
>
> We found that the LED lights on the X310 panel are abnormal. When X310
> works in RX mode, the two LED lights (RF A's RX2 LED and RF B's RX2 LED)
> should be on, but we observed they were flashing. Also, the LINK LED should
> be on in RED, but we observed that it was flashing in ORANGE.
>
> We reloaded the FPGA image, but the problem is consistent.
>
> 2. We removed BasicRX from X310's RF B channel, and tested one data stream
> from X310 RF A's channel, it works (no overflow). We are sure that the two
> BasicRX boards have no problem, as they are brand new.
>
> 3. We removed two BasicRX boards and installed two BasicTX boards on the
> same X310. We used GNU RADIO to send two data streams to X310 for signal
> transmission. It works well and has no overflow issue.
>
> We want to test X310's RF B channel, but we do not know how to set the
> parameters so that GNU Radio can read the data stream from X310's RF B
> channel. Would it be an argument like "subdev=B"? It looks like GNU Radio
> always gets data stream from RF A channel if we set the channel number to
> 1. Please suggest if it is possible.
>
> Any suggestion and help would be appreciated!
>
>
> On Tue, Apr 19, 2022 at 6:03 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-04-19 15:05, Shichen Zhang wrote:
>> > Hello everyone,
>> >
>> > I am doing some experiments and I need to build the 2 by 2
>> > communication using X310 with the BasicRX Daughterboard. I use the
>> > X310 as both the transmitter and receiver. I can successfully test the
>> > 1 by 1 case, however, when I test the 2 by 2 case, the overflow
>> > happened and the program could not be stopped. The RF B channel seems
>> > not to work ( LED light for RF B RX not flash).
>> >
>> > I have attached the flowchart for your reference.
>> >
>> > Best,
>> > SZ
>> >
>> What is your complete hardware configuration?  I assume 2  x BasicRX and
>> 2 x Basic TX?
>>
>> It may just be the case that your computer simply isn't up to the task
>> of moving 20Mssp of data in and out of the radio, along with doing 2 x
>> FFTs and computing the
>>    noise sources.
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000001facf705dd40c7ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>Can anyone having su=
ccessful experience with X310=C2=A0+=C2=A0two BasicRX Daughterboards confir=
m that such a setup works? We can make it work for the following settings: =
i) X310=C2=A0+ one BasicRX, ii) X310=C2=A0+ two BasicTX, iii) X310=C2=A0+ t=
wo SBX for both TX and RX, iv) two N210=C2=A0+ MIMO cable=C2=A0+ two BasicR=
X. But we are not able to make it work for X310=C2=A0+ two BasicRX. We trie=
d different UHD versions (4.2, 3.15, etc.) and got no luck.=C2=A0</div><div=
><br></div><div>Any=C2=A0suggestions would=C2=A0be appreciated!</div><div><=
br></div><div>Hua</div><div><br></div><div><br></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 19, 2022 at 10:4=
4 PM Zeng, Huacheng &lt;<a href=3D"mailto:huacheng.zeng@gmail.com">huacheng=
.zeng@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">Below is a more detailed description of our=
 issue. <br><br>1. We have an X310 with two BasicRX boards installed (no Ba=
sicTX). We tried to read the two data streams from X310 on a computer at a =
sampling rate 5Msps. The computer displays &quot;OOOOOOOOOOOO&quot; overflo=
w constantly. We tried other sampling rates such as 1Msps and 10Msps, the o=
bservation is the same. <br><br>We found that the LED lights on the X310 pa=
nel are abnormal. When X310 works in RX mode, the two LED lights (RF A&#39;=
s RX2 LED and RF B&#39;s RX2 LED) should be on, but we observed they were f=
lashing. Also, the LINK LED should be on in RED, but we observed that it wa=
s flashing in ORANGE. <br><br>We reloaded the FPGA image, but the problem i=
s consistent. <br><br>2. We removed BasicRX from X310&#39;s RF B channel, a=
nd tested one data stream from X310 RF A&#39;s channel, it works (no overfl=
ow). We are sure that the two BasicRX boards have no problem, as they are b=
rand new. <br><br>3. We removed two BasicRX boards and installed two BasicT=
X boards on the same X310. We used GNU RADIO to send two data streams to X3=
10 for signal transmission. It works well and has no overflow issue. <br><b=
r>We want to test X310&#39;s RF B channel, but we do not know how to set th=
e parameters so that GNU Radio can read the data stream from X310&#39;s RF =
B channel. Would it be an argument like &quot;subdev=3DB&quot;? It looks li=
ke GNU Radio always gets data stream from RF A channel if we set the channe=
l number to 1. Please suggest if it is possible. <br><br>Any suggestion and=
 help would be appreciated!<br><br></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 19, 2022 at 6:03 PM Marcus D=
. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">pa=
tchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">On 2022-04-19 15:05, Shichen Zhang wrote:<br>
&gt; Hello everyone,<br>
&gt;<br>
&gt; I am doing some experiments=C2=A0and I need to build the 2 by 2 <br>
&gt; communication using X310 with the=C2=A0BasicRX Daughterboard. I use th=
e <br>
&gt; X310 as both the transmitter and receiver. I can successfully test the=
 <br>
&gt; 1 by 1 case, however, when I test the 2 by 2 case, the overflow <br>
&gt; happened and the program could not be stopped. The RF B channel seems =
<br>
&gt; not to work ( LED light for RF B RX not flash).<br>
&gt;<br>
&gt; I have attached the flowchart for=C2=A0your reference.<br>
&gt;<br>
&gt; Best,<br>
&gt; SZ<br>
&gt;<br>
What is your complete hardware configuration?=C2=A0 I assume 2=C2=A0 x Basi=
cRX and <br>
2 x Basic TX?<br>
<br>
It may just be the case that your computer simply isn&#39;t up to the task =
<br>
of moving 20Mssp of data in and out of the radio, along with doing 2 x <br>
FFTs and computing the<br>
=C2=A0=C2=A0 noise sources.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--0000000000001facf705dd40c7ca--

--===============2064925708997065080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2064925708997065080==--
