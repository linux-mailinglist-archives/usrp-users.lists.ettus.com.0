Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2D789F41A
	for <lists+usrp-users@lfdr.de>; Wed, 10 Apr 2024 15:24:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3283C384E05
	for <lists+usrp-users@lfdr.de>; Wed, 10 Apr 2024 09:24:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1712755491; bh=1tXzK5LakhvTvoBY+Gte49vglBLwlUqKHC3/VPFoQ+I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=S/+rOShveaRQBM4WHMosnLNneTRRBLOquQI5bXTg6KcU66EWGn6PaAx96J3873S+U
	 4Rb/cyJskYNpHWMsYvVc38d/fZD965dNXsloUjfBJujCkkuA6vjOcZiKeIZUqjnAua
	 /rS47F/ajIpmie12WknZJT4rgid/dZgsbmNuGpIsFWqbCU446edG+QnAobTeSJOWGW
	 r7PIangqOI/w4E3xvn+bEBUumbNQMh4WefCpXkYMcGbRNyrPbtFDHgfzbdKXH9SGke
	 l4JU+8qLE9iW4Hs+hzoGCpzn6DMikcLWTBJr2tAdd3ubOkko6ZtWF9hUEZXjg8r5aF
	 iv06mbw/ayLlA==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 90F8B384866
	for <usrp-users@lists.ettus.com>; Wed, 10 Apr 2024 09:24:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BHNu5Xif";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-4346e50ef62so34487591cf.1
        for <usrp-users@lists.ettus.com>; Wed, 10 Apr 2024 06:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712755483; x=1713360283; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=irMxvkeP1rjeSZbHUYbIpudfT9bc1bZXu4xCU2qCNig=;
        b=BHNu5XifYFN3GJwBZbda+9ShtLB+4yQVf+fslJ/Dcmso0Pj5Q1LfngTxGXrD4yn9w4
         iFuHjaLxC9hNYNJ8bYuRCvyGIBLhv+b45FZ864sJK5FbfkBPic3z5pgxhW2FYvDgm6bJ
         rcQPsffxTbmzY4y4hKmPQA8ETW+H/MAk5+bE2PBIAD4+KSjuvIckhJdCoMNgv1m6ZeAy
         NOFEy7IpKWXqwuOlMemVrxnAkFU1oicuHhH7+rpkK3fRQoCSgJJRb0Sy4hTSRXKZPtRn
         gbWJnpgtq68/HP047fiTyHhg0fcpIZyds/AZDbgSNv083VC/TZ1X1raHXhxf6C1ldjjL
         OSbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712755483; x=1713360283;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=irMxvkeP1rjeSZbHUYbIpudfT9bc1bZXu4xCU2qCNig=;
        b=s4lfQi6SkRNBFvq+izzKG46LOK+UJlfZbfTtxYhJbpa29DtX8wA4X7k7D8EPdvrGSX
         uETgeag2UKA97AfoNiUNFTH82PkwTE6Y02uKdqKQyKePy+h89XJsk5Xt7fvqEBlNQpi1
         7dHfTfyLtPkZN6+2iKFCApxw/VUxTLBwBed6e4PHrFwzH25T9fR0VQgnU2bC7qJOrzVV
         cF+4aAUfgRo9QRKlWfVSx0OMFzg8ypGBxjlSVoNr0br3z57cJFRcVgzzona3cVoT3SpN
         ZUop8wGnRaLvoyxcRqMQi/w1wxIKrLI5blHoCfgoeVHVNS0we2eepdTAVzFHDcNa2BBU
         HVPA==
X-Forwarded-Encrypted: i=1; AJvYcCX/JXNaf2MNyevUTbRH5BCfYgWcale3NzpOtmv6bd6WiUa09zkeSjFEpcTcDOupkGM16lbOytMSZLqq2sYWs2cLJ7GKH36kPI0nyg==
X-Gm-Message-State: AOJu0YwunJCFrp3SKdA3nbGbRE99YxtlAiK4EMDm0hYd5PQsqHJV6Ykz
	TwZTX7E2oiFRSKqjGt97tyOrp+2czrPAaYK6/4y9/rGrKLFDzDc6
X-Google-Smtp-Source: AGHT+IH4zYatTLVZkXET38XtiYLYg5zN/j9s5/xzFm9nzZQSrOb2VMGUlOURSiqgN04LyZFLpQ63uQ==
X-Received: by 2002:a05:622a:413:b0:432:f433:b5ca with SMTP id n19-20020a05622a041300b00432f433b5camr8474609qtx.24.1712755482734;
        Wed, 10 Apr 2024 06:24:42 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id s26-20020ac8759a000000b0043642da3befsm406798qtq.76.2024.04.10.06.24.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 06:24:42 -0700 (PDT)
Message-ID: <7c54761d-ea24-44c6-9ac8-cbeb89434231@gmail.com>
Date: Wed, 10 Apr 2024 09:24:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "drtaylor@manx.net" <drtaylor@manx.net>, usrp-users@lists.ettus.com
References: <94eb78b8-6ea4-4e04-86d1-918b3b5c1d65@gmail.com>
 <39cd3dd5-d55f-4fe8-88a1-0e5de4a7c082@localhost>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <39cd3dd5-d55f-4fe8-88a1-0e5de4a7c082@localhost>
Message-ID-Hash: 5TLBGJNZOAWCIRJRYKWZLTE2UD6LY6YW
X-Message-ID-Hash: 5TLBGJNZOAWCIRJRYKWZLTE2UD6LY6YW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Frequency Stability versus Frequency Accuracy
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5TLBGJNZOAWCIRJRYKWZLTE2UD6LY6YW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5190379925366750041=="

This is a multi-part message in MIME format.
--===============5190379925366750041==
Content-Type: multipart/alternative;
 boundary="------------ssy01YvzupgPuTyrrtDwQtiz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ssy01YvzupgPuTyrrtDwQtiz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/04/2024 06:57, drtaylor@manx.net wrote:
> Dear all,
> I would be very cautious attempting to derive the frequency accuracy=20
> of a piece of equipment against its master oscillator specification,=20
> as any function subservient to its nominal frequency and temperature=20
> drift over time specification will vary across product.
> For information I have a B200 and B210 which after 30 minutes or more=20
> of warm up will generate RF carriers around 2.4 GHz with up +/- 10 KHz=20
> difference unless externally 10 MHz stabilised. This concurs with=20
> other comments.
>
> Best regards,
> David GD4FMB
10kHz for a 2.4GHz carrier is more than you would expect from a 2PPM=20
master oscillator.=C2=A0 The fact that it gets better with
 =C2=A0 a better external oscillator suggests that there's an issue with =
the=20
on-board master oscillator TCXO, and not some weirdness
 =C2=A0 in PLL synthesizer settings, for example.


>
>
>
>     On ,Wed Apr 10 2024 03:01:30 GMT+0100 (British Summer Time),
>     Marcus D. Leech <patchvonbraun@gmail.com> wrote:
>     ---------- Original Message ----------
>
>     On 09/04/2024 21:48, John Ackermann N8UR via USRP-users wrote:
>     > I'm not sure about this particular unit, but typically if a cryst=
al=20
>     > oscillator datasheet lists an "accuracy" specification, that is o=
ver a=20
>     > time period that takes into account the long-term frequency drift=
=20
>     > ("aging") that affects almost all oscillators.=C2=A0 Sometimes th=
e accuracy=20
>     > is specified over a period of years, especially if the oscillator=
=20
>     > doesn't have a frequency adjustment input.=C2=A0 In oscillators t=
hat can be=20
>     > tweaked, it might be stated as an aging rate of some value per da=
y,=20
>     > week, or month.
>     >
>     > In inexpensive oscillators, the "stability" number usually refers=
 to=20
>     > short-term change due to temperature and other environmental fact=
ors.=20
>     > In more expensive oscillators, stability is usually specified ove=
r=20
>     > various averaging intervals, say from 1 second to 10K seconds.
>     >
>     > Sometimes accuracy is also expressed as a combination of time and=
=20
>     > temperature range, which gives the most conservative result.
>     >
>     > John
>     > ----
>     See also Allen Deviation plots....
>
>
>     >
>     > On 4/9/24 21:19, Timothy J. Salo via USRP-users wrote:
>     >> Hi,
>     >>
>     >> I'm writing a "Getting Started" guide for our research group. Wh=
en I
>     >> got to the GPSDO section, I had difficulty in figuring out the f=
requency
>     >> stability and the frequency accuracy of the B210.
>     >>
>     >> At least the early versions of the B210 used a CTS Electronic Co=
mponents
>     >> 520L20DA40M0000 TCXO.=C2=A0 The datasheet for this TCXO says it =
has a
>     >> frequency _stability_ of +/- 2.0 ppm over an operating temperatu=
re range
>     >> of -30C - +85C.
>     >>
>     >> The CTS website states that their TCXO exhibit: "Stratum 3 Perfo=
rmance;
>     >> =C2=B14.6ppm overall, =C2=B10.28ppm over -40=C2=B0C to +85=C2=B0=
C".=C2=A0 Am I correct in
>     >> concluding that this is the frequency _accuracy_ of the TCXO use=
d in
>     >> the B210?=C2=A0 Does this translate directly into the frequency =
_accuracy_
>     >> of the B210?
>     >>
>     >> The B210 datasheet states a frequency _accuracy_ of +/- 2.0 ppm.=
=C2=A0 Is
>     >> is a typo, and should the datasheet actually say frequency _stab=
ility_?
>     >> Or, did someone conclude that over a reasonable operating temper=
ature,
>     >> the effects of temperature outweigh any inaccuracy in the freque=
ncy
>     >> of the TCXO?
>     >>
>     >> Anecdotally, I have heard that one organization found that three=
 of
>     >> their four B210s, when operating as a 5G base station, were unab=
le
>     >> to connect with commercial off-the-shelf cellular handsets, unle=
ss
>     >> an external GPSDO was used with the B210.=C2=A0 Does anyone have=
 any idea
>     >> what frequency accuracy is expected by cellular handsets?
>     >>
>     >> So, does anyone know what the frequency _accuracy_ of the B210 i=
s, in
>     >> the absence of a GPSDO?=C2=A0 Or, should I just use the +/1 2.0 =
ppm figure?
>     >>
>     >> Thanks,
>     >>
>     >> -tjs
>     >> - - - -
>     >>
>     >> [1]=20
>     >> https://www.ctscorp.com/Files/DataSheets/Passives/FCP/TCXO/TCXO-=
520-datasheet.pdf
>     >>
>     >>
>     >>
>     >> _______________________________________________
>     >> USRP-users mailing list -- usrp-users@lists.ettus.com
>     >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list --usrp-users@lists.ettus.com
>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>

--------------ssy01YvzupgPuTyrrtDwQtiz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/04/2024 06:57, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:drtaylor@manx.net">drtaylor@manx.net<=
/a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:39cd3dd5-d55f-4fe8-88a1-0e5de4a7c082@localhost">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div>Dear all,</div>
      <div>I would be very cautious attempting to derive the frequency
        accuracy
        of a piece of equipment against its master oscillator
        specification, as any
        function subservient to its nominal frequency and temperature
        drift over time
        specification will vary across product.<br>
      </div>
      <div>For information I have a B200 and B210 which after 30 minutes
        or more of warm up will generate RF carriers around 2.4 GHz with
        up +/- 10 KHz difference
        unless externally 10 MHz stabilised. This concurs with other
        comments.<br>
      </div>
      <div><br>
      </div>
      <div>Best regards,<br>
      </div>
      <div>David GD4FMB</div>
    </blockquote>
    10kHz for a 2.4GHz carrier is more than you would expect from a 2PPM
    master oscillator.=C2=A0 The fact that it gets better with<br>
    =C2=A0 a better external oscillator suggests that there's an issue wi=
th
    the on-board master oscillator TCXO, and not some weirdness<br>
    =C2=A0 in PLL synthesizer settings, for example.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:39cd3dd5-d55f-4fe8-88a1-0e5de4a7c082@localhost">
      <div data-atmail-signature=3D"" class=3D"gmail_signature"
        data-smartmail=3D"gmail_signature" style=3D""><br>
      </div>
      <div><br>
      </div>
      <div><br>
      </div>
      <blockquote>
        <div>
          <div>On ,Wed Apr 10 2024 03:01:30 GMT+0100 (British Summer
            Time), Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" hre=
f=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
            wrote:<br>
          </div>
          <div>---------- Original Message ----------<br>
          </div>
        </div>
        <pre>On 09/04/2024 21:48, John Ackermann N8UR via USRP-users wrot=
e:
&gt; I'm not sure about this particular unit, but typically if a crystal=20
&gt; oscillator datasheet lists an "accuracy" specification, that is over=
 a=20
&gt; time period that takes into account the long-term frequency drift=20
&gt; ("aging") that affects almost all oscillators.=C2=A0 Sometimes the a=
ccuracy=20
&gt; is specified over a period of years, especially if the oscillator=20
&gt; doesn't have a frequency adjustment input.=C2=A0 In oscillators that=
 can be=20
&gt; tweaked, it might be stated as an aging rate of some value per day,=20
&gt; week, or month.
&gt;
&gt; In inexpensive oscillators, the "stability" number usually refers to=
=20
&gt; short-term change due to temperature and other environmental factors=
.=20
&gt; In more expensive oscillators, stability is usually specified over=20
&gt; various averaging intervals, say from 1 second to 10K seconds.
&gt;
&gt; Sometimes accuracy is also expressed as a combination of time and=20
&gt; temperature range, which gives the most conservative result.
&gt;
&gt; John
&gt; ----
See also Allen Deviation plots....


&gt;
&gt; On 4/9/24 21:19, Timothy J. Salo via USRP-users wrote:
&gt;&gt; Hi,
&gt;&gt;
&gt;&gt; I'm writing a "Getting Started" guide for our research group. Wh=
en I
&gt;&gt; got to the GPSDO section, I had difficulty in figuring out the f=
requency
&gt;&gt; stability and the frequency accuracy of the B210.
&gt;&gt;
&gt;&gt; At least the early versions of the B210 used a CTS Electronic Co=
mponents
&gt;&gt; 520L20DA40M0000 TCXO.=C2=A0 The datasheet for this TCXO says it =
has a
&gt;&gt; frequency _stability_ of +/- 2.0 ppm over an operating temperatu=
re range
&gt;&gt; of -30C - +85C.
&gt;&gt;
&gt;&gt; The CTS website states that their TCXO exhibit: "Stratum 3 Perfo=
rmance;
&gt;&gt; =C2=B14.6ppm overall, =C2=B10.28ppm over -40=C2=B0C to +85=C2=B0=
C".=C2=A0 Am I correct in
&gt;&gt; concluding that this is the frequency _accuracy_ of the TCXO use=
d in
&gt;&gt; the B210?=C2=A0 Does this translate directly into the frequency =
_accuracy_
&gt;&gt; of the B210?
&gt;&gt;
&gt;&gt; The B210 datasheet states a frequency _accuracy_ of +/- 2.0 ppm.=
=C2=A0 Is
&gt;&gt; is a typo, and should the datasheet actually say frequency _stab=
ility_?
&gt;&gt; Or, did someone conclude that over a reasonable operating temper=
ature,
&gt;&gt; the effects of temperature outweigh any inaccuracy in the freque=
ncy
&gt;&gt; of the TCXO?
&gt;&gt;
&gt;&gt; Anecdotally, I have heard that one organization found that three=
 of
&gt;&gt; their four B210s, when operating as a 5G base station, were unab=
le
&gt;&gt; to connect with commercial off-the-shelf cellular handsets, unle=
ss
&gt;&gt; an external GPSDO was used with the B210.=C2=A0 Does anyone have=
 any idea
&gt;&gt; what frequency accuracy is expected by cellular handsets?
&gt;&gt;
&gt;&gt; So, does anyone know what the frequency _accuracy_ of the B210 i=
s, in
&gt;&gt; the absence of a GPSDO?=C2=A0 Or, should I just use the +/1 2.0 =
ppm figure?
&gt;&gt;
&gt;&gt; Thanks,
&gt;&gt;
&gt;&gt; -tjs
&gt;&gt; - - - -
&gt;&gt;
&gt;&gt; [1]=20
&gt;&gt; <a class=3D"moz-txt-link-freetext" href=3D"https://www.ctscorp.c=
om/Files/DataSheets/Passives/FCP/TCXO/TCXO-520-datasheet.pdf">https://www=
.ctscorp.com/Files/DataSheets/Passives/FCP/TCXO/TCXO-520-datasheet.pdf</a=
>
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt; _______________________________________________
&gt;&gt; USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated"=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>
&gt;&gt; To unsubscribe send an email to <a class=3D"moz-txt-link-abbrevi=
ated" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@l=
ists.ettus.com</a>
&gt; _______________________________________________
&gt; USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
&gt; To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated=
" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists=
.ettus.com</a>
_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>

</pre>
      </blockquote>
      <div><br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------ssy01YvzupgPuTyrrtDwQtiz--

--===============5190379925366750041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5190379925366750041==--
