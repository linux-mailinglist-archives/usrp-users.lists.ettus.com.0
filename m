Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E08DA6661B8
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 18:22:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0DD4338407C
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 12:22:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673457745; bh=9cxBwhJ/oXVgtDgY4QwcaTngLKGFrgIq6oUdHOMsF3M=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LWJUR/vY1sLZpLD6a6wIBLZOHmEH4DO5m1JTkb5xdstgLYqIhhKj41WIizJH0XJY4
	 Kuu/akdYPRiDypRPXfcsPziV4iCTRZmavRT8fEBmqSigx3DnZWZWxSYN5zn5k1CLo3
	 OdS0RfGZnfcOdncKw/xBz2HCqKF20URjnbEtm7P2lES1Pj7B7Bt76KlgWVVMBM+Kgf
	 /hwLykbQC4QhzOGNYHH3JwWzbnmherWX5T7HsAP0nYtVE/c89UxykE4CqEm4GAdNAq
	 jrlZiy7X10EATSHAYeiHNc/63VmYOjJqbRMTG+RJbSdmeux3J86ZljdRXn/FS0GaIc
	 1/kFlMWooHgDQ==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id C7EA3380F6F
	for <usrp-users@lists.ettus.com>; Wed, 11 Jan 2023 12:22:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="A+uwdcYa";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id c17so23301785edj.13
        for <usrp-users@lists.ettus.com>; Wed, 11 Jan 2023 09:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B0cbftmBzbyWTThkL1eEUbLYwafdyMSyvTyebsfKxFE=;
        b=A+uwdcYasvC8ZZfAfLJ3Ut3xpTsKoMyQgzGPbeTTEVLJ/8sBG6UEn0bPSicONGK+/a
         NQEohNPcIjKA5vrmjKAEpn+Xc++8unoplLlGESWVT58IsRr4V497JSqF4QpZNRcHIx9l
         6KVEkrOOBDyhM4vq9rB/SGRyecIkuZDoLu8I7+0oj8VQJfD3e14OqBE9g9g85wg5xoRM
         Fcyc1Jf+yOP+OBYVwrlggizf5tOb4H6Bx+jR9BKwAfbv7lsZ5qCq7GsHQD2jIlEAE4uk
         9TVlrk9W4Vu/0zYLrnv1NAUt1bqVsYv0poHQkiUMXFIJfu913vMwwhwm/VpuhixWYMkt
         0oPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B0cbftmBzbyWTThkL1eEUbLYwafdyMSyvTyebsfKxFE=;
        b=K3P2RRxUaQs01Pc4p7xiA6vDCuaT7dg3k9fcsTqFR0UlidqaCTUDHug/OKRwsZ0uBo
         bu9L6ccI3xM75Xyj/KdzIeW6ebIL+EvpFDW3fjIsKuzqy11tSg+Niw82n1Fyq6gaxD1Y
         IKDECj9YyaflYLLZgxL98YoKEvHd5WvaIUeFC7yBWIOQJbCBFxgxso9LjymxY9/4uoQH
         wytq3vkBPnGnpCNCOVHZA31K2jULW2jL5JjmnB4wOvRIdu6BWztrMcpHMAieHMTdh87O
         2WyhJJsGC/W4gFjzPoP4McRz0SOyTMId8KfhPT80UKXVoMGENQskIZ8pUByelg2YNMKK
         vGdA==
X-Gm-Message-State: AFqh2kppj6EQREeQWId1Z0FycIgzYc0nNfOrEirGJDudIbjBtFKesCq+
	1sU9GT7SZGhZOYOsZiH2QfhPpcVZaAWC1WPmlF5lJQ==
X-Google-Smtp-Source: AMrXdXtNXLr/oNK5Jb0s7028RK9p/6yuM9S6vYW7EIQka0Eg9JZ75tN7oAsIneEL7r5HGuO8xH801q1WwC9YmQCHFss=
X-Received: by 2002:a05:6402:b05:b0:498:d121:6e04 with SMTP id
 bm5-20020a0564020b0500b00498d1216e04mr1728936edb.359.1673457736335; Wed, 11
 Jan 2023 09:22:16 -0800 (PST)
MIME-Version: 1.0
References: <e1aa67dd-64d6-32eb-e5c1-a07d495df30f@o2.pl> <CAFche=gPLe2GkEbn4ogJMD26goBa-yzDjuD7nLOQPydZ-=F2bg@mail.gmail.com>
In-Reply-To: <CAFche=gPLe2GkEbn4ogJMD26goBa-yzDjuD7nLOQPydZ-=F2bg@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 11 Jan 2023 12:22:04 -0500
Message-ID: <CAB__hTTaxO1FcoFd=kt0so2CmonYnjmNWGXECQMw+2_J5R4Ubg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: 5HSM3QB5SJD74SQKHYFUB72TO6DRI7OZ
X-Message-ID-Hash: 5HSM3QB5SJD74SQKHYFUB72TO6DRI7OZ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC FFT block on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5HSM3QB5SJD74SQKHYFUB72TO6DRI7OZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3239879825950287671=="

--===============3239879825950287671==
Content-Type: multipart/alternative; boundary="000000000000ec496a05f2003d60"

--000000000000ec496a05f2003d60
Content-Type: text/plain; charset="UTF-8"

Hi Wade,
I thought that the recent changes regarding atomic_item_size would
eliminate the need for the user to configure spp for the case of the FFT
(and perhaps all cases). Is that true? If so, what is the UHD version
needed for this functionality - UHD 4.2?
Rob

On Tue, Jan 10, 2023 at 9:15 PM Wade Fife <wade.fife@ettus.com> wrote:

> One trick with the FFT block I think is that the packet size needs to
> match the FFT size. Try something like:
>
> radio = uhd.rfnoc.RadioControl(graph.get_block("0/Radio#0"))
> radio.set_properties("spp=" + str(fft_size))
>
> Wade
>
>
> On Sat, Jan 7, 2023 at 12:11 PM Piotr Krysik <perper@o2.pl> wrote:
>
>> Hello,
>>
>> Does anybody have a working example of usage of FFT RFNoC block on X410?
>>
>> Recent example for other USRP i.e. X310 would also be quite good.
>>
>> I followed the description here:
>> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
>> to add the fft block (I've attached my changed RFNoC's YML).
>> Here are my additions to stock rfnoc image core yml
>> (x410_200_rfnoc_image_core.yml):
>>
>> stream_endpoints:
>>     ep_fft:
>>       ctrl: False
>>       data: True
>>       buff_size_bytes: 32768
>>
>> noc_blocks:
>>     fft0:
>>       block_desc: 'fft_1x64.yml'
>>
>> connections:
>>     # FFT Blocks Connections
>>     - { srcblk: ep_fft,  srcport: out0,  dstblk: fft0,    dstport: in_0 }
>>     - { srcblk: fft0,    srcport: out_0, dstblk: ep_fft,  dstport: in0  }
>>
>> clk_domains:
>>       - { srcblk: _device_, srcport: radio_2x, dstblk: fft0, dstport:
>> ce    }
>>
>> When I use FFT block I don't get any samples (checked with Wireshark)
>> - I get only timeout errors and information about overflows.
>>
>> I've attached an example Python code. The same result is obtained in GNU
>> Radio.
>>
>> Probably there is something wrong with the FFT block, but I don't know
>> what it might be exactly. I've tried to use different clock rate
>> ('radio' clock)
>> but without success.
>>
>> --
>> Best Regards,
>> Piotr Krysik
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ec496a05f2003d60
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Wade,<div>I thought that the recent changes regarding a=
tomic_item_size would eliminate the need for the user to configure spp for =
the case of the FFT (and perhaps all cases). Is that true? If so, what is t=
he UHD version needed for this functionality - UHD 4.2?</div><div>Rob</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, Jan 10, 2023 at 9:15 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@e=
ttus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>One trick with the FFT b=
lock I think is that the packet size needs to match the FFT size. Try somet=
hing like:</div><div><br></div><div>radio =3D uhd.rfnoc.RadioControl(graph.=
get_block(&quot;0/Radio#0&quot;))</div><div>
radio.set_properties(&quot;spp=3D&quot; + str(fft_size))</div><div><br></di=
v><div>Wade</div><div><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 7, 2023 at 12:11 PM Piotr Krysi=
k &lt;<a href=3D"mailto:perper@o2.pl" target=3D"_blank">perper@o2.pl</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<=
br>
<br>
Does anybody have a working example of usage of FFT RFNoC block on X410?<br=
>
<br>
Recent example for other USRP i.e. X310 would also be quite good.<br>
<br>
I followed the description here: <br>
<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0" rel=
=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Getting_Started_with=
_RFNoC_in_UHD_4.0</a><br>
to add the fft block (I&#39;ve attached my changed RFNoC&#39;s YML).<br>
Here are my additions to stock rfnoc image core yml <br>
(x410_200_rfnoc_image_core.yml):<br>
<br>
stream_endpoints:<br>
=C2=A0=C2=A0=C2=A0 ep_fft:<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ctrl: False<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 data: True<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 buff_size_bytes: 32768<br>
<br>
noc_blocks:<br>
=C2=A0=C2=A0=C2=A0 fft0:<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 block_desc: &#39;fft_1x64.yml&#39;<br>
<br>
connections:<br>
=C2=A0=C2=A0=C2=A0 # FFT Blocks Connections<br>
=C2=A0=C2=A0=C2=A0 - { srcblk: ep_fft,=C2=A0 srcport: out0,=C2=A0 dstblk: f=
ft0,=C2=A0=C2=A0=C2=A0 dstport: in_0 }<br>
=C2=A0=C2=A0=C2=A0 - { srcblk: fft0,=C2=A0=C2=A0=C2=A0 srcport: out_0, dstb=
lk: ep_fft,=C2=A0 dstport: in0=C2=A0 }<br>
<br>
clk_domains:<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - { srcblk: _device_, srcport: radio_2x, dst=
blk: fft0, dstport: <br>
ce=C2=A0=C2=A0=C2=A0 }<br>
<br>
When I use FFT block I don&#39;t get any samples (checked with Wireshark)<b=
r>
- I get only timeout errors and information about overflows.<br>
<br>
I&#39;ve attached an example Python code. The same result is obtained in GN=
U <br>
Radio.<br>
<br>
Probably there is something wrong with the FFT block, but I don&#39;t know<=
br>
what it might be exactly. I&#39;ve tried to use different clock rate <br>
(&#39;radio&#39; clock)<br>
but without success.<br>
<br>
-- <br>
Best Regards,<br>
Piotr Krysik<br>
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

--000000000000ec496a05f2003d60--

--===============3239879825950287671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3239879825950287671==--
