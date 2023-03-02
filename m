Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9315C6A84CB
	for <lists+usrp-users@lfdr.de>; Thu,  2 Mar 2023 16:02:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7593D38471A
	for <lists+usrp-users@lfdr.de>; Thu,  2 Mar 2023 10:02:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677769346; bh=A+alwPujWIzv0DkxIbEKoRUyVZdXQcWRDdqar33iYo0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nLqBxM3YdeKhJH0Q5N4ed0m67D5jKBBaF6eSAnZvZg/SDW72UXE8AD6Mm3qOOCje2
	 ktdwXv9Yw3UB5IbsZ+Sby8frqH+YBrVUhVEwmEdRKOIPi0ko8Hf1lwdfyI2T+khLBL
	 in77iYQC2DWVhP+KgQSpzOXr154CxdTLUkoDxiOWdkpidqJIawBGcfYmzflthsazEt
	 s3fQmA7eQKubNvvLFyJ+AvwhHhPjq4cfBsoYPxVmFSu+KXLR+116wC5SKPU8RPftcj
	 3w2rAzoXW5aTAIIijqZsJPD8P6OYqI2J8zCPCEErFLpv2Wm3IU4VnattQXBIv/+sSu
	 xo6SkJXhWrjaw==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 8D44E383F92
	for <usrp-users@lists.ettus.com>; Thu,  2 Mar 2023 10:01:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Jys1tUf8";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id s11so4770106edy.8
        for <usrp-users@lists.ettus.com>; Thu, 02 Mar 2023 07:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hRbu+ewdjhMFE7yhfrvpXqlOQNvKZYexsB5Ih46EPg8=;
        b=Jys1tUf8QwwSieyCanqvSpCBLJfEtHl2eZJZf6OF45Qgy7zNLEGlVadmVTOJaYK0Le
         QR1s3scAMqiVBJgLcn6mjLbQc8TqwGLI3R8otu+qsNjxAvskT4nAl/LGgpH5o42vIJsX
         dgfNdAZY5gMASbdpS6oWvEbwRZWUpqhDGfqP0cyXeHq8Kmq2kkNxI/fqGJUWLAwi6Cpp
         2pj6a+p809Xy3d6fC312DdLK/pZdlulGiXvPEph6bxV+xtV4aZNEf0d68O0itMH7m6c2
         lizJP+j197JKmC+08V3vpsnFZUctXRPC1km9tyYvfIuBg0sP261BArBi24Qs2TJfB5PS
         4vNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hRbu+ewdjhMFE7yhfrvpXqlOQNvKZYexsB5Ih46EPg8=;
        b=RAHx4yDhj0SsG5x+C+++/XetC31fhdjg3b0DmPbQrrbLteO14UfGA8IFig/ht+Hy2w
         qqqJuw1826cL3RrWGVy1vAN38AHjXgu7tZ+oz1p96VhE4k+jyVauIzZSBF2nFUOJp6Sn
         uhN2yFbWH/7Hu8yV2V9906tgVV+00qmN/gVlrTjUkxEysggNUvZoGcX47gw5k6JGaOsq
         /tz76QsAHY64lYDOmXgcIChF8PfBhDwEkjU3pqcP2TKIMcepgcgIWxeF67oMfzPmUeRR
         VKEoyShItWat+LuPD/uU8hCItpGhy/g+Ghi36wSq+EDsXa9D8iL57+oluSEmzKdF9Qa/
         l4/w==
X-Gm-Message-State: AO0yUKV1QFRz6SS35fZYvxrnT7+XZ1I70eVzlQAXXMd45H/4+/+4J0/h
	aQu3dWueels1VhEdJWyr2kKt4ucJVlVZsKZEmHzE9w==
X-Google-Smtp-Source: AK7set/tpVE9gzgkg56s+rEr8F55elIN4kYXxYp6vqoEKktxcwVNi49jEu1T4v1x/k1CTAtUWSg0t7OBC+LFguRCf1s=
X-Received: by 2002:a17:906:817:b0:8e6:266c:c75e with SMTP id
 e23-20020a170906081700b008e6266cc75emr5435649ejd.14.1677769304079; Thu, 02
 Mar 2023 07:01:44 -0800 (PST)
MIME-Version: 1.0
References: <ecfUJzYOWRFc4mmXULyCzT5obcneZTHkCAPm94O5uI@lists.ettus.com>
In-Reply-To: <ecfUJzYOWRFc4mmXULyCzT5obcneZTHkCAPm94O5uI@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 2 Mar 2023 10:01:32 -0500
Message-ID: <CAB__hTSZ81Qg80JZi2KO7=8E-FOTP9YxPgbUkZ+yCVQuUhV6DQ@mail.gmail.com>
To: henry.powell.xx@gmail.com
Message-ID-Hash: 5SZ2FGFLHMONIF5YE4HH54MRZPFINQZQ
X-Message-ID-Hash: 5SZ2FGFLHMONIF5YE4HH54MRZPFINQZQ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5SZ2FGFLHMONIF5YE4HH54MRZPFINQZQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5123249140248834881=="

--===============5123249140248834881==
Content-Type: multipart/alternative; boundary="00000000000063019805f5ec1b6e"

--00000000000063019805f5ec1b6e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Henry,
Given that your main issue is that you get different results simply by
rotating your antenna 180 degree (and changing nothing else) and that if
you use a different transceiver, you get consistent results, I'm not sure
that the following will help. But, the following are some things I noticed
based on the code you sent.
Rob

   - I noticed that your analog signal is a 20kHz sine wave.  I don't know
   GR well, but I'm wondering if this is a complex or real signal. If real,
   then I assume that there is a spectral tone at both +/- 20kHz. Note that
   you could really just sent a constant (e.g., 1.0) rather than a sine wav=
e
   if you simply want a CW tone at your center frequency. Otherwise, you mi=
ght
   need a complex tone (exp(jwt)) if you want just a tone at +20kHz.
   - You might want to change your master_clock_rate to be double your
   sample rate so that the DDC/DUC can appropriately produce a desired LO
   offset. I believe that the master_clock_rate must be at least
   2*(lo_offset+sample_rate/2) in order to digitally shift the baseband
   signal.  (if the master_clock_rate is equal to the sample rate, then UHD=
 is
   likely ignoring your request for an LO offset)
   - You might want to use a bigger LO offset.  50 kHz is only about 5 FFT
   bins (fft bin size is ~ 10kHz).  If you change the master_clock_rate to =
20
   MHz, you could set the LO_offset to 1 MHz (if you want to see it in your
   spectrum) or perhaps 5 MHz (if you want to move it all the way to the ed=
ge
   of your spectrum).
   - You might want to set 'bw' as large as possible. I don't really know
   what the bandwidth setting does on the ad9361, but if it is a filter tha=
t
   is symmetric about the LO, you don't want it to clip your desired signal=
.





On Thu, Mar 2, 2023 at 5:17=E2=80=AFAM <henry.powell.xx@gmail.com> wrote:

> Addition:
>
> I think the problem is about LO leakage.
>
> I made 4 different experiment.
>
> First, I used just my B200 both receiver and transmitter and a specific
> location which is the difference between 0 and 180 degree of Horn antenna
> is 2,5dB.
>
> Second, I used just my B210 both receiver and transmitter at same locatio=
n
> with previous experiment, the difference is 0,7dB.
>
> Third, I used my B200 as receiver and B210 as transmitter at same locatio=
n
> with previous experiment, the difference is almost 0.
>
> Fourth, I used my B200 as transmitter and B210 as receiver at same
> location with previous experiment, the difference is 0,1dB ~ 0,2dB.
>
>
> And I take screenshot in GNU Radio, you can check this band.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000063019805f5ec1b6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Henry,</div><div>Given that your main issue i=
s that you get different results simply by rotating your antenna 180 degree=
 (and changing nothing else) and that if you use a different transceiver, y=
ou get consistent results, I&#39;m not sure that the following will help. B=
ut, the following are some things I noticed based on the code you sent.=C2=
=A0</div><div>Rob</div><ul><li>I noticed that your analog signal is a 20kHz=
 sine wave.=C2=A0 I don&#39;t know GR well, but I&#39;m wondering if this i=
s a complex or real signal. If real, then I assume that there is a spectral=
 tone at both=C2=A0+/- 20kHz. Note that you could really just sent a consta=
nt (e.g., 1.0) rather than a sine wave if you simply want a CW tone at your=
 center frequency. Otherwise, you might need a complex=C2=A0tone (exp(jwt))=
 if you want just a tone at=C2=A0+20kHz.</li><li>You might want to change y=
our master_clock_rate to be double your sample rate so that the DDC/DUC can=
 appropriately produce a desired LO offset. I believe that the master_clock=
_rate must be at least 2*(lo_offset+sample_rate/2) in order to digitally sh=
ift the baseband signal.=C2=A0 (if the master_clock_rate is equal to the sa=
mple rate, then UHD is likely ignoring your request for an LO offset)</li><=
li>You might want to use a bigger LO offset.=C2=A0 50 kHz is only about 5 F=
FT bins (fft bin size is ~ 10kHz).=C2=A0 If you change the master_clock_rat=
e to 20 MHz, you could set the LO_offset to 1 MHz (if you want to see it in=
 your spectrum) or perhaps 5 MHz (if you want to move it all the way to the=
 edge of your spectrum).=C2=A0=C2=A0</li><li>You might want to set &#39;bw&=
#39; as large as possible. I don&#39;t really know what the bandwidth setti=
ng does on the ad9361, but if it is a filter that is symmetric about the LO=
, you don&#39;t want it to clip your desired signal.</li></ul><div><br></di=
v></div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 2, 2023 at 5:17=E2=80=AFA=
M &lt;<a href=3D"mailto:henry.powell.xx@gmail.com">henry.powell.xx@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><p>Addition:</p><p>I think the problem is about LO leakage.</p><p>I made 4=
 different experiment.</p><p>First, I used just my B200 both receiver and t=
ransmitter and a specific location which is the difference between 0 and 18=
0 degree of Horn antenna is 2,5dB.</p><p>Second, I used just my B210 both r=
eceiver and transmitter at same location with previous experiment, the diff=
erence is 0,7dB.</p><p>Third, I used my B200 as receiver and B210 as transm=
itter at same location with previous experiment, the difference is almost 0=
.</p><p>Fourth, I used my B200 as transmitter and B210 as receiver at same =
location with previous experiment, the difference is 0,1dB ~ 0,2dB.</p><p><=
br></p><p>And I take screenshot in GNU Radio, you can check this band.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000063019805f5ec1b6e--

--===============5123249140248834881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5123249140248834881==--
