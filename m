Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99ADC1F613C
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 07:21:39 +0200 (CEST)
Received: from [::1] (port=43190 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjFei-0000nb-UN; Thu, 11 Jun 2020 01:21:36 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:45603)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hai.n.nguyen204@gmail.com>)
 id 1jjFee-0000ia-38
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 01:21:32 -0400
Received: by mail-qt1-f174.google.com with SMTP id y1so3701607qtv.12
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 22:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MZD6DLW51Dw8r8Vco10HnNkWHXHkwlY/aZJdhezH4TU=;
 b=ZLXKXlhKTDlQTDvOtKp3AFcRNiVe6YOzCSQGg7OH7rXZLPZq+gm/ZLgCTF/TiC1y9H
 TteE9c1WvNLED/0flAw+QqEoCMBwEBkW/ZtZLE6SmeywyUaNk+uUxlVEz/CFq6NG8Oa5
 UNvT9NMP/6EwzY9QIle6D10eoKDhY3SqTVICc1VaYtCHqmeykIwW2+adclbIPNPb6U3Q
 F/ZxCbYpbm8nxzXX1uycnBE1QSCWnVa4wGvdtyu0uxOSjaDs5kInvZ3gVpuyxOkRiWey
 jpreCaucayWY4W+iPX/F3wHV05iifGMLuR4tzIYDvlVoWRfcc+yf+JzYd123jsZhGFTr
 xwug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MZD6DLW51Dw8r8Vco10HnNkWHXHkwlY/aZJdhezH4TU=;
 b=o6xWjGPcIPcJJOZ6gb1mPP5oXdJL6nMYiFeYKCxMZlISNQzrg+t3wTJfBoCvN/e6d/
 OWIBb1DT/YYawy0t5R0iwdelQcc9KGujTkYbG3icsUl9oCFVUIVwkIyjDyXsPeWy7t7w
 M/AwXLYj4bFL65qUgk7HXgfXZ/AJ/Oo00M94JrRfTZK51Nirj5t1bzT1ihGKFbYaouGm
 9r/Y7QCxbBgAIFrdJfJKr3s0zkt9nA0vCCgT8nIS93Z5cCQ8YuSRX0WzIUCSb+RA/t7r
 08BPob2SD0oakxXwAWi0rAOkGPmMmg3G1HxgfQ3KXmqBgEfrKbxL/dBgHwR90Ux6qH4w
 AeZA==
X-Gm-Message-State: AOAM5335OJVXcllIDmZzP+vidI5QA422KWDmEOPArTj1bgQP1IJGfcmB
 IGBKwQBlMdd2OpDS203m9CCU+h0c13EdEUXhSQo=
X-Google-Smtp-Source: ABdhPJxwlIcRyG9vT60L1uc9BjkerQKToBnng7LtgAPrNFgj9CTb6wdoyASPQybbWHfBI/inKqT8P80UGxP3/qbyUY4=
X-Received: by 2002:ac8:1ab9:: with SMTP id x54mr6616898qtj.371.1591852851500; 
 Wed, 10 Jun 2020 22:20:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZDN5+4-D150J1aWdkxM6-YKafqO=X43ViUfU81sRR9_+jNOg@mail.gmail.com>
 <5D9260B7-4E0A-4A53-AE01-EDAD04CB496C@gmail.com>
In-Reply-To: <5D9260B7-4E0A-4A53-AE01-EDAD04CB496C@gmail.com>
Date: Thu, 11 Jun 2020 01:20:40 -0400
Message-ID: <CAFZDN5LAj0XC3VNoY=OXfXuZHK5Ph6z2suKSt3rN8F3fNTokKg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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
From: Hai Nguyen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hai Nguyen <hai.n.nguyen204@gmail.com>
Content-Type: multipart/mixed; boundary="===============5779038605015031670=="
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

--===============5779038605015031670==
Content-Type: multipart/alternative; boundary="000000000000bf9c1805a7c81fe2"

--000000000000bf9c1805a7c81fe2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much for clearing that up.

-Hai

On Thu, Jun 11, 2020 at 1:11 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> There are critical differences. The X310 was designed to provide a phase
> coherent infrastructure=E2=80=94with that coherence working across multip=
le units.
>
> The WBX and CBX both have phase resynch which helps tremendously. The
> TwinRx goes further and allows LO sharing, which provides even better
> fidelity of phase coherence.
>
> Sent from my iPhone
>
> On Jun 11, 2020, at 12:57 AM, Hai Nguyen <hai.n.nguyen204@gmail.com>
> wrote:
>
> =EF=BB=BF
> Thank you Marcus. I feel it will be the same story if I use two X310s?
> I look a bit at the project gr-doa and as I understand it seems to just
> require the calibration once. I'm not sure if there is a critical
> difference between the WBX/CBX vs. TwinRX for this task though.
>
>
> On Thu, Jun 11, 2020 at 12:05 AM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> No. It is the nature of PLL synthesizers that they won=E2=80=99t land at=
 the same
>> phase offset every time they=E2=80=99re tuned.
>>
>> In addition the DDC components in the FPGA aren=E2=80=99t necessarily go=
ing to be
>> at the same phase offset every time.
>>
>> You=E2=80=99ll need to have a phase calibration on every run.
>>
>> Sent from my iPhone
>>
>> > On Jun 11, 2020, at 12:01 AM, Hai Nguyen via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>> >
>> > =EF=BB=BF
>> > Hello,
>> >
>> > I'm trying to do phase calibration for two B210s for a DoA application=
.
>> I use a known tone with splitter and equal-length cables. The problem I'=
m
>> having is, the phase difference between two corresponding channels of th=
e
>> USRP (for example, RX2 of radio A) seems to change not just between the
>> resets of the USRPs, but also between the runs of the UHD program.
>> >
>> > Is this possible to phase-calibrate the two B210s?
>> >
>> > Thank you and best regards,
>> > Hai
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000bf9c1805a7c81fe2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you very much for clearing that up.</div><div><=
br></div><div>-Hai<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Jun 11, 2020 at 1:11 AM Marcus D Leec=
h &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"auto">There are critical differences. The X310 was designed to pro=
vide a phase coherent infrastructure=E2=80=94with that coherence working ac=
ross multiple units.<div><br></div><div>The WBX and CBX both have phase res=
ynch which helps tremendously. The TwinRx goes further and allows LO sharin=
g, which provides even better fidelity of phase coherence.=C2=A0</div><div>=
<div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><bl=
ockquote type=3D"cite">On Jun 11, 2020, at 12:57 AM, Hai Nguyen &lt;<a href=
=3D"mailto:hai.n.nguyen204@gmail.com" target=3D"_blank">hai.n.nguyen204@gma=
il.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><=
div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div dir=3D"ltr">Thank you Marcus=
. I feel it will be the same story if I use two X310s?</div><div>I look a b=
it at the project gr-doa and as I understand it seems to just require the c=
alibration once. I&#39;m not sure if there is a critical difference between=
 the WBX/CBX vs. TwinRX for this task though.</div><div><br></div><div><br>=
</div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Jun 11, 2020 at 12:05 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">No. It is the natu=
re of PLL synthesizers that they won=E2=80=99t land at the same phase offse=
t every time they=E2=80=99re tuned. <br>
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

--000000000000bf9c1805a7c81fe2--


--===============5779038605015031670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5779038605015031670==--

