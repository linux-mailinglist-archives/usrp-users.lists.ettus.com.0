Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D1B4511DC
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 20:25:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 601413843AF
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 14:25:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="br8LCVB6";
	dkim-atps=neutral
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 28EA0384283
	for <usrp-users@lists.ettus.com>; Mon, 15 Nov 2021 14:24:48 -0500 (EST)
Received: by mail-oi1-f176.google.com with SMTP id o4so36943248oia.10
        for <usrp-users@lists.ettus.com>; Mon, 15 Nov 2021 11:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1ECISwAjH1xb5gaEpmOowB4C8WVKzv/978Co3GUKuV0=;
        b=br8LCVB6Tgm5Rwtz6yc8ouEjCXsA1ez/XNKj/dOKjg3XwsFAfTLdvcj9hEktAAnDUJ
         PrH2YspRB0B/ywibgUm8vuAvEoWpmbbEcbV8uQ86HVVOk7EmXAV6SePSBESGcOtIgMXY
         j/acOtOZL56UnJEpbfgJbuOD1GOM/TwS3NbB5gjV5CqvhT2K71SuDwEf75lAvbDpNQB0
         EXaiPEArIX7xcQ5dRcbvHKJPcrKPo8sl6uObujDQw2VJkV1j5TzjbScuEntxrlWwBCnq
         mbASDScyv5NKGSnziXR3mtEx10DBOl0m0Myj4vkQad0heC8/tP2KGxeohXVA6zNOFKe+
         jNLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1ECISwAjH1xb5gaEpmOowB4C8WVKzv/978Co3GUKuV0=;
        b=rpTkjFu9lsntfFk5LbvksrTC+7aqiYogrNPOaYvetWYrJSlgvNfhfxfIF+VtGdxANh
         +x7I8fJ9yk2s2c0YGKYJAn7sDhCMbF10Udrhi9f4jdnL3lyVYIiv31bx0QkBbo5xZGQz
         qkb9m1pwNLjti+Bq/V92v8MrkgVikX77NBn1g0kEOK/UVqHLpISVXKDqrmYi4cBFSWLX
         OuDEtUDlckaxpLoVv/0/HIRtmgS1O8CQoHXSnmgtZx4b+kwGg4u/Lm5uWLQ909gGLmpo
         406vobcEwEVjytcHj/sVo6UvlEX/MNiTHwiFqToxJZzKxv03aMDED52Fo16AW9wQqnVr
         80xw==
X-Gm-Message-State: AOAM530BH3FHt9LbykfN4TOP5GavaImPIrgeUQj9n4gyuovKm0Ad6Ou5
	xciUboTjb/LaOYhOUDEqEi2vIpnPw41GXSxp0Jd7cg==
X-Google-Smtp-Source: ABdhPJxmAv7OaPTOedzL6bmAeHGDAuy2rs5/7tRefzuS8Slj6bCVw/H4P/ppbNrVbO/eQxzETLbsxiLBffIq+yCLRdI=
X-Received: by 2002:aca:2408:: with SMTP id n8mr47759514oic.124.1637004287256;
 Mon, 15 Nov 2021 11:24:47 -0800 (PST)
MIME-Version: 1.0
References: <d636bd419e2548878b27baeacbca4b39@gmv.com> <6cc298a5-c5c6-27e4-f5d6-b23a2975e372@gmail.com>
In-Reply-To: <6cc298a5-c5c6-27e4-f5d6-b23a2975e372@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 15 Nov 2021 14:24:36 -0500
Message-ID: <CAB__hTQY491Q0xiYWY75hTpbEV3u744uYMr9EK3xk-R-Lzy+RQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: U6ZMPTU5BRJEBRXOXOBYAWJI3Z3AQBLW
X-Message-ID-Hash: U6ZMPTU5BRJEBRXOXOBYAWJI3Z3AQBLW
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Guillermo Ortas Delgado <g.ortas@gmv.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U6ZMPTU5BRJEBRXOXOBYAWJI3Z3AQBLW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1819225716491986761=="

--===============1819225716491986761==
Content-Type: multipart/alternative; boundary="00000000000009df6605d0d8c33b"

--00000000000009df6605d0d8c33b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Guillermo,
I noticed the line "dpdk_mtu=3D9600".  Normally, this is "dpdk=3D9000".  Is
there a reason for this settings change?
Rob

On Mon, Nov 15, 2021 at 11:07 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-11-15 08:25, Guillermo Ortas Delgado wrote:
>
> I will add that for an unknown reason the maximum frame size as reported
> by UHD when launching the benchmark_rate app is 1556, which triggers a
> warning message saying that it should be 8000 for best results.
>
> I cannot find anywhere to set this value to 8000, even when setting =E2=
=80=9C
> recv_frame_size=3D9000,send_frame_size=3D9000=E2=80=9D in the device argu=
ments I get
> the same.
>
>
>
> As a side note, this maximum frame size value of 1556 is good up to
> 100Msps dual channel if not using DPDK.
>
>
>
> Best,
>
> Guillermo
>
> Where are you placing your uhd.conf file?  See the notes on UHD
> configuration locations here:
>
> https://files.ettus.com/manual/page_configfiles.html#configfiles_usrps
>
> Other than that, I'm hampered by not actually being a DPDK user, so I'm
> running a bit "blind".
>
>
>
>
> *De:* Guillermo Ortas Delgado
> *Enviado el:* 15 November 2021 14:17
> *Para:* usrp-users@lists.ettus.com
> *CC:* Marcus D Leech <patchvonbraun@gmail.com> <patchvonbraun@gmail.com>
> *Asunto:* DPDK drops samples at low rates
>
>
>
> Hi all,
>
>
>
> I finally managed to get DPDK working, but using *DPDK results in dropped
> samples* even at low sampling frequencies, as low as 1Msps. For
> reference, I can receive samples at 200Msps on both channels simultaneous=
ly
> when not using DPDK.
>
> I would like to know if I=E2=80=99m missing something or there=E2=80=99s =
 something else
> which needs to be tuned.
>
>
>
> The setup is Ubuntu 20.04 LTS, UHD 4.1.0.4, DPDK 18.11, USRP X310, and
> 2048 pages of 2 MB each. The contents of my uhd.conf file are pasted belo=
w.
>
> The command I use to run the benchmark rate example is this:
>
> sudo /usr/local/lib/uhd/examples/./benchmark_rate
> --args=3D"use_dpdk=3D1,addr=3D192.168.110.2,second_addr=3D192.168.115.2" =
--pps
> internal --rx_cpu sc16 --rx_otw sc16 --rx_rate 200e6 --channels 0,1
> --priority high --duration 30
>
>
>
> *Am I missing something? Can you spot any misconfiguration?*
>
>
>
> uhd.conf file:
>
> ;When present in device args, use_dpdk indicates you want DPDK to take
> over the UDP transports
>
> ;The value here represents a config, so you could have another section
> labeled use_dpdk=3Dmyconf
>
> ;instead and swap between them
>
> [use_dpdk=3D1]
>
> ;dpdk_mtu is the NIC's MTU setting
>
> ;This is separate from MPM's maximum packet size
>
> dpdk_mtu=3D9600
>
> ;NOTE: The dpdk-pmds directory includes all librte_pmd_* and
> librte_mempool_* libraries
>
> dpdk_driver=3D/usr/local/lib/dpdk-pmds
>
> dpdk_corelist=3D11,12,13,14,15
>
> dpdk_num_mbufs=3D4096
>
> dpdk_mbuf_cache_size=3D512
>
> [dpdk_mac=3Df4:03:43:ec:29:d0]
>
> ;ens1f0np0
>
> dpdk_lcore =3D 12
>
> dpdk_ipv4 =3D 192.168.110.1/24
>
> dpdk_num_desc=3D4096
>
> [dpdk_mac=3Df4:03:43:ec:3e:a0]
>
> ;ens2f0np0
>
> dpdk_lcore =3D 12
>
> dpdk_ipv4 =3D 192.168.115.1/24
>
> dpdk_num_desc=3D4096
>
>
>
> Thank you beforehand,
>
> Guillermo
>
>
>
> P Please consider the environment before printing this e-mail.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000009df6605d0d8c33b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Guillermo,<div>I noticed the line &quo=
t;dpdk_mtu=3D9600&quot;.=C2=A0 Normally, this is &quot;dpdk=3D9000&quot;.=
=C2=A0 Is there a reason for this settings change?</div><div>Rob</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, Nov 15, 2021 at 11:07 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-15 08:25, Guillermo Ortas
      Delgado wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">I
            will add that for an unknown reason the maximum frame size
            as reported by UHD when launching the benchmark_rate app is
            1556, which triggers a warning message saying that it should
            be 8000 for best results.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">I
            cannot find anywhere to set this value to 8000, even when
            setting =E2=80=9C</span><span style=3D"font-size:10pt;font-fami=
ly:Consolas;color:rgb(31,73,125)" lang=3D"EN-US">recv_frame_size=3D9000,sen=
d_frame_size=3D9000=E2=80=9D</span><span style=3D"font-size:10pt;color:rgb(=
31,73,125)" lang=3D"EN-US">
          </span><span style=3D"color:rgb(31,73,125)" lang=3D"EN-US">in the=
 device
            arguments I get the same.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US"><u></u>=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US">As
            a side note, this maximum frame size value of 1556 is good
            up to 100Msps dual channel if not using DPDK.<u></u><u></u></sp=
an></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)" lang=3D=
"EN-US"><u></u>=C2=A0<u></u></span></p>
        <div>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Best,=
<u></u><u></u></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Guill=
ermo</span></p>
        </div>
      </div>
    </blockquote>
    Where are you placing your uhd.conf file?=C2=A0 See the notes on UHD
    configuration locations here:<br>
    <br>
<a href=3D"https://files.ettus.com/manual/page_configfiles.html#configfiles=
_usrps" target=3D"_blank">https://files.ettus.com/manual/page_configfiles.h=
tml#configfiles_usrps</a><br>
    <br>
    Other than that, I&#39;m hampered by not actually being a DPDK user, so
    I&#39;m running a bit &quot;blind&quot;.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <div>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></=
u><u></u></span></p>
        </div>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p>
        <div>
          <div style=3D"border-right:none;border-bottom:none;border-left:no=
ne;border-top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
            <p class=3D"MsoNormal"><b><span>De:</span></b><span> Guillermo =
Ortas Delgado
                <br>
                <b>Enviado el:</b> 15 November 2021 14:17<br>
                <b>Para:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                <b>CC:</b> Marcus D Leech
                <a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank=
">&lt;patchvonbraun@gmail.com&gt;</a><br>
                <b>Asunto:</b> DPDK drops samples at low rates <u></u><u></=
u></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all,<u></u><u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I finally managed to ge=
t
            DPDK working, but using
            <b>DPDK results in dropped samples</b> even at low sampling
            frequencies, as low as 1Msps. For reference, I can receive
            samples at 200Msps on both channels simultaneously when not
            using DPDK.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I would like to know if
            I=E2=80=99m missing something or there=E2=80=99s =C2=A0somethin=
g else which needs
            to be tuned.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The setup is Ubuntu
            20.04 LTS, UHD 4.1.0.4, DPDK 18.11, USRP X310, and 2048
            pages of 2 MB each. The contents of my uhd.conf file are
            pasted below.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The command I use to ru=
n
            the benchmark rate example is this:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">sudo
            /usr/local/lib/uhd/examples/./benchmark_rate
            --args=3D&quot;use_dpdk=3D1,addr=3D192.168.110.2,second_addr=3D=
192.168.115.2&quot;
            --pps internal --rx_cpu sc16 --rx_otw sc16 --rx_rate 200e6
            --channels 0,1 --priority high --duration 30<u></u><u></u></spa=
n></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><b><span lang=3D"EN-US">Am I missing
              something? Can you spot any misconfiguration?<u></u><u></u></=
span></b></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">uhd.conf file:<u></u><u=
></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">;When
            present in device args, use_dpdk indicates you want DPDK to
            take over the UDP transports<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">;The
            value here represents a config, so you could have another
            section labeled use_dpdk=3Dmyconf<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">;instead
            and swap between them<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">[use_dpdk=3D1]<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">;dpdk_mtu
            is the NIC&#39;s MTU setting<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">;This
            is separate from MPM&#39;s maximum packet size<u></u><u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">dpdk_mtu=3D9600<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">;NOTE:
            The dpdk-pmds directory includes all librte_pmd_* and
            librte_mempool_* libraries<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">dpdk_driver=3D/usr/local/lib/dpdk-pmds<u></u><u></u>=
</span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">dpdk_corelist=3D11,12,13,14,15<u></u><u></u></span><=
/p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">dpdk_num_mbufs=3D4096<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">dpdk_mbuf_cache_size=3D512<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">[dpdk_mac=3Df4:03:43:ec:29:d0]<u></u><u></u></span><=
/p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">;ens1f0np0<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">dpdk_lcore
            =3D 12<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">dpdk_ipv4
            =3D <a href=3D"http://192.168.110.1/24" target=3D"_blank">192.1=
68.110.1/24</a><u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">dpdk_num_desc=3D4096<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">[dpdk_mac=3Df4:03:43:ec:3e:a0]<u></u><u></u></span><=
/p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">;ens2f0np0<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">dpdk_lcore
            =3D 12<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">dpdk_ipv4
            =3D <a href=3D"http://192.168.115.1/24" target=3D"_blank">192.1=
68.115.1/24</a><u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Co=
nsolas" lang=3D"EN-US">dpdk_num_desc=3D4096<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you beforehand,<u=
></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Guillermo<u></u><u></u>=
</span></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
      </div>
      <span><br>
      </span><span style=3D"font-size:18pt;line-height:125%;font-family:Web=
dings;color:green">P<span></span>
        <span style=3D"font-size:7pt;line-height:125%;font-family:Arial,&qu=
ot;sans-serif&quot;;color:green">
          Please consider the environment before printing this e-mail.</spa=
n></span><span></span>
    </blockquote>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000009df6605d0d8c33b--

--===============1819225716491986761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1819225716491986761==--
