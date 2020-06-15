Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 183EE1F9AAE
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jun 2020 16:46:48 +0200 (CEST)
Received: from [::1] (port=54822 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jkqNp-0004rh-05; Mon, 15 Jun 2020 10:46:45 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:33509)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jkqNl-0004iJ-UM
 for usrp-users@lists.ettus.com; Mon, 15 Jun 2020 10:46:41 -0400
Received: by mail-ot1-f52.google.com with SMTP id n6so13316264otl.0
 for <usrp-users@lists.ettus.com>; Mon, 15 Jun 2020 07:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IoGDAhCHs3manStE+oL1dSpueT0Zw64KD0MFXZWUA7k=;
 b=RAfl8+yvjX0MMWcY23y3XuBgEY1KeYgOcQQoev/MUaRQFxq+G3zWQ2Oci3MyW6tRRz
 08pRls3coTBZPoCTjIlhDG+tB0jCyt2qjQiw+20EUKxNOW/b1ONmVGQldFxeGWtr3oqc
 KbTtliHzwQG0P4C1+UBmGvRUbTRxSEyLBKinoLi73QQpNftsM3rD3mai2xuwnMKlG1Vi
 K3sTrmFQsAZM4eC2Uc0t2tSJtsR8aD5Rx3K87IGtF8xc359X5Lv2PZxy6Kc3WHj4YqKt
 YuTq/280x2wtF49IZBHion6zM5E09am542Mdxl5gD99HZ249JzcswpuTMMCkakyXchRN
 gf2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IoGDAhCHs3manStE+oL1dSpueT0Zw64KD0MFXZWUA7k=;
 b=ayWCuOsTwVxUqfP7/RVdTO0jsarz+cgiXW+U8GFBtJUtJvRKX+9CAZ0BkxXOcEj62t
 9YUsv2eokiviZ9zdpditBhd3CMTJ1EGvB6xHtVJeli9ZhDzn5z0qnP4sn5UYOGaph+HH
 JpIbduHRFdbcP0KK8Dc5f5OhSopOSVNTcUvgTMsRDav2NN0JQcZIm4cdFKWj0KjV0Jb0
 fswe2KtkJ0aUhvSmTwhBOqfrK6SyUnedDDonHlW8bpIAF7kLKxQj/yhrASQ9PKFJ3UVy
 PqEOsybmShj2hT62H4D8ovrjNUyAVZk96pTnj3E1g9lA2FJLVC4Bd3w0QH0+I9JqozKl
 iLRA==
X-Gm-Message-State: AOAM531cynsiFp+dne7AbBhdeDfw+Cc5Sn1gu/AkfYSgY+wwBWpVp0d3
 XUb1pM62w4OX7GpOBsZl/ULbvKUQ0QdcJz2aagj+Dw==
X-Google-Smtp-Source: ABdhPJws020kupu0XLzVNTEquPmkWbTWfl6TinRX1CpSUsw2oLCp0vRyXs/6OpGvycMoz8bAigP1IsXWMlVYG5ZfVxg=
X-Received: by 2002:a05:6830:1bcc:: with SMTP id
 v12mr20967331ota.301.1592232361020; 
 Mon, 15 Jun 2020 07:46:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZDN5+4-D150J1aWdkxM6-YKafqO=X43ViUfU81sRR9_+jNOg@mail.gmail.com>
 <5D9260B7-4E0A-4A53-AE01-EDAD04CB496C@gmail.com>
 <CAFZDN5LAj0XC3VNoY=OXfXuZHK5Ph6z2suKSt3rN8F3fNTokKg@mail.gmail.com>
In-Reply-To: <CAFZDN5LAj0XC3VNoY=OXfXuZHK5Ph6z2suKSt3rN8F3fNTokKg@mail.gmail.com>
Date: Mon, 15 Jun 2020 10:45:50 -0400
Message-ID: <CAB__hTR5LJOBDX=ki0=GEd_WP2bvGV89edn5n19Aa655aAR+3A@mail.gmail.com>
To: Hai Nguyen <hai.n.nguyen204@gmail.com>
Subject: Re: [USRP-users] Phase calibration of multiple B210s
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6740183771897318767=="
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

--===============6740183771897318767==
Content-Type: multipart/alternative; boundary="0000000000004789e705a8207c2a"

--0000000000004789e705a8207c2a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

See this link
<https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices=
>which
shows the phase sync capability for the various X310 daughterboards such as
UBX, SBX, CBX, and WBX.  Note that the CBX does not have phase sync and the
WBX has a 180 deg ambiguity.
Rob

On Thu, Jun 11, 2020 at 1:21 AM Hai Nguyen via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thank you very much for clearing that up.
>
> -Hai
>
> On Thu, Jun 11, 2020 at 1:11 AM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> There are critical differences. The X310 was designed to provide a phase
>> coherent infrastructure=E2=80=94with that coherence working across multi=
ple units.
>>
>> The WBX and CBX both have phase resynch which helps tremendously. The
>> TwinRx goes further and allows LO sharing, which provides even better
>> fidelity of phase coherence.
>>
>> Sent from my iPhone
>>
>> On Jun 11, 2020, at 12:57 AM, Hai Nguyen <hai.n.nguyen204@gmail.com>
>> wrote:
>>
>> =EF=BB=BF
>> Thank you Marcus. I feel it will be the same story if I use two X310s?
>> I look a bit at the project gr-doa and as I understand it seems to just
>> require the calibration once. I'm not sure if there is a critical
>> difference between the WBX/CBX vs. TwinRX for this task though.
>>
>>
>> On Thu, Jun 11, 2020 at 12:05 AM Marcus D Leech <patchvonbraun@gmail.com=
>
>> wrote:
>>
>>> No. It is the nature of PLL synthesizers that they won=E2=80=99t land a=
t the
>>> same phase offset every time they=E2=80=99re tuned.
>>>
>>> In addition the DDC components in the FPGA aren=E2=80=99t necessarily g=
oing to
>>> be at the same phase offset every time.
>>>
>>> You=E2=80=99ll need to have a phase calibration on every run.
>>>
>>> Sent from my iPhone
>>>
>>> > On Jun 11, 2020, at 12:01 AM, Hai Nguyen via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>> >
>>> > =EF=BB=BF
>>> > Hello,
>>> >
>>> > I'm trying to do phase calibration for two B210s for a DoA
>>> application. I use a known tone with splitter and equal-length cables. =
The
>>> problem I'm having is, the phase difference between two corresponding
>>> channels of the USRP (for example, RX2 of radio A) seems to change not =
just
>>> between the resets of the USRPs, but also between the runs of the UHD
>>> program.
>>> >
>>> > Is this possible to phase-calibrate the two B210s?
>>> >
>>> > Thank you and best regards,
>>> > Hai
>>> > _______________________________________________
>>> > USRP-users mailing list
>>> > USRP-users@lists.ettus.com
>>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004789e705a8207c2a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">See this <a href=3D"https://kb.ettus.com/=
Synchronization_and_MIMO_Capability_with_USRP_Devices">link </a>which shows=
 the phase sync capability for the various X310 daughterboards such as UBX,=
 SBX, CBX, and WBX.=C2=A0 Note that the CBX does not have phase sync and th=
e WBX has a 180 deg ambiguity.<div>Rob</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 11, 2020 at 1:21 AM=
 Hai Nguyen via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thank you very much for c=
learing that up.</div><div><br></div><div>-Hai<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 11, 202=
0 at 1:11 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" =
target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">There are critic=
al differences. The X310 was designed to provide a phase coherent infrastru=
cture=E2=80=94with that coherence working across multiple units.<div><br></=
div><div>The WBX and CBX both have phase resynch which helps tremendously. =
The TwinRx goes further and allows LO sharing, which provides even better f=
idelity of phase coherence.=C2=A0</div><div><div><br><div dir=3D"ltr">Sent =
from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 1=
1, 2020, at 12:57 AM, Hai Nguyen &lt;<a href=3D"mailto:hai.n.nguyen204@gmai=
l.com" target=3D"_blank">hai.n.nguyen204@gmail.com</a>&gt; wrote:<br><br></=
blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div d=
ir=3D"ltr"><div dir=3D"ltr">Thank you Marcus. I feel it will be the same st=
ory if I use two X310s?</div><div>I look a bit at the project gr-doa and as=
 I understand it seems to just require the calibration once. I&#39;m not su=
re if there is a critical difference between the WBX/CBX vs. TwinRX for thi=
s task though.</div><div><br></div><div><br></div><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 11, 2020 at 12:05 AM Ma=
rcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">No. It is the nature of PLL synthesizers that the=
y won=E2=80=99t land at the same phase offset every time they=E2=80=99re tu=
ned. <br>
<br>
In addition the DDC components in the FPGA aren=E2=80=99t necessarily going=
 to be at the same phase offset every time.<br>
<br>
You=E2=80=99ll need to have a phase calibration on every run. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Jun 11, 2020, at 12:01 AM, Hai Nguyen via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello,<br>
&gt; <br>
&gt; I&#39;m trying to do phase calibration for two B210s for a DoA applica=
tion. I use a known tone with splitter and equal-length cables. The problem=
 I&#39;m having is, the phase difference between two corresponding channels=
 of the USRP (for example, RX2 of radio A) seems to change not just between=
 the resets of the USRPs, but also between the runs of the UHD program.<br>
&gt; <br>
&gt; Is this possible to phase-calibrate the two B210s?<br>
&gt; <br>
&gt; Thank you and best regards,<br>
&gt; Hai<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</div></blockquote></div></div></div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000004789e705a8207c2a--


--===============6740183771897318767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6740183771897318767==--

