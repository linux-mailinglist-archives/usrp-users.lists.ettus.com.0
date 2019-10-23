Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC07FE2483
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2019 22:22:22 +0200 (CEST)
Received: from [::1] (port=51266 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNN9B-0004II-1F; Wed, 23 Oct 2019 16:22:21 -0400
Received: from mail-lj1-f181.google.com ([209.85.208.181]:37370)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iNN97-0004Ag-Mk
 for USRP-users@lists.ettus.com; Wed, 23 Oct 2019 16:22:17 -0400
Received: by mail-lj1-f181.google.com with SMTP id l21so22516262lje.4
 for <USRP-users@lists.ettus.com>; Wed, 23 Oct 2019 13:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AE4DRqfY4ttawDNXelJ8/EIldSxuXLCno6RJm27Eymg=;
 b=lMoBkBR+rhvAhvgsEEvmZ8ru/mNm2BHzxNCTqetpSApK62QY57xIkv3290T7+WO9/x
 GIDwL/0Cu3z74Eci017OzX7YwotaH9ltRjB04rIT5N4/OvlOJDEW4/SxW8NI1YqNK+k9
 sbQfJ3nAsnt78ztJfqpmV1lOXpBMF3dfvpPe3QXvblaw3kWr608aJ/SJtJ8ldM+TsXMo
 fe5axfwIfC3dVIIMyWthmWgNcW+ltlyRjR+35Nggcsc9Nn5j9dulfhcGgQNUli5J7UIB
 gEPA7CwZtkC9j1dfLBla41ewVpwP8bGby7uk/7meeToFj8cQaz6L6Fi1t5UZQRVe/cPO
 iSaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AE4DRqfY4ttawDNXelJ8/EIldSxuXLCno6RJm27Eymg=;
 b=OMJjAGo1DmJS/Wgb/SPY7Di2Oky3DrzhgPg17s2nlDx2f1mDSRyIu0CPl6f/Q5AubD
 b2C2jqAQ88Xe7jCNTwA64K+U2sBAu1iKUGnO8xww+JizIWIbbWSZySG8DOIEgiiApyRj
 cPzpuUvvu4HnEESbHSh9HsyXqNENAZyUSm1m1a0nBtJ8EnEfp7T7XDs4elTu0yRQWbe6
 moGUGyKUbwWKufjWNcQQOA+vd2aTWI1EzzzFRFpZBjiEX5Tyw9c8y3NOFztVCHQVDMAJ
 4hN7BcAwhdCqEyms4F6oGy/EkW8r/JpHV7QM1D2GABBMEwHTSZ+58fJuyHMHjU6iRMmU
 u2Tg==
X-Gm-Message-State: APjAAAWrZA7Uc/5DTaceif9wY38UP8VXGpGyx/c3BDjMeEgYswYNoCM3
 ETkn5aQGAaMzJEmKw59AzQwKO6axVpnVRTrAIiT1G/+O
X-Google-Smtp-Source: APXvYqyx+Zb/R90wL30Gc6MM7DsXqyj2oW3Pi4FCygacMbYO3O+jh2SSvMypwjE8x+z+U6Ohpu9GCG2LkBxqKMPagU0=
X-Received: by 2002:a2e:6817:: with SMTP id c23mr4338770lja.91.1571862096498; 
 Wed, 23 Oct 2019 13:21:36 -0700 (PDT)
MIME-Version: 1.0
References: <D71B2B9BB39CE44CACCAB6646DF20CFD48D9E17E@exmbx01>
In-Reply-To: <D71B2B9BB39CE44CACCAB6646DF20CFD48D9E17E@exmbx01>
Date: Wed, 23 Oct 2019 15:21:24 -0500
Message-ID: <CANf970a5E2H_1=D5D_nE8TWmGv2iDXrGgy+df7AUWw5VuBWyxg@mail.gmail.com>
To: =?UTF-8?B?U2tvcnN0YWQsSsO4cm4=?= <Joern.Skorstad@nkom.no>
Subject: Re: [USRP-users] E310 LO offset problem
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2708048905987887130=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2708048905987887130==
Content-Type: multipart/alternative; boundary="000000000000e5e131059599a961"

--000000000000e5e131059599a961
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Does that "ghost" signal change offset as you increase and decrease your
sample rate?

-Sam

On Tue, Oct 22, 2019 at 2:16 AM Skorstad,J=C3=B8rn via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi list,
>
>
>
> I am writing a C++ software which will scan through a given frequency
> range and perform an fft. The software seems to do what it should, howeve=
r
> something weird happens when using LO offset tuning. With the following
> settings all looks correct:
>
>
>
> Sample rate 6.4M =E2=80=93 master clock 51.2M =E2=80=93 512 byte num_samp=
les/binsize =E2=80=93
> offset 0. However I can clearly see the DC peak for every =C2=ABjump=C2=
=BB in
> frequency.
>
>
>
> With the same settings as above and a 3.2M offset there is a =C2=ABghost=
=C2=BB
> signal 3.2MHz below the real signal, which mirrors the real signal with
> slightly lower amplitude. This happens everywhere in the spectrum where
> solid signals (approx 40-50 dBuV) are present. Using the command
> tune_request(freq, offset) and usrp->set_rx_freq(tune_request) to set
> frequencies. Have also tried with different gain settings from 0-40, no
> change. Have also tried with 10 dB attenuator between antenna and the
> radio, no change.
>
>
>
> The same happens on other sample rates and offsets as well, the ghost
> signal is always the same as the offset (+ or -). I am using UHD_3.14.1.
> Have also tried changing rx_bandwidth without any change.
>
>
>
> Is it possible to use LO offset and eliminate the =C2=ABghost=C2=BB signa=
ls, or is
> this some radio/DSP limitation? I have pictures showing the problem
> clearly, I can send directly by email if necessary.
>
>
>
> Thanks,
>
> Jorn
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e5e131059599a961
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Does that &quot;ghost&quot; signal change offset as you increas=
e and decrease your sample rate?</div><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" sty=
le=3D"font-family:verdana,sans-serif">-Sam</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 22, 2019 at 2:1=
6 AM Skorstad,J=C3=B8rn via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">





<div lang=3D"NO-BOK">
<div class=3D"gmail-m_-1529939928815879325WordSection1">
<p class=3D"MsoNormal">Hi list,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am writing a C++ software which will scan through =
a given frequency range and perform an fft. The software seems to do what i=
t should, however something weird happens when using LO offset tuning. With=
 the following settings all looks
 correct:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Sample rate 6.4M =E2=80=93 master clock 51.2M =E2=80=
=93 512 byte num_samples/binsize =E2=80=93 offset 0. However I can clearly =
see the DC peak for every =C2=ABjump=C2=BB in frequency.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">With the same settings as above and a 3.2M offset th=
ere is a =C2=ABghost=C2=BB signal 3.2MHz below the real signal, which mirro=
rs the real signal with slightly lower amplitude. This happens everywhere i=
n the spectrum where solid signals (approx 40-50
 dBuV) are present. Using the command tune_request(freq, offset) and usrp-&=
gt;set_rx_freq(tune_request) to set frequencies. Have also tried with diffe=
rent gain settings from 0-40, no change. Have also tried with 10 dB attenua=
tor between antenna and the radio,
 no change.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The same happens on other sample rates and offsets a=
s well, the ghost signal is always the same as the offset (+ or -). I am us=
ing UHD_3.14.1. Have also tried changing rx_bandwidth without any change.
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is it possible to use LO offset and eliminate the =
=C2=ABghost=C2=BB signals, or is this some radio/DSP limitation? I have pic=
tures showing the problem clearly, I can send directly by email if necessar=
y.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Jorn <u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;Arial=
&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e5e131059599a961--


--===============2708048905987887130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2708048905987887130==--

