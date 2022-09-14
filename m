Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2641E5B8F47
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 21:34:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BDD06383C30
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 15:34:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663184075; bh=DjQQucq8zf6dZ4wx9El9JblG7Lpok6fR+VD892Ye0/0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nMkCcRCcP9gzs7lP3ltpuxAu2p+NfYso7whXDdw5lnkOYSWlvxHlae6uB/EiPvRyE
	 y7LzLCW7Eh8ChV42bJCQQRE/T0UXIjwURPUK8aqvIzpNvmYaKC30NENA++TNdIMoVz
	 u4mzpoPSr4PPgUvBQDV/aK0azWWa86OBiDsVT/FcBlce1cNjLkU0d9stU4zuXgDowN
	 tCSXGeayHOCwXDFpHyGu7q2pRDFG5+k/a5GXlQ0solghDzP91z40hKYMiZgBjD/E0l
	 oAMsxJmHxFeCO+RNQ3vOg41BRDMy1RUs+w4pIl5MCJy8GPwVMtcQXOtGT0ot3W/1yD
	 O0stmJLkvYdew==
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id EB60138368C
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 15:33:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="V8AVX49P";
	dkim-atps=neutral
Received: by mail-yb1-f178.google.com with SMTP id p69so17639922yba.0
        for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 12:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=hR77LTfPpYN5hpL3SpPeIgwzRE0h1QbfVPvez5BYC1o=;
        b=V8AVX49PiXAClcR6MIaDQXZ8fGzfS++ah8Kb9dyL7p1j2pQNudI5M/gfA9+MMlS/y6
         4O1M5bll3ONTxV1VHb1Noz6XzfYzBzJVL/ON7DjbdyGxEFi4bzYJxI5Ww8zeFgzrx47w
         c9+x0EXE7P+5PTQcipo0beY0Nh8j/KE0WLjVBwB6k4B1N9UWXDj8mg91SOJdh5YHdXxw
         yIwqPtrcnt37/NkFuy6/p92/SezUCHiPBQvPFMsN+6Ex7foX20Ex+tNOpzWcukW7teLD
         S3cgiaxsSycGfBU3Sa7IUEyq3XetHnxe2J+/xMDQcDl6NKShOdep3MIFGFf8LhRAgSQ7
         vJ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=hR77LTfPpYN5hpL3SpPeIgwzRE0h1QbfVPvez5BYC1o=;
        b=13qLA1Yq9WMW74ftZG5GJ+FVfAI7L0ETJ7qTAQeKhjWT2+2R68PG2EOcq5CTXFSPUp
         tNKojmQtoTWcvri1T+RPjCwbLdnZnWdY4uzKiqTz4MWM+9KIBqY1a3EbfDVoxPDe6QZn
         g4ZZwVa7ilBztfh/kL8n0/UCqffyIYoQorAP7Ug6p09H2RAZFz/A/TsWMplkvMFUOPi5
         TdkRVmoVq2jzZB/Y4TPYF7SG/6E9294y8ewOZFRQRQ+V1Puggtbky2hDJnLiBVoKvmRA
         Op8M0m9FGRIiXXvVx2oroa9IAazqBV1vwZXgky2AKpYTDR+YWL3gVF8QlJyKqeQl4xhS
         1RTg==
X-Gm-Message-State: ACgBeo3RoiF7CuQsXQ2yIea3pgsXvGItd35MOv2HERDZKLu+iEO0kCaG
	QqP+f2qm7yo/tcrb7oqGiBaS8PfN8R/GZvfYo4JRaw==
X-Google-Smtp-Source: AA6agR4XSU0JqIeEDgbH9XsQds7bsJ4XH6wGCJVjlLMp9dxCrK7dtKxIOEqavXEYZmBDFnu2dunEpRgzw4AG0tkNMvE=
X-Received: by 2002:a05:6902:709:b0:6af:270a:c1c6 with SMTP id
 k9-20020a056902070900b006af270ac1c6mr14464613ybt.447.1663183999984; Wed, 14
 Sep 2022 12:33:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
 <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
 <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
 <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com>
 <CAB__hTTsg9LsRScFUmYOywBp9eSg7iYixjLZULa119B+fnO2WQ@mail.gmail.com>
 <CAB__hTQp1SOfvNa6E=qZaV6ORqVHU5MJFTv_vzU0KXZ5Gy9Eww@mail.gmail.com>
 <CAJhOL6etMLth3S6pj-ghemXv18PXz-M0nS=S3Sg0Z3-i6Pq4Yg@mail.gmail.com>
 <CAB__hTQ8Ln5ktvkmx1ThQVQVX1mga0qCX=49YbXJtasG7emYjw@mail.gmail.com>
 <CAJhOL6dLdSL2bWPjdgcfnXL+ednwRQ1QX9tRG3mxgm3+O=486Q@mail.gmail.com>
 <CAJhOL6dUL3S-CJJHLOJTkaj86V-4axM8Ah=4_aKvAcB6WHEHyg@mail.gmail.com>
 <CAEXYVK6MeWsG3CF0LXYaOE0w5RGzAiksG1j-54kNOWYg2ZOfDg@mail.gmail.com>
 <28515f65-c0e2-4489-8563-1887cfac4265@Spark> <CAEXYVK4_xW0rgOKS1vz7R=iZkh_mg4qADnPF0uLALBhxGd71Ng@mail.gmail.com>
In-Reply-To: <CAEXYVK4_xW0rgOKS1vz7R=iZkh_mg4qADnPF0uLALBhxGd71Ng@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 14 Sep 2022 15:33:09 -0400
Message-ID: <CAB__hTQ=00nz9Zyh+yfkG_V=h1yzfEDT4Rc+8=d5fxbD-sTrQw@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: DIAKJMTK5ARR7LPAEVKLYXRAZ773W27D
X-Message-ID-Hash: DIAKJMTK5ARR7LPAEVKLYXRAZ773W27D
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Kevin Williams <zs1kwa@gmail.com>, Jonathon Pendlum <jonathon.pendlum@ettus.com>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DIAKJMTK5ARR7LPAEVKLYXRAZ773W27D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8340730687871978371=="

--===============8340730687871978371==
Content-Type: multipart/alternative; boundary="0000000000008428ac05e8a8336c"

--0000000000008428ac05e8a8336c
Content-Type: text/plain; charset="UTF-8"

Hi Kevin,
If you run the rfnoc-example gain testbench, it should demonstrate that the
testbench is providing a suitable environment for testing your custom logic
or core.  Maybe see what is different between that and your testbench.

If the problem turns out to be related to the "waiting for TREADY before
asserting TVALID" issue presently discussed, it seems this can be solved by
adding a buffer stage (register or FIFO) between your logic and the noc
shell.
Rob

On Wed, Sep 14, 2022 at 2:11 PM Brian Padalino <bpadalino@gmail.com> wrote:

> On Wed, Sep 14, 2022 at 1:55 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>
>> Thanks Brian. I think the core gets generated in a way which respects
>> back-pressure, so unless a TREADY is seen the core does not generate output
>> samples. I have observed this by simulating the core in isolation.
>>
> On 14 Sep 2022, 17:49 +0200, Brian Padalino <bpadalino@gmail.com>, wrote:
>>
>> I believe the AXI spec says that data should be presented when valid, and
>> the tready signal just accepts that data.  You can't rely on tready to be
>> asserted before asserting tvalid.
>>
>> With that being said, I have no idea if this is the source of any of your
>> issues.
>>
>> Brian
>>
>>
> I don't quite understand what you said.  To copy from the AXI protocol
> spec (
> https://documentation-service.arm.com/static/60d5b244677cf7536a55c23e?token=)
> section 2.2:
>
>   "A Transmitter is not permitted to wait until TREADY is asserted before
> asserting TVALID. Once TVALID is
> asserted, it must remain asserted until the handshake occurs.
>
>   A Receiver is permitted to wait for TVALID to be asserted before
> asserting TREADY. It is permitted that a
> Receiver asserts and deasserts TREADY without TVALID being asserted."
>
> Waiting for TREADY to be asserted is invalid as a transmitter.
>
> Is something not compliant and causing deadlock?
>
> Brian
>

--0000000000008428ac05e8a8336c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Kevin,<div>If you run the rfnoc-example gain testbench,=
 it should demonstrate that the testbench is providing a suitable environme=
nt for testing your custom logic or core.=C2=A0 Maybe see what is different=
 between that and your testbench.=C2=A0=C2=A0</div><div><br></div><div>If t=
he problem turns out to be related to the &quot;waiting for TREADY=C2=A0bef=
ore asserting TVALID&quot; issue presently discussed, it seems this can be =
solved by adding a buffer stage (register or FIFO) between your logic and t=
he noc shell.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 2022 at 2:11 PM Brian Pada=
lino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Sep 14, 2022 at 1:55 PM Kevin Williams &lt;<a=
 href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>
<div name=3D"messageBodySection">
<div dir=3D"auto">Thanks Brian. I think the core gets generated in a way wh=
ich respects back-pressure, so unless a TREADY is seen the core does not ge=
nerate output samples. I have observed this by simulating the core in isola=
tion.</div></div></div></blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div><div name=3D"messageBodySection">
</div>
<div name=3D"messageReplySection">On 14 Sep 2022, 17:49 +0200, Brian Padali=
no &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@g=
mail.com</a>&gt;, wrote:<br>
<blockquote type=3D"cite" style=3D"border-left:thin solid grey;margin:5px;p=
adding-left:10px">
<div dir=3D"ltr">I believe the AXI spec says that data should be presented =
when valid, and the tready signal just accepts that data.=C2=A0 You can&#39=
;t rely on tready to be asserted before asserting tvalid.
<div><br></div>
<div>With that being said, I have no idea if this is the source of any of y=
our issues.</div>
<div><br></div>
<div>Brian</div></div></blockquote></div></div></blockquote><div><br></div>=
<div>I don&#39;t quite understand what you said.=C2=A0 To copy from the AXI=
 protocol spec (<a href=3D"https://documentation-service.arm.com/static/60d=
5b244677cf7536a55c23e?token=3D" target=3D"_blank">https://documentation-ser=
vice.arm.com/static/60d5b244677cf7536a55c23e?token=3D</a>) section 2.2:</di=
v><div><br></div><div>=C2=A0 &quot;A Transmitter is not permitted to wait u=
ntil TREADY is asserted before asserting TVALID. Once TVALID is</div>assert=
ed, it must remain asserted until the handshake occurs.</div><div class=3D"=
gmail_quote"><br>=C2=A0 A Receiver is permitted to wait for TVALID to be as=
serted before asserting TREADY. It is permitted that a<br>Receiver asserts =
and deasserts TREADY without TVALID being asserted.&quot;</div><div class=
=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Waiting for TREADY to=
 be asserted is invalid as a transmitter.</div><div class=3D"gmail_quote"><=
br></div><div class=3D"gmail_quote">Is something not compliant and causing =
deadlock?</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quo=
te">Brian</div></div>
</blockquote></div>

--0000000000008428ac05e8a8336c--

--===============8340730687871978371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8340730687871978371==--
