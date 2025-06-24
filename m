Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C9EAE6460
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 14:15:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3E80385934
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 08:15:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750767315; bh=Jry4YHaRx3TC8Wf8cCdlU3FIJQCZLmsL9vWxlIa/fmM=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YXzmbT/ML8BosBDtP2MDkhZ2sUUb0C7oYMt2K95zxTP6ZZVvPOZbeVIPlAVVlgxok
	 WCO7LPFieWfgGgbF2wCeH74UZoE7bms0GRUj68S/iGpZAutL7PBbUxCfwS6uNv7SFL
	 dlFbzN/2hQ6sjJ17FsiKLmgdJx1XGmjQ16GnLR7cSXpVVUdUDwpm44FZsaSgJwaNpw
	 /ayJhQEfwN8mo/h0xWNVSdk6xxojD3meemrMp0p7uKhIRip40Xu0LkP6wL1QTkgZWD
	 puPO0LQ0y9UyuFFd0+H441StObyjotqsukjUE7BnxcOIvkM2ef08YhW4wG2bAfxeh4
	 mniqial14Rt4w==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 991EC385646
	for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 08:14:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="jGH9bp5o";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-60702d77c60so708292a12.3
        for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 05:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1750767257; x=1751372057; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9Vg+yIaQrx6mAKe09ZbevPhCBcPdelb46upiRjo6l3s=;
        b=jGH9bp5oAGvHlHQLfqh7xxSQflHMJdbohv+5HYT/oIsl6XoPB3FbpWcypeKgRGNDXy
         SMbCc5ewM0tEvarhP/qgnoBPqzw7yGL1eYYggDMMQPJ+HFypS6FIZxrqOMQa1U4I8N4H
         e+/j4xex/PE4Aw1bEsw3Wg6q3+KVVNQ7Nx6VmFhlREX0whG1qyps/rFtZiAIeSseSQcQ
         8OmP+yrG7XJW3RM8xiBtz35+WPo7C6u33kMBmh1y2bWZoWak9rcaiFZKkL4AaMcYLjmb
         07WIrqlccIoLqY47/eugG9YDTfcYcBBD3LDgGoxduJQJawx0Qx5SXJHqh+ze7cmBTzpP
         S9UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750767257; x=1751372057;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9Vg+yIaQrx6mAKe09ZbevPhCBcPdelb46upiRjo6l3s=;
        b=iHr/oGfu6HQ3baMEiMsADo0KU7AnZnQVefrf5sIrtMxudxTst75Bp9UOQimEUjNgCm
         IDW1GkAa+kNnNHPValKU4sN1pXDkAThVOdBx1D3Ea336nfF3JNIEFQxyMxSDIYxXrdGB
         bUoaChgy1Bkw3UCQoaq+dVn0Gc5R7nEityvD2oFPbbN4QcwIEZfdYPRva8yS/tWtcT+3
         STaPeUSDTcatfSwuWtgb+9OHSnVitPqqzKpffQv6dOq7xYadF/bsprmrvTIZoxxFHwnr
         hF2qy4QeN2Lyp1DQEqKCr/7XrEHSrHx+rrsvhomJI31PpJjx3XmASWFTTH2Py0ARXpXh
         WyxA==
X-Gm-Message-State: AOJu0YzJOcrbGlggCOtVsRMEYm1AlYivBS4d5L3G1PlhStfPpxRH8VnU
	mgGc0Kb+zuzwLT1wPc3+HZt61IMFvbPnN6Y5UwAoVbNZR5Mc5SZsMBXX8IX+UUFUT+DgUKpikuF
	IpXqm6XEPyxq1kGtFVcHzWrbt6Rf3zvrZS9TCTEzZZGSHRS+mFxIj0Do=
X-Gm-Gg: ASbGncuGLhm0pK9YO6v7irmvG5/GdPSBWu/Upy3mX62B2DJMvTuSpru/HzFB5pfZd4+
	TLv1L1IvzClj9divH8FS+Bd2fNC1SwCEMOBc9ZUrgdjjL5/nFj3721tu48j4eUbbDK+zc5gZsMo
	f2keQ+YJCK+O89ckhiuu9NL+r1cZpEG1mEm5fHw9heMOu1E9TguMfTN5p63J2eLISld6lz0OSi7
	2g=
X-Google-Smtp-Source: AGHT+IFqxdryKUi+deTC4tjlzHpxXBkfXHjIH7G3zbKwVlpgAw5xq0xeOVr9afDdoFnZoDrtlqMYo8Xsz7N/xyIBJS8=
X-Received: by 2002:a17:906:dc8d:b0:ad8:9257:5735 with SMTP id
 a640c23a62f3a-ae0578f527emr1546263866b.3.1750767256956; Tue, 24 Jun 2025
 05:14:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK6rYFpX8dJErUdGkqn3e56eifN3COXmmqmvvStu5A9AHA@mail.gmail.com>
 <CAFOi1A6=_+6Ej3wzk55ezeyK1EEFEWrBaJN7=guEmTD9AD1Pfg@mail.gmail.com> <CAEXYVK5vMzrReanTsk4OL8M0D5+c=gSdgjAA4GJGEsdh5f7wVw@mail.gmail.com>
In-Reply-To: <CAEXYVK5vMzrReanTsk4OL8M0D5+c=gSdgjAA4GJGEsdh5f7wVw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 24 Jun 2025 14:14:06 +0200
X-Gm-Features: Ac12FXywNqftkMAUcx7cmWn8ahSW9QoDDTrBoYNbq0nA5wPp_TwGZQ8cuWhD5Vw
Message-ID: <CAFOi1A7_03gvfS_GK-Oga71+R_9D8hn=dkXTV+1dpA4a37Rbvw@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: E4MEWAQF5UAXCKHSUHWWTBNAYUOGB4N2
X-Message-ID-Hash: E4MEWAQF5UAXCKHSUHWWTBNAYUOGB4N2
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming from Both X440 QSFP+ Ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E4MEWAQF5UAXCKHSUHWWTBNAYUOGB4N2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5761335378888216042=="

--===============5761335378888216042==
Content-Type: multipart/alternative; boundary="0000000000006f94db06385044bf"

--0000000000006f94db06385044bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Brian,

you are correct, this feature is not implemented. This is the purpose of
the Virtual Channel (VC) fields, but there is no software support for
de-muxing the streams. We deprioritzed this over (many) other things for
several reasons: Our internal usage of multi-channel SEPs is usually around
multiple channels of the radio or replay block, but a single SEP has a
fixed bandwidth which we would exceed, and therefore we need multiple SEPs
anyway. And to be fair, there was not a lot of demand for this feature
compared to other features. We can rebalance this priority evaluation based
on this kind of feedback.

--M

On Tue, Jun 17, 2025 at 11:16=E2=80=AFPM Brian Padalino <bpadalino@gmail.co=
m> wrote:

> One more question regarding remote streaming.
>
> I have a block which has a single CHDR output, but 4 "output ports". I
> have an endpoint with 4 inputs.
>
> Am I able to stream my block outputs to different remote locations? When =
I
> try it, it just seems to want to stream to the same software endpoint and
> whatever the last configuration was written is used.
>
> I think this makes sense as looking through the HDL, it seems like each
> chdr_stream_endpoint can only address a single destination endpoint. So i=
f
> I want to use multiple remote streams at different remotes, I'd need to
> instantiate a single endpoint for each remote stream I want - right?
>
> Can this be confirmed?
>
> Thanks,
> Brian
>
> On Wed, May 21, 2025 at 3:23=E2=80=AFAM Martin Braun <martin.braun@ettus.=
com>
> wrote:
>
>>
>>
>> On Fri, May 16, 2025 at 10:18=E2=80=AFPM Brian Padalino <bpadalino@gmail=
.com>
>> wrote:
>>
>>> On the X440, I'd like my block to be able to output to both QSFP+ ports=
.
>>> I will be setting this up using remote streaming and I am wondering the
>>> appropriate way to set up my block to be able to output to both ports. =
From
>>> the little blurb on remote streaming here:
>>>
>>>   https://files.ettus.com/manual/page_stream.html#stream_remote
>>>
>>> I see that I can supply:
>>>
>>>   - dest_addr, dest_port, dest_mac_addr, adapter
>>>
>>> The example uses the MultiUSRP object but I am using straight RFNoC. I
>>> assume I need to do this for every stream that I might create, so for t=
he N
>>> ports that are on my block, I need N RX streams that define those value=
s,
>>> right?
>>>
>>
>> Yes, exactly.
>>
>>
>>> If I had 4 ports, and I wanted to split 2 ports on sfp0 and 2 on sfp1,
>>> I'd create the stream for all 4 then issue the stream command to each o=
ne
>>> and I should see the packets flow?
>>>
>>
>> That's right.
>>
>> --M
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000006f94db06385044bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Brian,</div><div><br></div><div>you are correct, =
this feature is not implemented. This is the purpose of the Virtual Channel=
 (VC) fields, but there is no=C2=A0software support for de-muxing the strea=
ms. We deprioritzed this over (many) other things for several reasons: Our =
internal usage of multi-channel SEPs is usually around multiple channels of=
 the radio or replay block, but a single SEP has a fixed bandwidth which we=
 would exceed, and therefore we need multiple SEPs anyway. And to be fair, =
there was not a lot of demand for this feature compared to other features. =
We can rebalance this priority evaluation based on this kind of feedback.</=
div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_=
quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 17, 2025=
 at 11:16=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.c=
om">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">One more question regarding remote =
streaming.<div><br></div><div>I have a block which has a single CHDR output=
, but 4 &quot;output ports&quot;. I have an endpoint with 4 inputs.</div><d=
iv><br></div><div>Am I able to stream my block outputs to different remote =
locations? When I try it, it just seems to want to stream to the same softw=
are endpoint and whatever the last configuration was written is used.</div>=
<div><br></div><div>I think this makes sense as looking through the HDL, it=
 seems like each chdr_stream_endpoint can only address a single destination=
 endpoint. So if I want to use multiple remote streams at different remotes=
, I&#39;d need to instantiate a single endpoint for each remote stream I wa=
nt - right?</div><div><br></div><div>Can this be confirmed?</div><div><br><=
/div><div>Thanks,</div><div>Brian</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 21, 2025 at 3:23=E2=80=
=AFAM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"=
_blank">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 May 16, 2025 at 10:18=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpad=
alino@gmail.com" target=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">On t=
he X440, I&#39;d like my block to be able to output to both QSFP+ ports. I =
will be setting this up using remote streaming and I am wondering the appro=
priate way to set up my block to be able to output to both ports. From the =
little blurb on remote streaming here:<div><br></div><div>=C2=A0=C2=A0<a hr=
ef=3D"https://files.ettus.com/manual/page_stream.html#stream_remote" target=
=3D"_blank">https://files.ettus.com/manual/page_stream.html#stream_remote</=
a></div><div><br></div><div>I see that I can supply:</div><div><br></div><d=
iv>=C2=A0 - dest_addr, dest_port, dest_mac_addr, adapter</div><div><br></di=
v><div>The example uses the MultiUSRP object but I am using straight RFNoC.=
 I assume I need to do this for every stream that I might create, so for th=
e N ports that are on my block, I need N RX=C2=A0streams that define those =
values, right?</div></div></blockquote><div><br></div><div>Yes, exactly.</d=
iv><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>If I had 4 ports, and I wanted to split 2 ports on sfp=
0 and 2 on sfp1, I&#39;d create the stream for all 4 then issue the stream =
command to each one and I should see the packets flow?</div></div></blockqu=
ote><div><br></div>That&#39;s right.</div><div class=3D"gmail_quote"><br></=
div><div class=3D"gmail_quote">--M</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000006f94db06385044bf--

--===============5761335378888216042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5761335378888216042==--
