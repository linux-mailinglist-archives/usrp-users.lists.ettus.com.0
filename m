Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 462EA665197
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 03:15:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4E60383CCE
	for <lists+usrp-users@lfdr.de>; Tue, 10 Jan 2023 21:15:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673403307; bh=l867AAekNAZWXTRRQZ2RMovRO08+uDHfnzYULD5VYoU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Pf7kT/7+C5cW4oJi11U7evpvKLfxXqrhUcZM//QxdWNisT6tmMVVLv50p25u7D4SY
	 e1W079jO4P5lC+lvdjqAZfLCusxnxp879h+jgNLAlVll6M5hnLmNJ7weVNTP5YI5MZ
	 ENDF9xEJ9mD6nYU0vkilVEO+omrLn7+P7kefhvzvn0HrLtw9yyydHlZ2eohcEcBkh1
	 5zQC7yyhXG+f0rp8b0yS+JaKkedxvSMxy1ZrsYhCB8QdNFXRpc6wfZF0SfUByNDuQJ
	 kNZQBUjR9K8dm6VSpJwRbNU1kRvVAZAxSRfYDjHQg6no8xNFQHtRNNVHpMusQVBS7w
	 LzEYfrX9Yo+Sg==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id CCDCA383C4A
	for <usrp-users@lists.ettus.com>; Tue, 10 Jan 2023 21:14:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="dPFmhQXW";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id m21so20374957edc.3
        for <usrp-users@lists.ettus.com>; Tue, 10 Jan 2023 18:14:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2f6j04Pqnbgmw2McFCbEZfMKt7QHlNl7WL995LJ68v8=;
        b=dPFmhQXW8o2I0GRtF9tkDx/9D6Jh1CRcfQUI/d6jvGVLW3s3Jt9TVAP1pVTn/WdVOw
         MxkyT8/+OY92ZbicOJnQuuUmtO3FyxRNcV6r+dOC33XlJC38oSGQF5Z7aO5O6vyjCx5o
         QmkNDiYI6zVr7+n4tT8KztHAi311LrFYGdvd4ukBpuiO9FAS/7q6/Bs1mu2rimhFGK2n
         d7VTcfzQ+Vfpt03/H6mogH6Svq6i+Z2/ykaTSi8ED9Jqe0cmIL1CHHH1mpko62Wmj9i6
         utSJ38QQQ2TJ3gF/0DZb83ma2RY5FttcCXmol9+yOU9LpNRtVRt7AVzoW3RGf1ha6BDH
         Utqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2f6j04Pqnbgmw2McFCbEZfMKt7QHlNl7WL995LJ68v8=;
        b=7BYtetxisHZkvkqoUAHSlrQssWoCVt3q4CyrKnj6zHBr8JVcCTt2FFFTIfQetiUaLc
         FKt708mIaPCTtFsW6C+jV4PMr0Mm3l4HaRiQk6C+yqythxeHujMxEWJlPoxXAQoD4WI+
         qpdGjqBiWiWUVLaF80hUGcSbmpydM6hMaEwdjbcziKL2Xj/MltkiSHWpDaHmU6r3j8Ao
         aBWf4EGwXSw379PtB/z+HH9IjHXDb0Tgak2xfDxHjrlK57KnkC9TCkoO2BYqPbqwswLh
         QNUxntTEnv33WHGzzTX5zEGoECPGKXK8Z3QkOXEcvwW+HT292wWj3flkrZhXSbND6okW
         XDuQ==
X-Gm-Message-State: AFqh2krE31WMQXVlb7aEJdxO+M4S1I0X7akh1aJHDSkCuWBl6nxcihVj
	7HRZLo1CpWjROZaX0BOmAsGnv7zgMoVGkTKgOCvXbnNX
X-Google-Smtp-Source: AMrXdXst7ykritnldYzBWirm+tLY0y5EjXzbocXPqBw5MD25jP7fDop9cDlvBAdIOl1EWlOXuiAAAVyy2SG9nHmv7sU=
X-Received: by 2002:a05:6402:4515:b0:492:7579:d633 with SMTP id
 ez21-20020a056402451500b004927579d633mr2728780edb.426.1673403298589; Tue, 10
 Jan 2023 18:14:58 -0800 (PST)
MIME-Version: 1.0
References: <e1aa67dd-64d6-32eb-e5c1-a07d495df30f@o2.pl>
In-Reply-To: <e1aa67dd-64d6-32eb-e5c1-a07d495df30f@o2.pl>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 10 Jan 2023 20:14:42 -0600
Message-ID: <CAFche=gPLe2GkEbn4ogJMD26goBa-yzDjuD7nLOQPydZ-=F2bg@mail.gmail.com>
To: Piotr Krysik <perper@o2.pl>
Message-ID-Hash: SMZVRWSZSSF4FTJW4REP7OUEZ6WHAGIC
X-Message-ID-Hash: SMZVRWSZSSF4FTJW4REP7OUEZ6WHAGIC
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC FFT block on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SMZVRWSZSSF4FTJW4REP7OUEZ6WHAGIC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2141074647991640779=="

--===============2141074647991640779==
Content-Type: multipart/alternative; boundary="0000000000002dc13405f1f3913a"

--0000000000002dc13405f1f3913a
Content-Type: text/plain; charset="UTF-8"

One trick with the FFT block I think is that the packet size needs to match
the FFT size. Try something like:

radio = uhd.rfnoc.RadioControl(graph.get_block("0/Radio#0"))
radio.set_properties("spp=" + str(fft_size))

Wade


On Sat, Jan 7, 2023 at 12:11 PM Piotr Krysik <perper@o2.pl> wrote:

> Hello,
>
> Does anybody have a working example of usage of FFT RFNoC block on X410?
>
> Recent example for other USRP i.e. X310 would also be quite good.
>
> I followed the description here:
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
> to add the fft block (I've attached my changed RFNoC's YML).
> Here are my additions to stock rfnoc image core yml
> (x410_200_rfnoc_image_core.yml):
>
> stream_endpoints:
>     ep_fft:
>       ctrl: False
>       data: True
>       buff_size_bytes: 32768
>
> noc_blocks:
>     fft0:
>       block_desc: 'fft_1x64.yml'
>
> connections:
>     # FFT Blocks Connections
>     - { srcblk: ep_fft,  srcport: out0,  dstblk: fft0,    dstport: in_0 }
>     - { srcblk: fft0,    srcport: out_0, dstblk: ep_fft,  dstport: in0  }
>
> clk_domains:
>       - { srcblk: _device_, srcport: radio_2x, dstblk: fft0, dstport:
> ce    }
>
> When I use FFT block I don't get any samples (checked with Wireshark)
> - I get only timeout errors and information about overflows.
>
> I've attached an example Python code. The same result is obtained in GNU
> Radio.
>
> Probably there is something wrong with the FFT block, but I don't know
> what it might be exactly. I've tried to use different clock rate
> ('radio' clock)
> but without success.
>
> --
> Best Regards,
> Piotr Krysik
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002dc13405f1f3913a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>One trick with the FFT block I think is that the pack=
et size needs to match the FFT size. Try something like:</div><div><br></di=
v><div>radio =3D uhd.rfnoc.RadioControl(graph.get_block(&quot;0/Radio#0&quo=
t;))</div><div>
radio.set_properties(&quot;spp=3D&quot; + str(fft_size))</div><div><br></di=
v><div>Wade</div><div><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 7, 2023 at 12:11 PM Piotr Krysi=
k &lt;<a href=3D"mailto:perper@o2.pl">perper@o2.pl</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
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

--0000000000002dc13405f1f3913a--

--===============2141074647991640779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2141074647991640779==--
