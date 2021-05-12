Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F4A37B375
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 03:27:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5D0E384BD7
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 21:27:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YlDwTDDA";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C9B63842CB
	for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 21:26:52 -0400 (EDT)
Received: by mail-qv1-f44.google.com with SMTP id q6so11278429qvb.2
        for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 18:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:user-agent:in-reply-to:references:mime-version
         :content-transfer-encoding:subject:to:from:message-id;
        bh=6J9vmS1XHibD2+JTKcCId8Ku7lNbD6wkNSruLFvscto=;
        b=YlDwTDDAB3GiNjZar/AyBX+QOPR2yT4cYDU3xyWLkr7kDctxA5nN/cVUJW5iKUMr+B
         kapJFmhOP/N66TKDZZyL62f4Zua5T1bgsFtOdVt7fPq/nt7gFCP6a7wk5kowi/RK7YlL
         R/vl/UhtS/PkXmwDvI7PR8qOf+8mf19wbZMS/USAmBQrg2iEXHL0yY6xdrhZYXBoLkxm
         5UwegML/t3ShXle6OMYLXu4QRn4N2Onn0oOjBcV410Aei4GAk88pTigO2tpnGd2HgLni
         Af5rAxHUmIxmb39iL9zeMiMkY6Uhg4O/kdqAGrCAB5ELfCe/LlJ4kyjwrPd8aeBXzi+t
         zbsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:user-agent:in-reply-to:references
         :mime-version:content-transfer-encoding:subject:to:from:message-id;
        bh=6J9vmS1XHibD2+JTKcCId8Ku7lNbD6wkNSruLFvscto=;
        b=aMFn2rjB5YKEtFyyv7uNw5nQ0ePzuf53Jo2MIfwcWMy8Y3kFx/D41QadFB6T1rwByT
         9XTO/uyfhqxXYHagieGDsru6K93YKf/MwTewMu+zolaPiQAT8rqfYgGtwZIUBzV41MB7
         kOye7cvwPSevBpKSuBrBONLKJKRZEdq0zcHsoDIBYY1dWQgjrbGybaPaNRgM/y/MZ3Tg
         8R0MxZbvif846yFcAMAUVYkLNmnLptNE+E5QpJyUPwW0wLFABikeX9tdVFYV8P4toub2
         VPG7zbkp1G/0EBIJWcbwgnVJLackSKvjlZDypD7gZYYs4ethPbd6ifjG0O6iZVVgFpZr
         51EA==
X-Gm-Message-State: AOAM532tRenJ/kRIGdlD55gONR6pPuJiNFTAvFsiYKoURiKC3i77m6EY
	DI70nDc7MYQqCE9nuLg0Irs8uNdRHg8=
X-Google-Smtp-Source: ABdhPJzNhZYOaX2eXFRpC6GzzVkMzUDqs7hdGLG2wNCLVGuN28FYsZtjYpnOvKN0Mm349Cn4wTznBA==
X-Received: by 2002:a0c:d40a:: with SMTP id t10mr32988982qvh.19.1620782812298;
        Tue, 11 May 2021 18:26:52 -0700 (PDT)
Received: from Pixel-3.lan (dynamic-acs-24-112-157-175.zoominternet.net. [24.112.157.175])
        by smtp.gmail.com with ESMTPSA id p14sm10980552qki.27.2021.05.11.18.26.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 18:26:51 -0700 (PDT)
Date: Tue, 11 May 2021 21:26:50 -0400
User-Agent: K-9 Mail for Android
In-Reply-To: <CAN+Y6vAiiZ2ptm94r74DbSYV0PxesL7tpTeEJ0XksLJTgEHRNg@mail.gmail.com>
References: <CAN+Y6vAiiZ2ptm94r74DbSYV0PxesL7tpTeEJ0XksLJTgEHRNg@mail.gmail.com>
MIME-Version: 1.0
To: usrp-users@lists.ettus.com,isaac mario tupac davila <isacctd92@gmail.com>
From: Clint Scarborough <clinton.scarborough@gmail.com>
Message-ID: <995104CA-E913-4C2A-9F4B-AFB9ECE6600E@gmail.com>
Message-ID-Hash: WJNLZN3INMEG6ZRXFAPVL7HNAXXI4XVU
X-Message-ID-Hash: WJNLZN3INMEG6ZRXFAPVL7HNAXXI4XVU
X-MailFrom: clinton.scarborough@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling rate and bandwidth - Usrp N210 & source block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WJNLZN3INMEG6ZRXFAPVL7HNAXXI4XVU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5660706225929675410=="

--===============5660706225929675410==
Content-Type: multipart/alternative; boundary="----0LYN6VP136D0QBJZ4T0RWW8FXA7RW5"
Content-Transfer-Encoding: 7bit

------0LYN6VP136D0QBJZ4T0RWW8FXA7RW5
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Isaac!

Your questions are really general signal processing questions, or at least=
 GNURadio questions, not unique to a USRP=2E  I was confused on the same su=
bject when I first started using SDRs, though=2E

Nyquist really just means that, if you have a real signal with no power ou=
tside a given bandwidth (let's say 20MHz), then you need 40 million indepen=
dent samples per second to represent it=2E  You can get that by real-valued=
 sampling using a regular clock at 40Msps, or you can simultaneously sample=
 in-phase and quadrature components at 20Msps yielding complex valued sampl=
es=2E  The latter approach is what you'll generally find with SDRs=2E

However, if you want to accurately represent your 20MHz signal digitally, =
you need a bandpass filter in front of the analog to digital converters wit=
h a 20MHz pass band=2E  Any real filter will have some rolloff at the band =
edges, which means that your signal may have power beyond the 20MHz that yo=
u care about, and you need a little higher sampling rate to avoid aliasing =
of that extra power=2E

Secondly, the sampling has a limited number of bits to represent the analo=
g signal, and you need a slightly higher sampling rate to guarantee an accu=
rate representation of your signal=2E

So, with complex sampling, you generally need to sample at roughly the sam=
e rate as the bandwidth you care about plus maybe 25%=2E

-- Clint

On May 11, 2021 6:15:26 PM EDT, isaac mario tupac davila <isacctd92@gmail=
=2Ecom> wrote:
>Hello community
>
>I'm Isaac=2E I'm dealing with some questions about the interpretation of
>sampling rate and bandwidth in a USRP source block=2E
>
>What I understand is if I work with an USRP N210, my ADC works with a
>100MS/s=2E If I use a Gigabit Ethernet and a data type of 16bits, I could
>receive in my host up to 25MS/s with a bandwidth of 20MHz=2E
>https://kb=2Eettus=2Ecom/About_USRP_Bandwidths_and_Sampling_Rates
>
>My questions are:
>
>1=2E If I can receive up to 25MS/s on my host, why my bandwidth is 20MHz?
>I
>think It is up to 12=2E5MHz according to Nyquist=2E
>
>2=2E Why is the sample rate value in the usrp source block equal to the
>bandwidth I observe? I think this bandwidth should be the half
>according to
>Nyquist too=2E https://wiki=2Egnuradio=2Eorg/index=2Ephp/USRP_Source
>
>I appreciate any help to clarify this concepts
>
>Regards
>Isaac T=2E

------0LYN6VP136D0QBJZ4T0RWW8FXA7RW5
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Hi Isaac!<br><br>Your questions are really general=
 signal processing questions, or at least GNURadio questions, not unique to=
 a USRP=2E  I was confused on the same subject when I first started using S=
DRs, though=2E<br><br>Nyquist really just means that, if you have a real si=
gnal with no power outside a given bandwidth (let's say 20MHz), then you ne=
ed 40 million independent samples per second to represent it=2E  You can ge=
t that by real-valued sampling using a regular clock at 40Msps, or you can =
simultaneously sample in-phase and quadrature components at 20Msps yielding=
 complex valued samples=2E  The latter approach is what you'll generally fi=
nd with SDRs=2E<br><br>However, if you want to accurately represent your 20=
MHz signal digitally, you need a bandpass filter in front of the analog to =
digital converters with a 20MHz pass band=2E  Any real filter will have som=
e rolloff at the band edges, which means that your signal may have power be=
yond the 20MHz that you care about, and you need a little higher sampling r=
ate to avoid aliasing of that extra power=2E<br><br>Secondly, the sampling =
has a limited number of bits to represent the analog signal, and you need a=
 slightly higher sampling rate to guarantee an accurate representation of y=
our signal=2E<br><br>So, with complex sampling, you generally need to sampl=
e at roughly the same rate as the bandwidth you care about plus maybe 25%=
=2E<br><br>-- Clint<br><br><div class=3D"gmail_quote">On May 11, 2021 6:15:=
26 PM EDT, isaac mario tupac davila &lt;isacctd92@gmail=2Ecom&gt; wrote:<bl=
ockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border=
-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir=3D"ltr"><div>Hello community<br></div><div><br></div><div>I'm Isa=
ac=2E I'm dealing with some questions about the interpretation of sampling =
rate and bandwidth in a USRP source block=2E</div><div><br></div><div>What =
I understand is if I work with an USRP N210, my ADC works with a 100MS/s=2E=
 If I use a Gigabit Ethernet and a data type of 16bits, I could receive in =
my host up to 25MS/s with a bandwidth of 20MHz=2E <a href=3D"https://kb=2Ee=
ttus=2Ecom/About_USRP_Bandwidths_and_Sampling_Rates">https://kb=2Eettus=2Ec=
om/About_USRP_Bandwidths_and_Sampling_Rates</a></div><div><br></div><div>My=
 questions are: <br></div><div><br></div><div>1=2E If I can receive up to 2=
5MS/s on my host, why my bandwidth is 20MHz? I think It is up to 12=2E5MHz =
according to Nyquist=2E</div><div><br></div><div>2=2E Why is the  sample ra=
te value in the usrp source block equal to the bandwidth I observe? I think=
 this bandwidth should be the half according to Nyquist too=2E <a href=3D"h=
ttps://wiki=2Egnuradio=2Eorg/index=2Ephp/USRP_Source">https://wiki=2Egnurad=
io=2Eorg/index=2Ephp/USRP_Source</a></div><div><br></div><div>I appreciate =
any help to clarify this concepts&nbsp;<br></div><div><br></div><div>Regard=
s</div><div>Isaac T=2E<br></div><div><br></div></div>
</blockquote></div></body></html>
------0LYN6VP136D0QBJZ4T0RWW8FXA7RW5--

--===============5660706225929675410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5660706225929675410==--
