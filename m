Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF42509345
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 01:00:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 048B6384536
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 19:00:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650495657; bh=m7KrlubK1oroSqA8IctBff4ZrGaDYxhNBgen1WlQEjA=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YvXz5T0uMlcWjH1++U8sO8XRCYcciwL0WwzFW9/uFX6kWudJ3sQ1ibVE31XabBdw/
	 T/ZghPyd97yEeFC6oD0n70qJBlLw9iBr/s4su1K3nAhs1+ZW/yFCPk8GIrQ4B3a6qm
	 RWefCzFHvmFq0UjgotGBx8RFkL8QLEeY1yvCXX1ZnEYiIbBAM4041C2BRyaNqMu89a
	 A4A1J1NugCacIBr6qeVFzS/1vt2BniVnm/HzzfY0qGP0sZY2sjJytJQS0bosIsg9rW
	 4uv2QJR9w9zCpOxtIf5n2F6VR25nHglVI+9lStYWz4bfq1hs3SYXprU3MJzniECAh3
	 C27JiaXqXIcUg==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id CE552383BA6
	for <USRP-users@lists.ettus.com>; Wed, 20 Apr 2022 18:59:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="btzRIJor";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id b17so2447295qvf.12
        for <USRP-users@lists.ettus.com>; Wed, 20 Apr 2022 15:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=zSCkEZ9Mrl/ynFq468aDd//AHkTCsRFRZ2ficqkMkpA=;
        b=btzRIJor9Rxmd/w9zE5h3MpTv5DsG5G1IIXBpmyKZlkawg6fRgqK/pqIMcP1bWdiBR
         YjSTcHQ8dw+Av6obR8ACwF/Wfs/AlqFDcoIe6CFl6OW6CvYpd1FfHSMORpGOznlD3npj
         0kLr5DbRZnxrvGBxbnUtC3TnrVXOH/sJZw0Z88M3d9LKGBgvZM6t0jhDMdAr0zmHs1+P
         gtzq5l7sBSMUvZ7ACmIPpDDgbeiieAdTlrBPj14qBFrmh423V/JS6ugucKAP396P3nYb
         ufMXWzZmcjr+iOO0v7hghvMpHKtdENEk3KOeRfAl/z+wizVOMiLx8SPQBLq6UgLo7Gzo
         umgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=zSCkEZ9Mrl/ynFq468aDd//AHkTCsRFRZ2ficqkMkpA=;
        b=r8WAUgi+k/yJ8x/15TZomvhNWj28gHmOCrHE7r7T9Yyo/bl1fdRSMEJdQkZPANF5Qy
         YL//XWR8op5K2Ed9rvuWKG8qMNLGYwxfK7VveuQ08khz9IOGh91M+Xdf7Mz6IZ/zasQr
         ui6GXFRFvLiaS8cmgF2EH/F24LR94Xs0fHXG3pN64/5R3U+288XnvgA9+O+m4MLJQXql
         NG86w0cKU+EdAIJ+KjXKIgGS+HaNGYBaYrkvsce2x7dZUnAmpQt4Mst/7mKE7FxBQ875
         t5sa7r9+FJLiIryXYN0igrXzNO8HH9sOTWy9mZKHZ3HV3bICZJrW/w9RgItVL3xcbg7Y
         BAeg==
X-Gm-Message-State: AOAM533dl6oGdJJdKFoU7YJyelppWmkGt9JtCYl0FJbLYxVxz9MuMXbS
	W4uOyJr4N+R7/7YqJo+9K8ZO32T6BVM=
X-Google-Smtp-Source: ABdhPJzOtjjOcZfVeo22QB7GBN8ovqF0cP+EzmGd1bOGdYSsTX+MEMKAEfSdKcpUWMyD23GI7DSG/A==
X-Received: by 2002:a05:6214:2aaf:b0:446:70be:8377 with SMTP id js15-20020a0562142aaf00b0044670be8377mr8515627qvb.105.1650495589102;
        Wed, 20 Apr 2022 15:59:49 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id n11-20020a05622a11cb00b002f344f11849sm1100618qtk.71.2022.04.20.15.59.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 15:59:48 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 20 Apr 2022 18:59:47 -0400
Message-Id: <6B3CD8AE-0123-4987-B4D8-9E7C5A2EF737@gmail.com>
References: <CAJGEdAi8=EMDur4tFwk+D4sCiCFNdRGoXzbHJxJEZ6cc90iqAg@mail.gmail.com>
In-Reply-To: <CAJGEdAi8=EMDur4tFwk+D4sCiCFNdRGoXzbHJxJEZ6cc90iqAg@mail.gmail.com>
To: Dario Fertonani <dario.fertonani@gmail.com>
X-Mailer: iPhone Mail (19E258)
Message-ID-Hash: 7IPI3HAOVICWESKIOLOLEK5BSM6BCFRX
X-Message-ID-Hash: 7IPI3HAOVICWESKIOLOLEK5BSM6BCFRX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 broken on UHD versions newer than 3.15.0?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7IPI3HAOVICWESKIOLOLEK5BSM6BCFRX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1354485266381709975=="


--===============1354485266381709975==
Content-Type: multipart/alternative; boundary=Apple-Mail-A8D51F6C-EAA3-4DAF-84CE-B44C3F937B86
Content-Transfer-Encoding: 7bit


--Apple-Mail-A8D51F6C-EAA3-4DAF-84CE-B44C3F937B86
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It is being investigated within Ettus R&D.=20

I have no estimate for a resolution.=20



Sent from my iPhone

> On Apr 20, 2022, at 6:56 PM, Dario Fertonani <dario.fertonani@gmail.com> w=
rote:
>=20
> =EF=BB=BF
> Any feedback? This is very easy to reproduce and happens on every single x=
86 machine, with tens of B210 devices around the world. The command line in m=
y original message gives problems even when 25% of the USB throughput is rem=
oved by forcing "sc12" format over the default "sc16" format.
>=20
> The hope is always that newer drivers don't break the existing systems, wh=
ich did fail us here.
>=20
> Thanks,
> Dario
>=20
>=20
>> On Wed, Apr 13, 2022 at 3:54 PM Dario Fertonani <dario.fertonani@gmail.co=
m> wrote:
>> Hi,
>>=20
>> I'm here to report that the "golden standard" for benchmarking the B210 s=
treaming performance is giving us issues with the latest UHD versions.
>>=20
>> The following command
>> ./benchmark_rate --rx_channels "0,1" --rx_rate 30720000 --tx_channels "0,=
1" --tx_rate 30720000 --duration 120
>> gives flawless output with UHD 3.10.3 and 3.15.0, but orrible output with=
 UHD 4.1+, with everything else being equal. These results hold on several x=
86 machines (Intel i7, i9, Xeon, and AMD Ryzen and Epyc) and with at least f=
ive different B210 devices. In each case, for a given host machine, USB cabl=
e, and B210 device, we compiled UHD from source and saw the results degrade s=
harply simply by running the command from the newer folders.
>>=20
>> We typically run UHD from Ubuntu packages (3.10.3 for Ubuntu 18, 3.15.0 f=
or Ubuntu 20, or whatever is in the latest Ubuntu PPA) rather than building i=
t from source code. We went through the source code route because we saw iss=
ues and wanted to reproduce them with the official "benchmark_rate" utility,=
 which unfortunately comes only with the source code version. However, I wan=
t to point out that the poor results seen with "benchmark_rate" are consiste=
nt with the poor results of our own code when built with newer UHD versions.=

>>=20
>> Thanks,
>> Dario
>>=20
>>=20
>>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-A8D51F6C-EAA3-4DAF-84CE-B44C3F937B86
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It is being investigated within Ettus R&amp=
;D.&nbsp;<div><br></div><div>I have no estimate for a resolution.&nbsp;</div=
><div><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div d=
ir=3D"ltr"><br><blockquote type=3D"cite">On Apr 20, 2022, at 6:56 PM, Dario =
Fertonani &lt;dario.fertonani@gmail.com&gt; wrote:<br><br></blockquote></div=
><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Any fe=
edback? This is very easy to reproduce and happens on every single x86 machi=
ne, with tens of B210 devices around the world. The command line in my origi=
nal message gives problems even when 25% of the USB throughput is removed by=
 forcing "sc12" format over the default "sc16" format.<div><br></div><div>Th=
e hope is always that newer drivers don't break the existing systems, which d=
id fail us here.</div><div><br></div><div>Thanks,</div><div>Dario</div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Apr 13, 2022 at 3:54 PM Dario Fertonani &lt;<a href=3D"mail=
to:dario.fertonani@gmail.com">dario.fertonani@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<di=
v><br></div><div>I'm here to report that the "golden standard" for benchmark=
ing the B210 streaming performance is giving us issues with the latest UHD v=
ersions.</div><div><br></div><div>The following command</div><blockquote sty=
le=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><font face=3D"mo=
nospace">./benchmark_rate --rx_channels "0,1" --rx_rate 30720000 --tx_channe=
ls "0,1" --tx_rate 30720000 --duration 120</font></div></blockquote><div>giv=
es flawless output with UHD 3.10.3 and 3.15.0, but orrible output with UHD 4=
.1+, with everything else being equal. These results hold on several x86 mac=
hines (Intel i7, i9, Xeon, and AMD Ryzen and Epyc) and with at least five di=
fferent B210 devices. In each case, for a given host machine, USB cable, and=
 B210 device, we compiled UHD from source and saw the results degrade sharpl=
y simply by running the command from the newer folders.</div><div><br></div>=
<div>We typically run UHD from Ubuntu packages (3.10.3 for Ubuntu 18, 3.15.0=
 for Ubuntu 20, or whatever is in the latest Ubuntu PPA) rather than buildin=
g it from source code. We went through the source code route because we saw i=
ssues and wanted to reproduce them with the official "benchmark_rate" utilit=
y, which unfortunately comes only with the source code version. However, I w=
ant to point out that the poor results seen with&nbsp;"benchmark_rate" are c=
onsistent with the poor results of our own code when built with newer UHD ve=
rsions.</div><div><br></div><div>Thanks,</div><div>Dario</div><div><br></div=
><div><br></div><div><br></div></div>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-A8D51F6C-EAA3-4DAF-84CE-B44C3F937B86--

--===============1354485266381709975==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1354485266381709975==--
