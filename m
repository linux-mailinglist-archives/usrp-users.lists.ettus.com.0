Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7A59637FB
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2024 03:49:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46F933855DE
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 21:49:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724896177; bh=tmibukloik0SF+CUJ/nA3uWeE0jVn9mbWRb0m4/n0cA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BY/ZtHYTTd+D2eE5KysMgAzlQdBt8bBy9yJNYHVYWemNTDqhMgdY7qBb8IjMabw3e
	 2/gQejT5W6e4eXe9E69sIsVbn6Cr8FliUPUIk2mwfK8XpUp/cfnf+wG/No0P+sVdPM
	 VbEI4TSPhos6xI5tN3TeKbcO4v/peuKbOd7ByEc9DoAEBBek9SV05QeMjD8nCAvvyV
	 sh5hgBgKXXrfd1nGGds5kQb1865YD71KBx/Ug0DQwAK4mtMGQTtGwFaOpdJuqcTGzh
	 C49pNA6ozmoKIbuYPaUQLASttYPirW8A+7+npvOMlJP1LKQRX0cUmDOE06qurMgilH
	 3gmNOMQIM1o4w==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A35B3855DE
	for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 21:48:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k9oygiol";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7a80511d124so6407285a.1
        for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 18:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724896119; x=1725500919; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VaoRUqgkSrbygqHXg2K2xohS6aLwcsRYhiS7R/fO5Zk=;
        b=k9oygioltTGOL7MFjkGA/mifnxkDF8pYtwtAcYXh90qOPTJXKaNAQ54am97wq30EOr
         bcaFZB6tLBUBwjBsvB+4W6jYgH9ROz6U9SXeYtNWqj+XnpafZ4LIEK6bkgPmDQa9Zs8b
         /5bFe292GaZCZhImHrT9BkZQ9jkt1vUsdYjcOaRdVTkASv9t2O2Nf6r4L4p0n5kiSv/N
         4lHGpIh6XdpTQKZeTvGo3FMp3qecCuvc3tAKBvFH3Jjsnr06p+HBW/subiDWL1ieygw+
         zwNO9uyWKz75niC09Cq++hPfcWQODBWYiLPICvGQycpCKXpGh/A7C9kg9aoVD95s5be0
         +kRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724896119; x=1725500919;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VaoRUqgkSrbygqHXg2K2xohS6aLwcsRYhiS7R/fO5Zk=;
        b=BLWp0y9o9C03MKhSXgYOGqXeXRNbEw7qzTjGkckip1Yx/rgDhg0Il2wgvKhUsOg4mz
         vRFzts/wmdz5Mi5AdTyB0bPYjjwlGecsHdpavcd+rv/f8/t74aXbDQk7171lkBoexIA9
         enHUPZOQVn1x0rz/bPaiSrTXN+cClPj1Tvf8L2S49IVEDpurct67MZthiACWzIs0Eeou
         ICdyC6eFFhcsGFVzxoF810JfkaIl0XUpcqEJn5Fy6XPxPt2IWOOi2ecc42aNCckpa6NF
         Ep+tRvVPOmPCd99VFJJVA/ol1ANKQQ7kVVrZuIXtK4l+Go2u5VcmKTrL+2yHllKWR9h4
         NVXg==
X-Gm-Message-State: AOJu0YxomiMTDQ1nsi7gbKyhbyLNDi/SPmbc9gqCBLb/jL1gEJCMwZjf
	UXteC633/giKN1bKiTwkEEO0Ws5udKO0KVclAY0fmRKarxgfdoHBB7cn/A==
X-Google-Smtp-Source: AGHT+IHRninDreBwtWIMaogZnJFmakD+1XXetgG5d/YwfrRiSjAIcYtbyRpv0pkSwpJN3B25p2jhUw==
X-Received: by 2002:a05:620a:424e:b0:7a2:e6c:422b with SMTP id af79cd13be357-7a8041afc51mr117532485a.24.1724896119046;
        Wed, 28 Aug 2024 18:48:39 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7a806d83a18sm11578185a.128.2024.08.28.18.48.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2024 18:48:38 -0700 (PDT)
Message-ID: <ea06979f-87c6-44dd-b768-676aa783ef08@gmail.com>
Date: Wed, 28 Aug 2024 21:48:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAOYGa72XPJnAFtD40sKpLFPnJf+627G49SgRmMPRPt9a79+U2Q@mail.gmail.com>
 <0bd53570-3d91-497f-ba4e-6c1df0ce87f1@gmail.com>
 <CAOYGa70FL9bHH6UR8u7WVZVoN4Nb8DA3KnsmHJrbJ2f2RCovPQ@mail.gmail.com>
 <f1245e53-00e4-47c4-9e22-41f3ec8516e3@comcast.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <f1245e53-00e4-47c4-9e22-41f3ec8516e3@comcast.net>
Message-ID-Hash: LOD6THIAXG52EQ57KV2DSVOQCLNLVKYA
X-Message-ID-Hash: LOD6THIAXG52EQ57KV2DSVOQCLNLVKYA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Noise Figure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LOD6THIAXG52EQ57KV2DSVOQCLNLVKYA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0900011392106467666=="

This is a multi-part message in MIME format.
--===============0900011392106467666==
Content-Type: multipart/alternative;
 boundary="------------Sl5hYEP6Xgk0q0csEakWzET0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Sl5hYEP6Xgk0q0csEakWzET0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 28/08/2024 19:36, Ron Economos via USRP-users wrote:
>
> Here's an article that may help with your NF calculations.
>
> "Calculating noise figure and third-order intercept in ADCs"
>
> https://www.ti.com/lit/an/slyt090/slyt090.pdf
>
> I wrote a little C program from it.
>
> #include <stdio.h>
> #include <stdlib.h>
> #include <math.h>
>
> int main(int argc, char **argv)
> {
> =C2=A0=C2=A0=C2=A0 double=C2=A0=C2=A0 k, t, dBm1Hz, dBm500Hz;
> =C2=A0=C2=A0=C2=A0 double=C2=A0=C2=A0 vpp, p, sinad, rate, VdBm, dBHz, =
dBmHz;
>
> =C2=A0=C2=A0=C2=A0 if (argc !=3D 4) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fprintf(stderr, "usage: bdr =
<p-p voltage> <sinad> <sample=20
> rate>\n");
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 exit(-1);
> =C2=A0=C2=A0=C2=A0 }
>
> =C2=A0=C2=A0=C2=A0 vpp =3D atof(argv[1]);
> =C2=A0=C2=A0=C2=A0 sinad =3D atof(argv[2]);
> =C2=A0=C2=A0=C2=A0 rate =3D atof(argv[3]);
>
> =C2=A0=C2=A0=C2=A0 k =3D 1.38064852e-23;
> =C2=A0=C2=A0=C2=A0 t =3D 290.0;
> =C2=A0=C2=A0=C2=A0 p =3D k * t * 1 * 1000.0;
> =C2=A0=C2=A0=C2=A0 dBm1Hz =3D 10.0 * log10(p);
> =C2=A0=C2=A0=C2=A0 p =3D k * t * 500 * 1000.0;
> =C2=A0=C2=A0=C2=A0 dBm500Hz =3D 10.0 * log10(p);
>
> =C2=A0=C2=A0=C2=A0 p =3D (vpp * vpp) / (50 * 8);
> =C2=A0=C2=A0=C2=A0 VdBm =3D (10.0 * log10(p)) + 30;
> =C2=A0=C2=A0=C2=A0 dBHz =3D 10.0 * log10(rate / 2);
> =C2=A0=C2=A0=C2=A0 dBmHz =3D (VdBm - 1) - sinad - dBHz;
> =C2=A0=C2=A0=C2=A0 printf("overload =3D %.2f dBm\n", VdBm);
> =C2=A0=C2=A0=C2=A0 printf("Noise Figure =3D %.2f dB, %.2f dBm/Hz\n", dB=
mHz - dBm1Hz,=20
> dBmHz);
> =C2=A0=C2=A0=C2=A0 printf("MDS in 500 Hz bandwidth =3D %.2f dBm\n", dBm=
500Hz + (dBmHz -=20
> dBm1Hz));
> =C2=A0=C2=A0=C2=A0 printf("500 Hz Dynamic Range =3D %.2f dB\n", VdBm - =
(dBm500Hz +=20
> (dBmHz - dBm1Hz)));
> =C2=A0=C2=A0=C2=A0 return 0;
> }
>
> Ron
>
Before getopt(), before dinosaurs, there was raw processing of argv[],=20
like a boss :) :)

You and I must be of a similar era :)

Actually, I learned C before <stdio.h> even existed.=C2=A0 That was a "mo=
dern=20
luxury" when I started using it :)


> On 8/28/24 15:36, Steve Hamn wrote:
>> Hi Marcus,
>>
>> Thanks. Understood, that all makes sense to me. Part of this is I'm=20
>> trying to understand the base Noise Figure as a starting point so I=20
>> can design my filtered low noise front end as you suggest.
>>
>> I guess you're confirming that 36.5dB is expected from the X440 and=20
>> there's nothing crazy wrong about my math.
>>
>> Thanks,
>>
>> Steve
>>
>> On Wed, Aug 28, 2024, 3:15 PM Marcus D. Leech=20
>> <patchvonbraun@gmail.com> wrote:
>>
>>     On 28/08/2024 18:04, Steve Hamn wrote:
>>     > Hello,
>>     >
>>     > I have been trying to estimate the Noise Figure of the X440. I
>>     looked
>>     > through all the documentation I could find and couldn't find it
>>     > anywhere, so I tried to calculate it myself.
>>     >
>>     > It looks like the ZU2xDR RFSoC has a NSD of -146dBFS/Hz @ 2.4GHz
>>     >
>>     (https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-=
ADC-Performance-Characteristics)
>>
>>     > and the Full Scale Input is 1Vppd (0.707Vrms) @ 100ohms
>>     >
>>     (https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-=
ADC-Electrical-Characteristics)
>>
>>     > .
>>     >
>>     > Based on this information I calculate NSD of -139dBm/Hz
>>     [-146dBFS/Hz +
>>     > 10log10(0.707^2/100=CE=A9*1000)], so -139dBm/Hz - -174dBm/Hz giv=
es
>>     Noise
>>     > Figure of 35dB? Add the 1.5 insertion loss of the TCM2-63WX+ on
>>     the
>>     > Daughterboard (https://files.ettus.com/manual/page_fbx.html),
>>     gives an
>>     > approximate noise figure of the X440 at 36.5dB for 2.4GHz.
>>     >
>>     > Is this correct? Seems high, I don't have much experience
>>     calculating
>>     > noise figure from ADC's so I'm wondering if I'm missing somethin=
g.
>>     >
>>     > Thanks,
>>     >
>>     > Steve
>>     >
>>     >
>>     "Naked" ADCs are inherently very very noisy devices. Since the
>>     X440 has
>>     no RF pre-processing of any importance, you'd at
>>     =C2=A0=C2=A0 least need a low-noise filtered front-end to beat the=
 inherent
>>     ADC
>>     noise into insignificance.=C2=A0=C2=A0=C2=A0 For other USRP radios=
, mostly,
>>     =C2=A0=C2=A0 that's already taken care of, and the receiver noise-=
figure is
>>     much
>>     more "respectable"=C2=A0 (not, radio astronomy respectable,
>>     =C2=A0=C2=A0 but adequate to put onto an over-the-air antenna).
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------Sl5hYEP6Xgk0q0csEakWzET0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 28/08/2024 19:36, Ron Economos via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:f1245e53-00e4-47c4-9e22-41f3ec8516e3@comcast.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Here's an article that may help with your NF calculations.</p>
      <p>"Calculating noise figure and third-order intercept in ADCs"<br>
      </p>
      <p><a class=3D"moz-txt-link-freetext"
          href=3D"https://www.ti.com/lit/an/slyt090/slyt090.pdf"
          moz-do-not-send=3D"true">https://www.ti.com/lit/an/slyt090/slyt=
090.pdf</a></p>
      <p>I wrote a little C program from it.<br>
      </p>
      <p>#include &lt;stdio.h&gt;<br>
        #include &lt;stdlib.h&gt;<br>
        #include &lt;math.h&gt;<br>
        <br>
        int main(int argc, char **argv)<br>
        {<br>
        =C2=A0=C2=A0=C2=A0 double=C2=A0=C2=A0 k, t, dBm1Hz, dBm500Hz;<br>
        =C2=A0=C2=A0=C2=A0 double=C2=A0=C2=A0 vpp, p, sinad, rate, VdBm, =
dBHz, dBmHz;<br>
        <br>
        =C2=A0=C2=A0=C2=A0 if (argc !=3D 4) {<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fprintf(stderr, "usage=
: bdr &lt;p-p voltage&gt;
        &lt;sinad&gt; &lt;sample rate&gt;\n");<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 exit(-1);<br>
        =C2=A0=C2=A0=C2=A0 }<br>
        <br>
        =C2=A0=C2=A0=C2=A0 vpp =3D atof(argv[1]);<br>
        =C2=A0=C2=A0=C2=A0 sinad =3D atof(argv[2]);<br>
        =C2=A0=C2=A0=C2=A0 rate =3D atof(argv[3]);<br>
        <br>
        =C2=A0=C2=A0=C2=A0 k =3D 1.38064852e-23;<br>
        =C2=A0=C2=A0=C2=A0 t =3D 290.0;<br>
        =C2=A0=C2=A0=C2=A0 p =3D k * t * 1 * 1000.0;<br>
        =C2=A0=C2=A0=C2=A0 dBm1Hz =3D 10.0 * log10(p);<br>
        =C2=A0=C2=A0=C2=A0 p =3D k * t * 500 * 1000.0;<br>
        =C2=A0=C2=A0=C2=A0 dBm500Hz =3D 10.0 * log10(p);<br>
        <br>
        =C2=A0=C2=A0=C2=A0 p =3D (vpp * vpp) / (50 * 8);<br>
        =C2=A0=C2=A0=C2=A0 VdBm =3D (10.0 * log10(p)) + 30;<br>
        =C2=A0=C2=A0=C2=A0 dBHz =3D 10.0 * log10(rate / 2);<br>
        =C2=A0=C2=A0=C2=A0 dBmHz =3D (VdBm - 1) - sinad - dBHz;<br>
        =C2=A0=C2=A0=C2=A0 printf("overload =3D %.2f dBm\n", VdBm);<br>
        =C2=A0=C2=A0=C2=A0 printf("Noise Figure =3D %.2f dB, %.2f dBm/Hz\=
n", dBmHz -
        dBm1Hz, dBmHz);<br>
        =C2=A0=C2=A0=C2=A0 printf("MDS in 500 Hz bandwidth =3D %.2f dBm\n=
", dBm500Hz +
        (dBmHz - dBm1Hz));<br>
        =C2=A0=C2=A0=C2=A0 printf("500 Hz Dynamic Range =3D %.2f dB\n", V=
dBm - (dBm500Hz
        + (dBmHz - dBm1Hz)));<br>
        =C2=A0=C2=A0=C2=A0 return 0;<br>
        }<br>
      </p>
      <p>Ron<br>
      </p>
    </blockquote>
    Before getopt(), before dinosaurs, there was raw processing of
    argv[], like a boss :) :)<br>
    <br>
    You and I must be of a similar era :)<br>
    <br>
    Actually, I learned C before &lt;stdio.h&gt; even existed.=C2=A0 That=
 was
    a "modern luxury" when I started using it :)<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:f1245e53-00e4-47c4-9e22-41f3ec8516e3@comcast.net">
      <p> </p>
      <div class=3D"moz-cite-prefix">On 8/28/24 15:36, Steve Hamn wrote:<=
br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:CAOYGa70FL9bHH6UR8u7WVZVoN4Nb8DA3KnsmHJrbJ2f2RCovPQ@mail.gmai=
l.com">
        <meta http-equiv=3D"content-type"
          content=3D"text/html; charset=3DUTF-8">
        <div dir=3D"auto">
          <div>Hi Marcus,</div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">Thanks. Understood, that all makes sense to
            me. Part of this is I'm trying to understand the base Noise
            Figure as a starting point so I can design my filtered low
            noise front end as you suggest.</div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">I guess you're confirming that 36.5dB is
            expected from the X440 and there's nothing crazy wrong about
            my math.</div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">Thanks,</div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">Steve</div>
          <div dir=3D"auto"><br>
            <div class=3D"gmail_quote" dir=3D"auto">
              <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 28, 2024,
                3:15 PM Marcus D. Leech &lt;<a
                  href=3D"mailto:patchvonbraun@gmail.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">patchvonbraun@gmail.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">O=
n
                28/08/2024 18:04, Steve Hamn wrote:<br>
                &gt; Hello,<br>
                &gt;<br>
                &gt; I have been trying to estimate the Noise Figure of
                the X440. I looked <br>
                &gt; through all the documentation I could find and
                couldn't find it <br>
                &gt; anywhere, so I tried to calculate it myself.<br>
                &gt;<br>
                &gt; It looks like the ZU2xDR RFSoC has a NSD of
                -146dBFS/Hz @ 2.4GHz <br>
                &gt; (<a
href=3D"https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-=
ADC-Performance-Characteristics"
                  rel=3D"noreferrer noreferrer" target=3D"_blank"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-Pe=
rformance-Characteristics</a>)
                <br>
                &gt; and the Full Scale Input is 1Vppd (0.707Vrms) @
                100ohms <br>
                &gt; (<a
href=3D"https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-=
ADC-Electrical-Characteristics"
                  rel=3D"noreferrer noreferrer" target=3D"_blank"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-El=
ectrical-Characteristics</a>)
                <br>
                &gt; .<br>
                &gt;<br>
                &gt; Based on this information I calculate NSD of
                -139dBm/Hz [-146dBFS/Hz + <br>
                &gt; 10log10(0.707^2/100=CE=A9*1000)], so -139dBm/Hz -
                -174dBm/Hz gives Noise <br>
                &gt; Figure of 35dB? Add the 1.5 insertion loss of the
                TCM2-63WX+ on the <br>
                &gt; Daughterboard (<a
                  href=3D"https://files.ettus.com/manual/page_fbx.html"
                  rel=3D"noreferrer noreferrer" target=3D"_blank"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">https://files.ettus.com/manual/page_fbx.html</a>),
                gives an <br>
                &gt; approximate noise figure of the X440 at 36.5dB for
                2.4GHz.<br>
                &gt;<br>
                &gt; Is this correct? Seems high, I don't have much
                experience calculating <br>
                &gt; noise figure from ADC's so I'm wondering if I'm
                missing something.<br>
                &gt;<br>
                &gt; Thanks,<br>
                &gt;<br>
                &gt; Steve<br>
                &gt;<br>
                &gt;<br>
                "Naked" ADCs are inherently very very noisy devices.=C2=A0
                Since the X440 has <br>
                no RF pre-processing of any importance, you'd at<br>
                =C2=A0=C2=A0 least need a low-noise filtered front-end to=
 beat the
                inherent ADC <br>
                noise into insignificance.=C2=A0=C2=A0=C2=A0 For other US=
RP radios,
                mostly,<br>
                =C2=A0=C2=A0 that's already taken care of, and the receiv=
er
                noise-figure is much <br>
                more "respectable"=C2=A0 (not, radio astronomy respectabl=
e,<br>
                =C2=A0=C2=A0 but adequate to put onto an over-the-air ant=
enna).<br>
                <br>
                <br>
                _______________________________________________<br>
                USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" rel=3D"noreferrer"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a><br>
                To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" rel=3D"noreferrer"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users-leave@lists.ettus.com</a><br>
              </blockquote>
            </div>
          </div>
        </div>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"tru=
e">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users-leave@lists.ettus.com"
        moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------Sl5hYEP6Xgk0q0csEakWzET0--

--===============0900011392106467666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0900011392106467666==--
