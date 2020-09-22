Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 021F0274A41
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 22:42:47 +0200 (CEST)
Received: from [::1] (port=59382 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKp7c-0003sb-IX; Tue, 22 Sep 2020 16:42:44 -0400
Received: from mail-lj1-f174.google.com ([209.85.208.174]:36095)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <chfl5156@colorado.edu>)
 id 1kKp7X-0003cB-Tv
 for USRP-users@lists.ettus.com; Tue, 22 Sep 2020 16:42:40 -0400
Received: by mail-lj1-f174.google.com with SMTP id r24so15307785ljm.3
 for <USRP-users@lists.ettus.com>; Tue, 22 Sep 2020 13:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=colorado.edu; s=google;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=lSwVCqsWB3O8ovF1n8KhaZq25VvbrqWBLA8rk+GXOuw=;
 b=ai0rwz6h8PEE9QS38SqnXXfQlqT/JZ/owXZno/TRavZ5zPQRMiFeSbRUE98t7EEoo8
 WJ3iTUVqX37ZJoRmNiH92HEwg5pjFD/4u0LxUOngWzuKQDDCFSA7njkkY/s9o47AW0BI
 XeRu4zeiiZG8FDk/CXxWSmJvi+8zd9PCTbHaQt/fmuu9MOHFWD40CzMRxHpxFutYR7w3
 2nitM82/sgYko9LfGrwsacKPO4d14ueJz6TGFfk/zkGOff5q3190uvciVNOqUANqrwvZ
 +VP8fvNdKPQ46+YDG4SdY3/m08dFxzacKLAX4id8lcakxwBgOznBpNSQ3Es9+/enoAvf
 46Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=lSwVCqsWB3O8ovF1n8KhaZq25VvbrqWBLA8rk+GXOuw=;
 b=bDSR1MxWH78UopeMqQlVFfa1i0K0eIGNSbUz2U4lgWjPP46nByyZkft8t3/GovcHK/
 JVdzFKHfgxyxBVSCnSNGIYQUb09/94/+l8wtfmSzj0C7COkqkfP+ayDjjRQd+aGaXEDr
 DuDZKwdVkeV1F0LLZAxXV3+PZBNGhKtbhBbfsrQt9wY/TY5940isXW5RVWrL68nH2Tnu
 SxvB47/nqc79IFqISX/J1AzNE6QHoFhxBhc9WC/ZbDSYG4sbdNYkcQum8eJpYjdyxGPG
 LRAM0J6O8gnspdWYvFX5u3Q9l9gEGRUiXkoiWxlQXf88mCzBBI27ktg1BEZ1LKSyMQ7o
 ZwdA==
X-Gm-Message-State: AOAM530t2Ld/OF1DHX9fl1je6mV3ot5XvCPbVSu0JTD8LkKdUXGmGJcG
 E0PeKZagd3gHabmUDIn8bo1591LEIpRj6H2jz7yNVw==
X-Google-Smtp-Source: ABdhPJwH3XZljJDcoZ6/OTItruPLI4h12qHTnnNmYskwWfttwqQr7GDJQNl3Fvg/v6Yrp/ye4o6qFlNSXpzb+Ufnau4=
X-Received: by 2002:a2e:b615:: with SMTP id r21mr1886111ljn.341.1600807318639; 
 Tue, 22 Sep 2020 13:41:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAM+cdhJsqS=h8E1KruwNC0gHk-fvb6TLt_r64W9aR4Vk4ZZ22Q@mail.gmail.com>
 <0A090987-67A8-41CB-ACF6-66356B789250@gmail.com>
In-Reply-To: <0A090987-67A8-41CB-ACF6-66356B789250@gmail.com>
Date: Tue, 22 Sep 2020 14:41:47 -0600
Message-ID: <CAM+cdh+6dRDx1wLytKDhi_oOSkUxse71qzQW7gEXWN39RUdrNQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] Ettus N310: Tuning in GNU Radio
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Christopher Flood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christopher.Flood@colorado.edu
Content-Type: multipart/mixed; boundary="===============0434334277423648396=="
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

--===============0434334277423648396==
Content-Type: multipart/alternative; boundary="00000000000094fd7e05afecff54"

--00000000000094fd7e05afecff54
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree with you there. I'm using a Rb external reference that I believe
the PLLs are locking to based on some signal transmission tests and looking
at signals on an oscilloscope. With the Rb ref I would expect the frequency
to be off by ~.001Hz (or smaller) out of 10MHz.

Some more details about the test I'm currently running, if that helps: I am
putting the 10MHz Rb ref into the external ref of the N310. I am then
generating a 10MHz signal on the TX port of the SDR and feeding it right
back into an RX port. Both the UHD Source and UHD Sink in GNU radio are
being told to use the external clock reference. I know 10MHz is towards the
low end of this device's capability, so I tried the same test with 20 / 30
/ 40MHz and got similar results.

-Chris



On Tue, Sep 22, 2020 at 2:33 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> 1Hz in 10Mhz is 0.1PPM which is within the clock accuracy spec of the N31=
0
> Device without an external reference.
>
> Sent from my iPhone
>
> > On Sep 22, 2020, at 4:29 PM, Christopher Flood via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Hi all,
> >
> > I had some questions about the tuning accuracy I should expect in GNU
> radio. I have a 10MHz sinusoidal signal coming into an RX port on the N31=
0.
> I am interfacing with the SDR through GNU radio and the UHD: USRP Source
> block. In the RF Options box of the source block I am using the following
> command as the center frequency: uhd.tune_request(fCenter, loOff) where
> fCenter =3D 10MHz + 100Hz and loOff =3D 250kHz. The resulting signal from=
 this
> operation is nominally a 100Hz signal. However, when I make phase /
> frequency measurements of this signal, it is off by ~1Hz, which seems hig=
h.
> >
> > I would expect the measured frequency offset of the incoming signal to
> reflect the stability of the incoming signal. However, based on the sourc=
e
> of the incoming signal I have reason to believe that this offset is too
> large.
> >
> > Has anyone else had problems with this? How accurate should I expect th=
e
> tuning process to be?
> >
> > Thanks,
> >
> > Chris
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> >
> http://secure-web.cisco.com/103DPwdHvrQiLUFCivbesUG3Wj_eG-giBncXRDjPvJ3Nd=
z2_8faBf4XY4oMFQyrX6yBfHkDkwucVadnKtt1oq8HvthRqAwg5lczNn0KCvPgpF4YkdQ1Q85aT=
NRziWxTjtUof4CdXNPM86RPyf-HcC7Cah0RdBQzO46U7hU1p0BGAolSiwfmQP0_80ocfmYc_Low=
0u-2a7C0nfzyV5Uzy2Z0mXcIsR2ipxycYsM_swWabSM7DOgdrb880-v0ES3b5gPMkoO_usz_-Tl=
Js17p3xdrpoDAaB1R3BBmNeow7NiWG7eN42VtGdm9RVmkQjTnQNiFHqyDISbcIJkHa6OGbD0ZTE=
QVazZTQhOQ1K5KoNYmpRn0KeRDI72lAAkT47Z1qPklPZ_5zBHWbDJFN9PWJ1KGKUHE14zI4x1De=
NEdC_Lp_LGBlHftB-R0F7anZ7z6rKF-BCKXT2WB4nQqZGox2Fww/http%3A%2F%2Flists.ettu=
s.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com
>
>

--00000000000094fd7e05afecff54
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I agree with you there. I&#39;m using a Rb external refere=
nce that I believe the PLLs are locking to based on some signal transmissio=
n tests and looking at signals on an oscilloscope. With the Rb ref I would =
expect the frequency to be off by ~.001Hz (or smaller) out of 10MHz.=C2=A0<=
div><br></div><div>Some more details about the test I&#39;m currently runni=
ng, if that helps: I am putting the 10MHz Rb ref into the external ref of t=
he N310. I am then generating a 10MHz signal on the TX port of the SDR and =
feeding it right back into an RX port. Both the UHD Source and UHD Sink in =
GNU radio are being told to use the external clock reference. I know 10MHz =
is towards the low end of this device&#39;s capability, so I tried the same=
 test with 20 / 30 / 40MHz and got similar results.=C2=A0</div><div><br></d=
iv><div>-Chris<br><div><br></div><div><br></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 22, 2020=
 at 2:33 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">p=
atchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">1Hz in 10Mhz is 0.1PPM which is within the clock accu=
racy spec of the N310<br>
Device without an external reference. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Sep 22, 2020, at 4:29 PM, Christopher Flood via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I had some questions about the tuning accuracy I should expect in GNU =
radio. I have a 10MHz sinusoidal signal coming into an RX port on the N310.=
 I am interfacing with the SDR through GNU radio and the UHD: USRP Source b=
lock. In the RF Options box of the source block I am using the following co=
mmand as the center frequency: uhd.tune_request(fCenter, loOff) where fCent=
er =3D 10MHz + 100Hz and loOff =3D 250kHz. The resulting signal from this o=
peration is nominally a 100Hz signal. However, when I make phase / frequenc=
y measurements of this signal, it is off by ~1Hz, which seems high. <br>
&gt; <br>
&gt; I would expect the measured frequency offset of the incoming signal to=
 reflect the stability of the incoming signal. However, based on the source=
 of the incoming signal I have reason to believe that this offset is too la=
rge. <br>
&gt; <br>
&gt; Has anyone else had problems with this? How accurate should I expect t=
he tuning process to be? <br>
&gt; <br>
&gt; Thanks,<br>
&gt; <br>
&gt; Chris<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://secure-web.cisco.com/103DPwdHvrQiLUFCivbesUG3Wj_eG-g=
iBncXRDjPvJ3Ndz2_8faBf4XY4oMFQyrX6yBfHkDkwucVadnKtt1oq8HvthRqAwg5lczNn0KCvP=
gpF4YkdQ1Q85aTNRziWxTjtUof4CdXNPM86RPyf-HcC7Cah0RdBQzO46U7hU1p0BGAolSiwfmQP=
0_80ocfmYc_Low0u-2a7C0nfzyV5Uzy2Z0mXcIsR2ipxycYsM_swWabSM7DOgdrb880-v0ES3b5=
gPMkoO_usz_-TlJs17p3xdrpoDAaB1R3BBmNeow7NiWG7eN42VtGdm9RVmkQjTnQNiFHqyDISbc=
IJkHa6OGbD0ZTEQVazZTQhOQ1K5KoNYmpRn0KeRDI72lAAkT47Z1qPklPZ_5zBHWbDJFN9PWJ1K=
GKUHE14zI4x1DeNEdC_Lp_LGBlHftB-R0F7anZ7z6rKF-BCKXT2WB4nQqZGox2Fww/http%3A%2=
F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com" rel=
=3D"noreferrer" target=3D"_blank">http://secure-web.cisco.com/103DPwdHvrQiL=
UFCivbesUG3Wj_eG-giBncXRDjPvJ3Ndz2_8faBf4XY4oMFQyrX6yBfHkDkwucVadnKtt1oq8Hv=
thRqAwg5lczNn0KCvPgpF4YkdQ1Q85aTNRziWxTjtUof4CdXNPM86RPyf-HcC7Cah0RdBQzO46U=
7hU1p0BGAolSiwfmQP0_80ocfmYc_Low0u-2a7C0nfzyV5Uzy2Z0mXcIsR2ipxycYsM_swWabSM=
7DOgdrb880-v0ES3b5gPMkoO_usz_-TlJs17p3xdrpoDAaB1R3BBmNeow7NiWG7eN42VtGdm9RV=
mkQjTnQNiFHqyDISbcIJkHa6OGbD0ZTEQVazZTQhOQ1K5KoNYmpRn0KeRDI72lAAkT47Z1qPklP=
Z_5zBHWbDJFN9PWJ1KGKUHE14zI4x1DeNEdC_Lp_LGBlHftB-R0F7anZ7z6rKF-BCKXT2WB4nQq=
ZGox2Fww/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lis=
ts.ettus.com</a><br>
<br>
</blockquote></div>

--00000000000094fd7e05afecff54--


--===============0434334277423648396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0434334277423648396==--

