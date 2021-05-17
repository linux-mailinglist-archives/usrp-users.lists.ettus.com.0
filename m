Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19327386CD8
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 00:18:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31AAC3856E4
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 18:18:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="acrjZOAw";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id D976B384F3F
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 18:17:19 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id 76so7403109qkn.13
        for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 15:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:mime-version:subject:from:in-reply-to:cc
         :date:message-id:references:to;
        bh=v+k+fotIWNwjciCqG9zrxYmifNfGcM4xg/vqNNms9Yc=;
        b=acrjZOAwhv2L7WS9BE+QAvPinWIBblNxncyPlD4ic4LOxVVUAmIok+zCHNcwE1aYXk
         BnyiFVQSFQmliMnMVJc5vOGOEnSJ4fclIf9shSUbHeESH52BTZsBO/15dKVjZ+sRVisy
         8eDAZEm86D3VQiJnFdkqWp0LEjwP+OemEdM5dQmuDKpAk5LQO7i/bbNrBaM3J5/qjRLP
         tkDAv/YwMR7I/dAbN0Ft3gxm7I5gYseyw1x0usPGGFdo6hjDNasOXiJBq+RbWCoM7vCJ
         ApEiMC9NJVGW8FgPRkb6CX+BjlGVcEwVia/c9PHcBbE6ndFa3z4dMe7IkwyJ0YUDmsN4
         Sc7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:mime-version:subject
         :from:in-reply-to:cc:date:message-id:references:to;
        bh=v+k+fotIWNwjciCqG9zrxYmifNfGcM4xg/vqNNms9Yc=;
        b=DDLVjl2SWJgwVHYtOFfsC+uglj333QEDL5BjrVuej3TE1tS/CFKrmr7BDXkOePMgwV
         2KAZck9mL5ApxK/8y/Qk6eMNbz5f5fL6Out++yr6oNY39JjngebP9jSPDcwhVUm0gaoM
         OR3Sp7ELric9h0w5tCdcTC0yWdsiK2BpKHzMpuv1uGRFlWQnuu7bERAstI25dSioggQ6
         Av1O3PjBJzP252BVVvaWFHNTaQFrcFdn4ffLmo2B1uTN7c7FSOnnoKETon1gIr+7I5TO
         +Xlp7bq6bgicEeX/llEl+e5D8MEtu6x5Nm9SNtuujueCUsj1FBZp8SJZlbE1XA5m1+nz
         hsmg==
X-Gm-Message-State: AOAM531IVZtpRgTzbvUnrTXtlFu7mj0hDV4To1m/LtaKmmZIszwYsAdp
	DUYDPOPfjF+P6ZPqv7+6jkZcUu3rvDU=
X-Google-Smtp-Source: ABdhPJwHNM/lpsucR3B5ITcGhWgaditODfqk+ifePKi3KCnK7d7D28MNRXMtBooldUp0659OPwCATw==
X-Received: by 2002:ae9:ebc6:: with SMTP id b189mr2098878qkg.251.1621289839075;
        Mon, 17 May 2021 15:17:19 -0700 (PDT)
Received: from ?IPv6:2600:380:9017:c18e:894f:cb51:df11:a4f7? ([2600:380:9017:c18e:894f:cb51:df11:a4f7])
        by smtp.gmail.com with ESMTPSA id x27sm5672975qkj.133.2021.05.17.15.17.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 15:17:18 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Paul Atreides <maud.dib1984@gmail.com>
In-Reply-To: <iOnYx8VUB2BvKDk3dLygbykG6qc0tkzPCKujK37Eblk@lists.ettus.com>
Date: Mon, 17 May 2021 18:17:17 -0400
Message-Id: <BC3FD243-13BA-4782-B6C4-2CE4920597E1@gmail.com>
References: <iOnYx8VUB2BvKDk3dLygbykG6qc0tkzPCKujK37Eblk@lists.ettus.com>
To: jcasallas2019@gmail.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: IMQKEADKP74F2VDNO7E4R3ADEPPPE3B2
X-Message-ID-Hash: IMQKEADKP74F2VDNO7E4R3ADEPPPE3B2
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting up gr-fosphor on uhd 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IMQKEADKP74F2VDNO7E4R3ADEPPPE3B2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5120273604968327544=="


--===============5120273604968327544==
Content-Type: multipart/alternative; boundary=Apple-Mail-387AD364-B7D9-45CC-8935-A0F791C6FDC0
Content-Transfer-Encoding: 7bit


--Apple-Mail-387AD364-B7D9-45CC-8935-A0F791C6FDC0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I think you need to manually set the input and output types your RX streamer=
 blocks, don=E2=80=99t use the =E2=80=9Cautomatic=E2=80=9D setting.=20


<end transmission>

> On May 17, 2021, at 16:25, jcasallas2019@gmail.com wrote:
> =EF=BB=BF
> Hi all,
>=20
>=20
>=20
> I tried the same configuration but I got the following error:INFO] [UHD] l=
inux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff
>=20
> [INFO] [X300] X300 initialization sequence...
>=20
> [INFO] [X300] Maximum frame size: 8000 bytes.
>=20
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
>=20
> [INFO] [X300] Radio 1x clock: 200 MHz
>=20
> Traceback (most recent call last):
>=20
> File "/home/wisp/rfnoc_ws/rfnoc-test/examples/rfnoc_gain.py", line 354, in=
 <module>
>=20
> main()
>=20
> File "/home/wisp/rfnoc_ws/rfnoc-test/examples/rfnoc_gain.py", line 330, in=
 main
>=20
> tb =3D top_block_cls()
>=20
> File "/home/wisp/rfnoc_ws/rfnoc-test/examples/rfnoc_gain.py", line 93, in _=
_init__
>=20
> self.ettus_rfnoc_rx_streamer_1 =3D ettus.rfnoc_rx_streamer(
>=20
> File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line 1423=
, in make
>=20
> return _ettus_swig.rfnoc_rx_streamer_make(graph, num_chans, stream_args, v=
len, issue_stream_cmd_on_start)
>=20
> RuntimeError: ValueError: [rx_stream] Must provide a otw_format!
>=20
>=20
>=20
> Do you guys have any idea?
>=20
>=20
>=20
> Thanks
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-387AD364-B7D9-45CC-8935-A0F791C6FDC0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><meta http-equiv=3D"conten=
t-type" content=3D"text/html; charset=3Dutf-8"><div dir=3D"ltr"><meta http-e=
quiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">I think you nee=
d to manually set the input and output types your RX streamer blocks, don=E2=
=80=99t use the =E2=80=9Cautomatic=E2=80=9D setting.&nbsp;<div><br></div><di=
v><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit=
-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-composition-fill-c=
olor: rgba(175, 192, 227, 0.230469); -webkit-composition-frame-color: rgba(7=
7, 128, 180, 0.230469); ">end transmission&gt;</span></div><div dir=3D"ltr">=
<br><blockquote type=3D"cite">On May 17, 2021, at 16:25, jcasallas2019@gmail=
.com wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"=
ltr">=EF=BB=BF<p>Hi all,</p><p><br></p><p>I tried the same configuration but=
 I got the following error:INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_1=
07100; UHD_4.0.0.0-50-ge520e3ff</p><p><code>[INFO] [X300] X300 initializatio=
n sequence...</code></p><p><code>[INFO] [X300] Maximum frame size: 8000 byte=
s.</code></p><p><code>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware R=
ev 0.929a</code></p><p><code>[INFO] [X300] Radio 1x clock: 200 MHz</code></p=
><p><code>Traceback (most recent call last):</code></p><p><code>  File "/hom=
e/wisp/rfnoc_ws/rfnoc-test/examples/rfnoc_gain.py", line 354, in &lt;module&=
gt;</code></p><p><code>    main()</code></p><p><code>  File "/home/wisp/rfno=
c_ws/rfnoc-test/examples/rfnoc_gain.py", line 330, in main</code></p><p><cod=
e>    tb =3D top_block_cls()</code></p><p><code>  File "/home/wisp/rfnoc_ws/=
rfnoc-test/examples/rfnoc_gain.py", line 93, in __init__</code></p><p><code>=
    self.ettus_rfnoc_rx_streamer_1 =3D ettus.rfnoc_rx_streamer(</code></p><p=
><code>  File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", li=
ne 1423, in make</code></p><p><code>    return _ettus_swig.rfnoc_rx_streamer=
_make(graph, num_chans, stream_args, vlen, issue_stream_cmd_on_start)</code>=
</p><p><code>RuntimeError: ValueError: [rx_stream] Must provide a otw_format=
!</code></p><p><br></p><p>Do you guys have any idea?</p><p><br></p><p>Thanks=
</p>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></div></body></html>=

--Apple-Mail-387AD364-B7D9-45CC-8935-A0F791C6FDC0--

--===============5120273604968327544==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5120273604968327544==--
