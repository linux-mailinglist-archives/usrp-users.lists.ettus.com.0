Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 065442E78B1
	for <lists+usrp-users@lfdr.de>; Wed, 30 Dec 2020 13:55:16 +0100 (CET)
Received: from [::1] (port=35046 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kub0S-0007xc-04; Wed, 30 Dec 2020 07:55:12 -0500
Received: from mail-ej1-f47.google.com ([209.85.218.47]:37517)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ejkreinar@gmail.com>) id 1kub0O-0007u8-ET
 for usrp-users@lists.ettus.com; Wed, 30 Dec 2020 07:55:08 -0500
Received: by mail-ej1-f47.google.com with SMTP id ga15so21795960ejb.4
 for <usrp-users@lists.ettus.com>; Wed, 30 Dec 2020 04:54:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1gocF8Oc94/Icc9O2E1GllIBbwrg0t6YCNsqiqFU9sA=;
 b=h75fQG6sRCqCGWyHDFPGlWzqYa5FZXXGLlxQjUgE3AS4QzC1DS0NZSDE2Iqx0Bj8MZ
 +e07ooMASUC73Y0fCOn1q6+bveapHqx1DDIusR5w7gy/FNaFRQWvgLZ1TTIFegE3QouD
 ywP/T5Ab+cTwGJKm6d0RKVyrHB80dPubfZEDLyW/qvDYWCpg+JtpQHWSPxb1x64uwzOW
 M1QtmgzIEF5FjHE7GufBIaD6Og3244cBetjv/Yu7AFPQfj2Cr883GY8z6/U7oN0AkvOu
 tt52vDnZ5WbBwfnyN5v+FgvFXZsRs+Ni5NHaTpVd9ba1YKkqjuhixj+Ni0oqQa4cgdAw
 ASMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1gocF8Oc94/Icc9O2E1GllIBbwrg0t6YCNsqiqFU9sA=;
 b=j9ZwbLDvV9cac6xy3UWOxGwBWjsnH1ERPY8UZObc4HoZhRx7oZLHlrbbQnPKAJFhVv
 tBC1OcHlwplGno/TGqyFcF9tVhgDWvtz4eRllDPtBLUEf28r5LjZknPwYEd8XYr3bzGI
 ggBW2BBMroKjqljHZV/3T3CUeZa6W43eh6zl4asK4c1goDkwCOLSExwJTs1reewTwXn/
 jhcSAgDN1mfZo9yv8kSdjkpUAMdelXiOqUdo1vILGkJzmylPWGijrcaae/y5C8VGxXba
 FwFsf+1i+RR6s87lyDYU+GWH19k74mjCCF3yM4pmAmLAnGxxBkoSnNNBQ/xgAJZ0cAgs
 4S0Q==
X-Gm-Message-State: AOAM5303OOyZQ6Kjmfxuk6yt+cGV9Zbi+HkEdJS/P0fjFY7bzwckZ9ET
 EBRphS4eV1Xmo8hbgF7N5i0OEpLIRT1gp3E1oJo=
X-Google-Smtp-Source: ABdhPJwJIB7AZ2sNCFlGek5GGX2UoTpf9rOWgjYynImYfTfWHWRI2z1fZvWo8oz848CqYixHkmIyzEjUYukBO/4Tf30=
X-Received: by 2002:a17:906:a8f:: with SMTP id
 y15mr29411917ejf.552.1609332867298; 
 Wed, 30 Dec 2020 04:54:27 -0800 (PST)
MIME-Version: 1.0
References: <CAOx6OK2N87J_kyjYyY3MHY7ymO7Cy0LkeHUsAeB4gzTa4RUA4w@mail.gmail.com>
 <CA+JMMq-kEjipOzh793JnvWk-ri+JtGfgN4PRPyPADCMRwD5xSg@mail.gmail.com>
 <CAOx6OK0dbsXCmrbrJ8uNEUk2P5GAgoPrT5wqRnKeN-ZU4t7qzQ@mail.gmail.com>
In-Reply-To: <CAOx6OK0dbsXCmrbrJ8uNEUk2P5GAgoPrT5wqRnKeN-ZU4t7qzQ@mail.gmail.com>
Date: Wed, 30 Dec 2020 07:54:14 -0500
Message-ID: <CADRnH20e6NCMXx+gyqbxW8te8-0dfqOQeeua-X3R8HWbOr_dEA@mail.gmail.com>
To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8463524821015946659=="
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

--===============8463524821015946659==
Content-Type: multipart/alternative; boundary="000000000000e178e005b7ae01d1"

--000000000000e178e005b7ae01d1
Content-Type: text/plain; charset="UTF-8"

Can you replace the DMA FIFO with a normal FIFO? The DMA FIFO is mostly
used for continuous streaming-- it provides a data buffer using off-chip
DRAM that smooths out any burstiness in the ethernet interface so there's
no overflows/underruns-- but it should not be needed for your application.

You might try the following rfnoc graph: Host -> FFT -> FIFO -> Host

With that graph you'll be able to directly observe the latency presented to
the FFT block by the ethernet transport only. Using a 1G interface for a
packet of 8192 bytes gives a theoretical best one way latency of 65 us...
It is a long way from 200 us-- but already higher than the FFT compute
time.

Finally, I will add... in my opinion using rfnoc explicitly as a
network-attached coprocessor is probably not an ideal use case. I will
often set up loopback tests like you are doing here, but mostly this is to
validate custom compute blocks and I don't care about latency. Afterwards I
will embed the blocks into stream processing that's attached directly to a
radio.

Best regards,
EJ

On Wed, Dec 30, 2020, 4:15 AM Jorge Arroyo Giganto via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Nick,
>
> I am running the X310 interface at 1Gbit using the SFP Adapter that came
> with the X310.
>
> At first I fowollowed the advice from Ettus USRP Manual
> <https://files.ettus.com/manual/page_usrp_x3x0_config.html#x3x0cfg_hostpc_netcfg_mtu>
> of setting the MTU to 1500 and <send/recv>_frame_size=1472 when running at
> 1Gbit, however I actually got better results in terms of latency setting
> the MTU to 9000 and <send/recv>_frame_size=8000. I also tried using other
> intermediate and smaller values but the results didn't get any better.
>
> Best regards,
>
> Jorge
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e178e005b7ae01d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto">Can you replace the D=
MA FIFO with a normal FIFO?=C2=A0<span style=3D"font-family:sans-serif">The=
 DMA FIFO is mostly used for continuous streaming-- it provides a data buff=
er using off-chip DRAM that smooths out any burstiness in the ethernet inte=
rface so there&#39;s no overflows/underruns-- but it should not be needed f=
or your application.</span><br></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">You might try the following rfnoc graph: Host -&gt; FFT -&gt; FIF=
O -&gt; Host<div dir=3D"auto"><br></div><div dir=3D"auto">With that graph y=
ou&#39;ll be able to directly observe the latency presented to the FFT bloc=
k by the ethernet transport only. Using a 1G interface for a packet of 8192=
 bytes gives a theoretical best one way latency of 65 us... It is a long wa=
y from 200 us-- but already higher than the FFT compute time.=C2=A0</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">Finally, I will add... in my op=
inion using rfnoc explicitly as a network-attached coprocessor is probably =
not an ideal use case. I will often set up loopback tests like you are doin=
g here, but mostly this is to validate custom compute blocks and I don&#39;=
t care about latency. Afterwards I will embed the blocks into stream proces=
sing that&#39;s attached directly to a radio.=C2=A0</div></div></div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">Best regards,</div>EJ<div dir=3D"au=
to"><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Dec 30, 2020, 4:15 AM Jorge Arroyo Giganto via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=
=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div dir=3D"ltr"><div>Hi Nick,</div><div><br></div><=
div>I am running the X310 interface at 1Gbit using the SFP Adapter that cam=
e with the X310. <br></div><div><br></div><div>At first I fowollowed the ad=
vice from <a href=3D"https://files.ettus.com/manual/page_usrp_x3x0_config.h=
tml#x3x0cfg_hostpc_netcfg_mtu" rel=3D"noreferrer noreferrer" target=3D"_bla=
nk">Ettus USRP Manual</a> of setting the MTU to 1500 and &lt;send/recv&gt;_=
frame_size=3D1472 when running at 1Gbit, however I actually got better resu=
lts in terms of latency setting the MTU to 9000 and &lt;send/recv&gt;_frame=
_size=3D8000. I also tried using other intermediate and smaller values but =
the results didn&#39;t get any better.</div><div><br></div><div>Best regard=
s,</div><div><br></div><div>Jorge<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div>

--000000000000e178e005b7ae01d1--


--===============8463524821015946659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8463524821015946659==--

