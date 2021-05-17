Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6869386CD5
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 00:17:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0D15384447
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 18:17:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nNta9jvs";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 30C67384268
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 18:16:42 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id c20so7462466qkm.3
        for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 15:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:mime-version:subject:from:in-reply-to:cc
         :date:message-id:references:to;
        bh=dhO9EI7bUBBLloFM7MRjatV6J5T/w1f6cdKdYyNIoH8=;
        b=nNta9jvsA3yjG6hcO/+LUgWB0yeMM9pI1cZcjvkShrgj9wKObLGATU1H9+5H3nrs5B
         mT6lyz4jlwO7LRd6Ph+DRRf3DQPkoWGdXoAl43FBYVDdxvrxB8CQ6etNXj1+OUz+lB0s
         zmT8sUZDB9oVn6NTlF4dTq+6HUzOwRw28u7reajNdLN9t+W8IRCzgsSzFntt9l58fwo0
         Ty/t8hCrPef6oJeKQ1wuwFoDCx8hkZzTE4Fae2S0w2+ErFzcxAvgn75Kn9R7ynOlvWV1
         nCRVB2kEWdYE9MJirpyi/JylTBYgHsKVcFL7UO79KBUeouya0xOb6ViuRhGjoAkIVK4m
         /Zfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:mime-version:subject
         :from:in-reply-to:cc:date:message-id:references:to;
        bh=dhO9EI7bUBBLloFM7MRjatV6J5T/w1f6cdKdYyNIoH8=;
        b=PIvsu2cXrCeT7lNaQPe/mURyu5xnWHOSVRk3XDely6kFeA+QmeQl/SLuNCBtuqCGyk
         h+yTxMcykPIhT5QO19TC7xu82GruijeePeCNOZoITZS+p8fgMlf0K8Tydi7eStDCeUnJ
         YhBdD9wXjXP/yKjT0wO8nqCYh0V9qCelB401ALJ7EcJPkn7PheiAzbuIAuDphhHd9/LW
         t0k0UAc7hH3T2ki/A+1L49wCmGkwjdsAwu9vp+s0V5Mni+GHPboy6/HDoqhLSbdc5oEW
         cVQkSq2wyA4oKw2ky1Hoa+qjVyrZWPxTtKdNgd5VbKEY5eTZZDC8W+nq0iS2esmog51E
         l/7Q==
X-Gm-Message-State: AOAM530A88Ud4zaZjh4j7ZwkM8x6/Hj1h3fe7c1q/3+xNmaCaMGYMdKH
	aZBp1ku6JKpqv3dJQr8UWGZya7wdthI=
X-Google-Smtp-Source: ABdhPJxkTueAMytUu9yRiG7wY5J7AkShJw+9VVs4QmbTNcQHNaEWrQo9IQzx7lIWTfOh4tIBg4U5hg==
X-Received: by 2002:a37:9e0d:: with SMTP id h13mr2137362qke.460.1621289801344;
        Mon, 17 May 2021 15:16:41 -0700 (PDT)
Received: from ?IPv6:2600:380:9017:c18e:894f:cb51:df11:a4f7? ([2600:380:9017:c18e:894f:cb51:df11:a4f7])
        by smtp.gmail.com with ESMTPSA id d19sm10861185qtd.29.2021.05.17.15.16.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 15:16:40 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Paul Atreides <maud.dib1984@gmail.com>
In-Reply-To: <iOnYx8VUB2BvKDk3dLygbykG6qc0tkzPCKujK37Eblk@lists.ettus.com>
Date: Mon, 17 May 2021 18:16:39 -0400
Message-Id: <0D3D56FE-1B9F-492D-A4DF-85A8231C9A5E@gmail.com>
References: <iOnYx8VUB2BvKDk3dLygbykG6qc0tkzPCKujK37Eblk@lists.ettus.com>
To: jcasallas2019@gmail.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 7LOG5V2X3YJF63GWAXXPYWPNKOUAKFTY
X-Message-ID-Hash: 7LOG5V2X3YJF63GWAXXPYWPNKOUAKFTY
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting up gr-fosphor on uhd 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7LOG5V2X3YJF63GWAXXPYWPNKOUAKFTY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5685638647606075465=="


--===============5685638647606075465==
Content-Type: multipart/alternative; boundary=Apple-Mail-368EFF1D-A2D5-48C4-9A21-5DB4B29CAEE5
Content-Transfer-Encoding: 7bit


--Apple-Mail-368EFF1D-A2D5-48C4-9A21-5DB4B29CAEE5
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

--Apple-Mail-368EFF1D-A2D5-48C4-9A21-5DB4B29CAEE5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><meta http-equiv=3D"conten=
t-type" content=3D"text/html; charset=3Dutf-8">I think you need to manually s=
et the input and output types your RX streamer blocks, don=E2=80=99t use the=
 =E2=80=9Cautomatic=E2=80=9D setting.&nbsp;<div><br></div><div><br><div dir=3D=
"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-co=
lor: rgba(26, 26, 26, 0.296875); -webkit-composition-fill-color: rgba(175, 1=
92, 227, 0.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.23=
0469); ">end transmission&gt;</span></div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">On May 17, 2021, at 16:25, jcasallas2019@gmail.com wrote:<br><b=
r></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>=
Hi all,</p><p><br></p><p>I tried the same configuration but I got the follow=
ing error:INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.=
0-50-ge520e3ff</p><p><code>[INFO] [X300] X300 initialization sequence...</co=
de></p><p><code>[INFO] [X300] Maximum frame size: 8000 bytes.</code></p><p><=
code>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a</code>=
</p><p><code>[INFO] [X300] Radio 1x clock: 200 MHz</code></p><p><code>Traceb=
ack (most recent call last):</code></p><p><code>  File "/home/wisp/rfnoc_ws/=
rfnoc-test/examples/rfnoc_gain.py", line 354, in &lt;module&gt;</code></p><p=
><code>    main()</code></p><p><code>  File "/home/wisp/rfnoc_ws/rfnoc-test/=
examples/rfnoc_gain.py", line 330, in main</code></p><p><code>    tb =3D top=
_block_cls()</code></p><p><code>  File "/home/wisp/rfnoc_ws/rfnoc-test/examp=
les/rfnoc_gain.py", line 93, in __init__</code></p><p><code>    self.ettus_r=
fnoc_rx_streamer_1 =3D ettus.rfnoc_rx_streamer(</code></p><p><code>  File "/=
usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line 1423, in make=
</code></p><p><code>    return _ettus_swig.rfnoc_rx_streamer_make(graph, num=
_chans, stream_args, vlen, issue_stream_cmd_on_start)</code></p><p><code>Run=
timeError: ValueError: [rx_stream] Must provide a otw_format!</code></p><p><=
br></p><p>Do you guys have any idea?</p><p><br></p><p>Thanks</p>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></body></html>=

--Apple-Mail-368EFF1D-A2D5-48C4-9A21-5DB4B29CAEE5--

--===============5685638647606075465==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5685638647606075465==--
