Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C042A78D00
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 13:24:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFEE5385B1D
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 07:24:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743593047; bh=l5CRWZ2/mvjOiBtr1gHC70zc3IfuzwFDoLBcAkFJzbs=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cFdaalQUMK/0iO1PU/honySghbcg794yzDb2jhGokMKGSSdS+iNE/3p6tWR3ceJeL
	 uFmBOwOWsADZReBTVaB2ANZz9WtM6z78CpGmP1WRtas8RiC/d9wG6ec2753YOeWOj7
	 fAWPc0qykhGFEe1W9qqbRM5w1knzk+fmIj4wqUTjF2TwkQ0dJJZzM2kFSOA7+CrVUh
	 6fX3jDeBFjsCJBClP28nZrXvXOZZhIHITbTbx/AJJN2xF8uGHhGqmIHm9IKWHHulwj
	 TVlrlMtCxJdjh0Nw1RBcOBqMi8wh5IEKrxxrGnjgO2+IZ47bhpZqYVAhnyAmkVo94V
	 lovkXBptF9ZCQ==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id EFFED38559A
	for <usrp-users@lists.ettus.com>; Wed,  2 Apr 2025 07:23:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="oZ2mBo8P";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5edc07c777eso6944263a12.3
        for <usrp-users@lists.ettus.com>; Wed, 02 Apr 2025 04:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1743592997; x=1744197797; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ns0ty5bPAU1ea57Y6P2ONUE2mq64JLMHWu9qtE9xF+8=;
        b=oZ2mBo8PWZ1DVUdN+BZa6lm9OQWejDv5JOcN58hmb+v0UK9KCNHm/YIHAhyS5QYASB
         dS40qCBS1R2vaQ0VSwj+CgGQdpBjO9OVUHniiyEjC6WnZaVRJArTNxd3DoxVI6Vldqyb
         0Md1Gi/6r8bEY7K4fvgmNbqOZyk17vXTS81ZwksB38H4uLThl2KVGp7eJkXzcOk/bpiS
         pJXxAYMUyhKF6TvTGMmshmhRGKounsE1TUrbARqh37h351Dsjjdsw4nygBzDcPW+JE4Z
         4Sj3wUgEoUUQyybfDZvnIDp9Pu/NIghc1tqUnOtvguJPTlbhlKTELhXkvbgEaQFo/QUu
         UJsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743592997; x=1744197797;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ns0ty5bPAU1ea57Y6P2ONUE2mq64JLMHWu9qtE9xF+8=;
        b=SXz39hfxEAFdurSltge+zU797a6eF3fiAY/iqcJJSPi51UOHg4SuI/TIsTOFG795Vo
         xZqFAi4EA7lHQRnXtnjppUeUiHR4lo+vQIivAWrFwO/SUHAi69d9fBIdmTx/HFN/Beje
         OHoQyC+G3+teu5rBt8JsCsztbmahDD8czZg/xj7lZYcpw0HorexktSoQrv77U828CYsd
         KF4xbIJWHnYreDCnx17KTeq7dz08tDY5hNjh9wlbUrFkx+RJjVNIQWAd//z1AV1oS9IJ
         SQdKLCtIK27wjGkxn1SSLdBGJ+6A8y7o6rFSwCVteqIi4GvOC7sKE6xvX6rshkocE6T9
         hw3w==
X-Gm-Message-State: AOJu0YzB0djtoP8GdwD4+L3M/KVEDaw22kjyiBF9+7i1ts1zsW9fqZ1/
	FcC5+zFympdYOKEWqiOwCGsPO47CVMHydulYJ2OSwQfxHJv0xGn4rBYztj0RxRcBoLqGQUyodz/
	QxwiaAJEBv5Y5hpZbE0cAPKefMvV29d1zIBzu12RnGAebpYjmw8c=
X-Gm-Gg: ASbGncuw0lIw+6YnHqPRH+rgbNM4G4eq6Jr3Yklx5aINc0uXlfkl+orvavNHKyvLrbH
	KK787yed+o/hgQHKq40UYJ9P+eL/D4sm+V+p/JTqvt3qMoyPh/hwIn6T93+/rEFvWKJPzmnQFps
	BWcMYQhQ1GkiHh+yKgvJ+qyQP+3MG48RpXd9Cyl7zFttyN7/TAHuvbg1CKfU0B6GHQ5mbY
X-Google-Smtp-Source: AGHT+IEYF1MiCMPziWYK0ZD3ioAmwGV4S6f5xJyEDxdEuELkZ68t51aE8TIY994mDOmgKO2nQsMQzrYq/R0JTGppLic=
X-Received: by 2002:a17:907:2d8a:b0:abf:6b14:6cfb with SMTP id
 a640c23a62f3a-ac7a166da7fmr160823666b.5.1743592996621; Wed, 02 Apr 2025
 04:23:16 -0700 (PDT)
MIME-Version: 1.0
References: <buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg@lists.ettus.com>
 <ebed1fe1-d487-4bf9-8bab-d7ec29ca910b@gmail.com> <CAB__hTR-jqCpJvkto9QFfCt1HSeJtU8RuH08tRR_4sjwDuyQWg@mail.gmail.com>
 <0f97d540-bbd9-4a40-b457-9f3d9adbe6bf@gmail.com> <CAB__hTSqPprXavsx1D6XY4CYuwyj8utogLo4t2wNJ8AbMz=vCA@mail.gmail.com>
In-Reply-To: <CAB__hTSqPprXavsx1D6XY4CYuwyj8utogLo4t2wNJ8AbMz=vCA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 2 Apr 2025 13:23:05 +0200
X-Gm-Features: AQ5f1JpRQ8jdfQ04Hr8O0aBua6BQmDDK5X6plKpjCHc_ZZa75fq60vkNPLB0Fzg
Message-ID: <CAFOi1A40evxO0LVHK2uu2iGYpnOEgmreQonX38Sa_P9c21cnAA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 34QZAPU2CYM2RP67WBQPS6D3QJCZZ6W5
X-Message-ID-Hash: 34QZAPU2CYM2RP67WBQPS6D3QJCZZ6W5
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X310] set_command_time introduces unexpected delay dependent on sampling rate.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/34QZAPU2CYM2RP67WBQPS6D3QJCZZ6W5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5597486973260501716=="

--===============5597486973260501716==
Content-Type: multipart/alternative; boundary="0000000000003267e30631c9e1bf"

--0000000000003267e30631c9e1bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The time stamp resolution (or time stamp timebase) is always the master
clock rate. On X310, unless you tell it something else, that's 200MHz.

Let's craft an example: Let's say you receive 2000 samples contiguously, at
100 samples per packet (that's 20 packets total). Let's say that the 0-th
packet has timestamp t_0, and the 10-th packet has timestamp t_1, so that
t_1 =3D t_0 + 1000/200MHz.
Also assume the DDC is decimating by 10. (Note the packet sizes are not
realistic, but let me do easy math here).


The output of the DDC will produce 2 packets. The first packet will be
timestamped t_0, and the second packet will be timestamped t_1. The first
output packet will approximately hold the content from the first 10 input
packets, and the second output packet will approximately hold the content
of the 11-20th input packet.

However, the timestamping etc. does not account for any group delays. Like
Marcus says, we have filters for anti-aliasing. We have half-band filters
with 47 taps (so, 23 samples group delay) and CIC filters with variable
decimation (I don't know the group delay of the top off my head). When you
decimate, the visible group delay gets reduced of course by the decimation.
But let's say you're decimating by 4, then that means you have 2 half-bands
and a decimation of four, that will give you approx. 23 samples delay.

(I always embarrass myself when doing math on the fly, so don't believe the
exact numbers without doing the math yourself).

It would be possible to also adjust timestamps. In GNU Radio, we have the
"declare_sample_delay()" API which helps moving stream tags to the right
position. However, there's no "correct" answer here if we really should
modify timestamps, so we go with the simplest solution and don't.


Side note: If you run the capture at full rate (200Msps) then this will not
occur. However, there may still be some fixed, residual delay. This is
something that the application needs to handle appropriately.

--M



On Wed, Mar 26, 2025 at 6:57=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
>
> On Wed, Mar 26, 2025 at 12:32=E2=80=AFPM Marcus D. Leech <patchvonbraun@g=
mail.com>
> wrote:
>
>> On 26/03/2025 12:09, Rob Kossler wrote:
>>
>>
>>
>>
>> Hi Marcus,
>> I think that the gain is set from the "radio" block which operates at th=
e
>> master clock rate rather than the downconverted rate.  It doesn't make
>> sense to me why the latency of the gain setting would be related to the
>> downconverted sample rate.
>> Rob
>>
>>
>> Let us ignore for a moment the gain-setting hardware on the radio.  Let'=
s
>> pretend that some noticeable signal parameter,
>>   as seen at the antenna plane, changes suddenly--like the signal level
>> comes up by 5dB.  How long before that effect is
>>   actually seen in the sample stream?  That will depend on the (very
>> small) group delay in the analog hardware, and the delay
>>   in the DDC filters, which DOES scale with sample-rate, because
>> different filters are switched-in depending on the commanded
>>   sample rate, and those filters have non-zero length...
>>
>> True. But if the comparison is between the gain setting time stamp and
> the Rx samples time stamp (inserted at the radio) it still seems that it
> would be sample rate independent (with the caveat that the time stamp
> resolution may have to change to the decimated sample rate with some type
> of quantization)
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003267e30631c9e1bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The time stamp resolution (or time stamp timebase) is=
 always the master clock rate. On X310, unless you tell it something else, =
that&#39;s 200MHz.</div><div><br></div><div>Let&#39;s craft an example: Let=
&#39;s say you receive 2000 samples contiguously, at 100 samples per packet=
 (that&#39;s 20 packets total). Let&#39;s say that the 0-th packet has time=
stamp t_0, and the 10-th packet has timestamp t_1, so that t_1 =3D t_0 + 10=
00/200MHz.</div><div>Also assume the DDC is decimating by 10. (Note the pac=
ket sizes are not realistic, but let me do easy math here).</div><div><br><=
/div><div><br></div><div>The output of the DDC will produce 2 packets. The =
first packet will be timestamped t_0, and the second packet will be timesta=
mped t_1. The first output packet will approximately hold the content from =
the first 10 input packets, and the second output packet will approximately=
 hold the content of the 11-20th input packet.</div><div><br></div><div>How=
ever, the timestamping etc. does not account for any group delays. Like Mar=
cus says, we have filters for anti-aliasing. We have half-band filters with=
 47 taps (so, 23 samples group delay) and CIC filters with variable decimat=
ion (I don&#39;t know the group delay of the top off my head). When you dec=
imate, the visible group delay gets reduced of course by the decimation. Bu=
t let&#39;s say you&#39;re decimating by 4, then that means you have 2 half=
-bands and a decimation of four, that will give you approx. 23 samples dela=
y.</div><div><br></div><div>(I always embarrass myself when doing math on t=
he fly, so don&#39;t believe the exact numbers without doing the math yours=
elf).</div><div><br></div><div>It would be possible to also adjust timestam=
ps. In GNU Radio, we have the &quot;declare_sample_delay()&quot; API which =
helps moving stream tags to the right position. However, there&#39;s no &qu=
ot;correct&quot; answer here if we really should modify timestamps, so we g=
o with the simplest solution and don&#39;t.</div><div><br></div><div><br></=
div><div>Side note: If you run the capture at full rate (200Msps) then this=
 will not occur. However, there may still be some fixed, residual delay. Th=
is is something that the application needs to handle appropriately.</div><d=
iv><br></div><div>--M</div><div><br></div><div><br></div></div><br><div cla=
ss=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Mar 26, 2025 at 6:57=E2=80=AFPM Rob Kossler via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 26, 2025 at 12:32=E2=80=AFPM=
 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_=
blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 26/03/2025 12:09, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr"><br>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>Hi Marcus,</div>
          <div>I think that the gain is set from the &quot;radio&quot; bloc=
k which
            operates at the master clock rate rather than the
            downconverted rate.=C2=A0 It doesn&#39;t make sense to me why t=
he
            latency of the gain setting would be related to the
            downconverted sample rate.</div>
          <div>Rob</div>
          <div>=C2=A0</div>
        </div>
      </div>
    </blockquote>
    Let us ignore for a moment the gain-setting hardware on the radio.=C2=
=A0
    Let&#39;s pretend that some noticeable signal parameter,<br>
    =C2=A0 as seen at the antenna plane, changes suddenly--like the signal
    level comes up by 5dB.=C2=A0 How long before that effect is<br>
    =C2=A0 actually seen in the sample stream?=C2=A0 That will depend on th=
e (very
    small) group delay in the analog hardware, and the delay<br>
    =C2=A0 in the DDC filters, which DOES scale with sample-rate, because
    different filters are switched-in depending on the commanded<br>
    =C2=A0 sample rate, and those filters have non-zero length...<br>
    <br></div></blockquote><div>True. But if the comparison is between the =
gain setting time stamp and the Rx samples time stamp (inserted at the radi=
o) it still seems that it would be sample rate independent (with the caveat=
 that the time stamp resolution may have to change to the decimated sample =
rate with some type of quantization)</div><div><br></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003267e30631c9e1bf--

--===============5597486973260501716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5597486973260501716==--
