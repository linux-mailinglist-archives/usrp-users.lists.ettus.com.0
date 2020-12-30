Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C242E7B2C
	for <lists+usrp-users@lfdr.de>; Wed, 30 Dec 2020 17:54:43 +0100 (CET)
Received: from [::1] (port=36980 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kuekD-0005eh-WA; Wed, 30 Dec 2020 11:54:42 -0500
Received: from mail-qv1-f46.google.com ([209.85.219.46]:43846)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kuek9-0005ZU-9A
 for USRP-users@lists.ettus.com; Wed, 30 Dec 2020 11:54:37 -0500
Received: by mail-qv1-f46.google.com with SMTP id et9so7921339qvb.10
 for <USRP-users@lists.ettus.com>; Wed, 30 Dec 2020 08:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=7F2QFaz8HfY9MeBSBLRBQMAardlUlb0ipsqXOkI5T4s=;
 b=f/xsWSPSZau+wsXBlO3aPoAvHJvvVjWwBsxgD/3F8uvHY0ngs+VR7CwOfkuI5MMgND
 7jOcxZ4GVBUzQ7SkPggDuWJ16/dKpdCa8+dUu7lEMmzHYjwai4ei36Gm+kBFISIFyxfI
 lWAZLsW18zyCFAF9ycv9hKM1QWoqHX0mv4onNC8XxaIKyp1c5E46kGhwAw9nTfDGeVpQ
 WFvpZ4W3Q0LKaigCW5Yr07KTAK+fzP0ROSnb4O+Q8STsaU1uH/bU9+BbjDMNvTxSeJA5
 tn3zUtENCbtPMn5Pmpu2RaPWbqqMUA0OjiwuqbxSgbuwJFTn1Aowd9LBf+IQtAzJE/8q
 0ezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=7F2QFaz8HfY9MeBSBLRBQMAardlUlb0ipsqXOkI5T4s=;
 b=APkJmuCQ2dHNmZZlJLY6RxOAX3A2OMkwxlOUAXy55puUOaw+vCRkQDjseuVb1gFOiT
 lCVmEA2pwUHABMRFmgjlSmmrmFNHJgZI+Mu2tNsWx5goSSs4txdav0w3TjVhg3isOBQS
 b9oaDR8V7LqATgyWmkxNKBy0j9lVvQdm0eNTlWW7KzOIZN8MMG1RlvCMZbKS3m2QauOP
 v4KPEINF2oqmA87CeutNmRRuPDh9T7bXrS7kfuRomfoM7w/IfpTD4POXCcEqsGeH90Uk
 DF5pTktY/AxddhteM7jmsLWEmzqItrGYmzWOSvgtKpKCroBvyxCoAfVpdwhuLQhW/hbj
 MMjg==
X-Gm-Message-State: AOAM530024GM40EPb+Xl076eXa26WLDADhU9T8vavPIo+vbHVJm95fVy
 xWhHEpDxNEfKEC6BXAgifrc=
X-Google-Smtp-Source: ABdhPJzti/Drgdc71YW/J73smpSgR7euueGLhJFGdcSOvEvcXnYH8rQE4b5Oh5lAudBU0v9/8LKAfQ==
X-Received: by 2002:ad4:484c:: with SMTP id t12mr57544179qvy.58.1609347236675; 
 Wed, 30 Dec 2020 08:53:56 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id c14sm26499772qtc.90.2020.12.30.08.53.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Dec 2020 08:53:56 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 30 Dec 2020 11:53:55 -0500
Message-Id: <EF10C12F-2944-43DF-B4B8-F39AFE513751@gmail.com>
References: <CADRnH21oxdDvbCBr8=SgB5XzWbaiDh8NTd+bkSVXZ8A2_xVBfw@mail.gmail.com>
In-Reply-To: <CADRnH21oxdDvbCBr8=SgB5XzWbaiDh8NTd+bkSVXZ8A2_xVBfw@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] DMA FIFO latency with X310
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============0237541807266168313=="
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


--===============0237541807266168313==
Content-Type: multipart/alternative; boundary=Apple-Mail-C1DF2C8C-EEC4-4E7A-BD9C-1F718B5B04F5
Content-Transfer-Encoding: 7bit


--Apple-Mail-C1DF2C8C-EEC4-4E7A-BD9C-1F718B5B04F5
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Dear lord. The calculator on my iPhone only goes to 1e8 in portrait mode. I h=
ad not noticed, so I slipped a decimal place. Doh!!

Sent from my iPhone

> On Dec 30, 2020, at 11:48 AM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>=20
> =EF=BB=BF
> Simple math is not working out for me today-- Maybe it's the holidays??
>=20
> I think a 9000 *byte* packet would be 9000*8/1e9 =3D 72 microseconds
>=20
> ... However the FFT input needs 8192 *samples* which is 8192*4*8/1e9 =3D 2=
62 microseconds!
>=20
> Seems like your latency is driven by sending data over the network here
>=20
> EJ
>=20
>> On Wed, Dec 30, 2020, 11:37 AM Marcus D Leech <patchvonbraun@gmail.com> w=
rote:
>> Simple math.=20
>>=20
>> A 9000 *byte* packet is 72000 *bits*
>>=20
>> At 1.0e9 *bits/sec* that=E2=80=99s a latency of 720usec
>>=20
>>=20
>>=20
>> Sent from my iPhone
>>=20
>> > On Dec 30, 2020, at 8:55 AM, Jorge Arroyo Giganto via USRP-users <usrp-=
users@lists.ettus.com> wrote:
>> >=20
>> > =EF=BB=BF
>> > Hi EJ,
>> >=20
>> > Yes, I tried replacing the DMA FIFO with a normal FIFO and the latency g=
ot a bit worse and more irregular (I'm guessing that's due to not smoothing t=
hat burstiness in the Ethernet interface with the DMA FIFO you mentioned).
>> >=20
>> > I have just tried your graph suggestion (Host -> FFT -> FIFO -> Host) a=
nd the latency looks about the same but in the FFT block instead. Also I had=
 to use packets with spp=3D256 in the tx streamer in order to match the spp t=
hat the FFT block accepts or I would get an error when building the streamer=
. Maybe making the FFT block somehow be able to accept bigger packets would d=
ecrease the latency?
>> >=20
>> > About the theoretical latency for a packet of 8192 bytes you mention, s=
houldn't it be 8192*4 bytes assuming that each sample is a sc16 (2 bytes for=
 the real part and 2 bytes for the imaginary part of each sample)? Then this=
 latency I am experiencing would make more sense?
>> >=20
>> > Thank you so much for your feedback, I will also keep in mind your comm=
ent about the way I am using RFNoC.
>> >=20
>> > Best regards,
>> >=20
>> > Jorge
>> >=20
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-C1DF2C8C-EEC4-4E7A-BD9C-1F718B5B04F5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Dear lord. The calculator on my iPhone only=
 goes to 1e8 in portrait mode. I had not noticed, so I slipped a decimal pla=
ce. Doh!!<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr">=
<br><blockquote type=3D"cite">On Dec 30, 2020, at 11:48 AM, EJ Kreinar &lt;e=
jkreinar@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"=
cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"auto">Simple math is not working=
 out for me today-- Maybe it's the holidays??<div dir=3D"auto"><br></div><di=
v dir=3D"auto">I think a 9000 *byte* packet would be 9000*8/1e9 =3D 72 micro=
seconds</div><div dir=3D"auto"><br></div><div dir=3D"auto">... However the FF=
T input needs 8192 *samples* which is 8192*4*8/1e9 =3D 262 microseconds!</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Seems like your latency is d=
riven by sending data over the network here</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Dec 30, 2020, 11:37 AM Marcus D Leech &lt;=
<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Simple math. <br>
<br>
A 9000 *byte* packet is 72000 *bits*<br>
<br>
At 1.0e9 *bits/sec* that=E2=80=99s a latency of 720usec<br>
<br>
<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Dec 30, 2020, at 8:55 AM, Jorge Arroyo Giganto via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"norefer=
rer">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi EJ,<br>
&gt; <br>
&gt; Yes, I tried replacing the DMA FIFO with a normal FIFO and the latency g=
ot a bit worse and more irregular (I'm guessing that's due to not smoothing t=
hat burstiness in the Ethernet interface with the DMA FIFO you mentioned).<b=
r>
&gt; <br>
&gt; I have just tried your graph suggestion (Host -&gt; FFT -&gt; FIFO -&gt=
; Host) and the latency looks about the same but in the FFT block instead. A=
lso I had to use packets with spp=3D256 in the tx streamer in order to match=
 the spp that the FFT block accepts or I would get an error when building th=
e streamer. Maybe making the FFT block somehow be able to accept bigger pack=
ets would decrease the latency?<br>
&gt; <br>
&gt; About the theoretical latency for a packet of 8192 bytes you mention, s=
houldn't it be 8192*4 bytes assuming that each sample is a sc16 (2 bytes for=
 the real part and 2 bytes for the imaginary part of each sample)? Then this=
 latency I am experiencing would make more sense?<br>
&gt; <br>
&gt; Thank you so much for your feedback, I will also keep in mind your comm=
ent about the way I am using RFNoC.<br>
&gt; <br>
&gt; Best regards,<br>
&gt; <br>
&gt; Jorge<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"=
noreferrer">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-C1DF2C8C-EEC4-4E7A-BD9C-1F718B5B04F5--


--===============0237541807266168313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0237541807266168313==--

