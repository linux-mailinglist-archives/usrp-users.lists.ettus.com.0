Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CE837B34B
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 03:09:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDC6A384423
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 21:09:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f7we0BKK";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id C990D3840D1
	for <USRP-users@lists.ettus.com>; Tue, 11 May 2021 21:08:23 -0400 (EDT)
Received: by mail-qk1-f179.google.com with SMTP id f29so8513197qka.0
        for <USRP-users@lists.ettus.com>; Tue, 11 May 2021 18:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=Q6S3ZriIZWmHEzK/WR4mCqWokdRfPlXzLQG5FSKTuqQ=;
        b=f7we0BKKrRsvbFFL9209cYxHFzndS93q6knLj5bxckF55mddkKZEy1fPYCabjE1zZE
         zwG5iBxFfNfwCO6y9l6zyd7UIhUdn0CGTJdE57xuOxHJITLe03mM4yIjBqJui/B/Hk3D
         Vt5dIUipAwSRihfiHPr4oDAJ4TtsOYDP/+pS9Qubzt7BcQRbLXHo8aJaXKLWl6C5+Cx3
         IRdOUiW/u91AOKFSeDn6lsihuDHAWT+p4gfqxn+tG+kkNyWeECEGW2CnQvwz+h86kz/Q
         RSv//gBebxiiqjLbRtsrSWTVraNpxDvZOU/8XGbuvpGVf5FNQisBeq8wc6jt1e9pFrNU
         OAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=Q6S3ZriIZWmHEzK/WR4mCqWokdRfPlXzLQG5FSKTuqQ=;
        b=eSEAD6abl+w+l3Kp6+ozajQW4axjxz3KGBui1ujJ7hSgQjKCATg2q6xDsZ8tcqkkDG
         YAVMrmoyGohpBb1sN8ZrOn3o77gCuElkKhYWoatNN2b/Vg+iiAPMLJX8FG6NeGVw7Jty
         SFovX8eFGQT57ypzVx2y7OtVkFnMrkREjFGSQi8+WlajSoJYBontw/nwrNYC9pWPKRcu
         omJagUFThtr2eIJxGphCyidU2k/2aJukHkDvvc06dno5102U0xm3k+Iy1cyDbzOUjZYa
         v4OKZBJgfqs80nSHeIT1ixD2oisUEoMQwyFyr8aduHYIf/lKyqe4fov//VgNiPQswasm
         7qdw==
X-Gm-Message-State: AOAM533/HvYH+cU623UjEGXa4gQlQQnIZ4Ox+jsDAIBEhyn9j9bnGN8Z
	7A1oTctk297GVIaReawhpGE=
X-Google-Smtp-Source: ABdhPJy1kAh5BBQOHEC3lAJ7dMY+s3UlJ1aNG2WySHLpDB2nAQ0wILyu6PoQnsiDe2+cA0HfrOVDAA==
X-Received: by 2002:a05:620a:12e3:: with SMTP id f3mr31704837qkl.75.1620781703301;
        Tue, 11 May 2021 18:08:23 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id a195sm15017779qkg.101.2021.05.11.18.08.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 18:08:22 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 11 May 2021 21:08:21 -0400
Message-Id: <379E7306-D0DF-4D3C-96C5-B422CCE29AE0@gmail.com>
References: <CAN+Y6vAiiZ2ptm94r74DbSYV0PxesL7tpTeEJ0XksLJTgEHRNg@mail.gmail.com>
In-Reply-To: <CAN+Y6vAiiZ2ptm94r74DbSYV0PxesL7tpTeEJ0XksLJTgEHRNg@mail.gmail.com>
To: isaac mario tupac davila <isacctd92@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: YGVHXKBBGHGIXIFRJJEYQJ3TYMLVPKJ4
X-Message-ID-Hash: YGVHXKBBGHGIXIFRJJEYQJ3TYMLVPKJ4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling rate and bandwidth - Usrp N210 & source block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YGVHXKBBGHGIXIFRJJEYQJ3TYMLVPKJ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6197151262621716254=="


--===============6197151262621716254==
Content-Type: multipart/alternative; boundary=Apple-Mail-02FB4490-3DB8-4A22-908A-0A12016CC0C6
Content-Transfer-Encoding: 7bit


--Apple-Mail-02FB4490-3DB8-4A22-908A-0A12016CC0C6
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

(1) because the general approach is to give about 80% effective bandwidth du=
e to the fact that filters cannot have infinitely steep edges.=20

(2) complex baseband sampling. Sample rate =3D=3D bandwidth.=20

Sent from my iPhone

> On May 11, 2021, at 6:15 PM, isaac mario tupac davila <isacctd92@gmail.com=
> wrote:
>=20
> =EF=BB=BF
> Hello community
>=20
> I'm Isaac. I'm dealing with some questions about the interpretation of sam=
pling rate and bandwidth in a USRP source block.
>=20
> What I understand is if I work with an USRP N210, my ADC works with a 100M=
S/s. If I use a Gigabit Ethernet and a data type of 16bits, I could receive i=
n my host up to 25MS/s with a bandwidth of 20MHz. https://kb.ettus.com/About=
_USRP_Bandwidths_and_Sampling_Rates
>=20
> My questions are:=20
>=20
> 1. If I can receive up to 25MS/s on my host, why my bandwidth is 20MHz? I t=
hink It is up to 12.5MHz according to Nyquist.
>=20
> 2. Why is the sample rate value in the usrp source block equal to the band=
width I observe? I think this bandwidth should be the half according to Nyqu=
ist too. https://wiki.gnuradio.org/index.php/USRP_Source
>=20
> I appreciate any help to clarify this concepts=20
>=20
> Regards
> Isaac T.
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-02FB4490-3DB8-4A22-908A-0A12016CC0C6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">(1) because the general approach is to give=
 about 80% effective bandwidth due to the fact that filters cannot have infi=
nitely steep edges.&nbsp;<div><br></div><div>(2) complex baseband sampling. S=
ample rate =3D=3D bandwidth.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPho=
ne</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On May 11, 2021, at 6=
:15 PM, isaac mario tupac davila &lt;isacctd92@gmail.com&gt; wrote:<br><br><=
/blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div d=
ir=3D"ltr"><div>Hello community<br></div><div><br></div><div>I'm Isaac. I'm d=
ealing with some questions about the interpretation of sampling rate and ban=
dwidth in a USRP source block.</div><div><br></div><div>What I understand is=
 if I work with an USRP N210, my ADC works with a 100MS/s. If I use a Gigabi=
t Ethernet and a data type of 16bits, I could receive in my host up to 25MS/=
s with a bandwidth of 20MHz. <a href=3D"https://kb.ettus.com/About_USRP_Band=
widths_and_Sampling_Rates">https://kb.ettus.com/About_USRP_Bandwidths_and_Sa=
mpling_Rates</a></div><div><br></div><div>My questions are: <br></div><div><=
br></div><div>1. If I can receive up to 25MS/s on my host, why my bandwidth i=
s 20MHz? I think It is up to 12.5MHz according to Nyquist.</div><div><br></d=
iv><div>2. Why is the  sample rate value in the usrp source block equal to t=
he bandwidth I observe? I think this bandwidth should be the half according t=
o Nyquist too. <a href=3D"https://wiki.gnuradio.org/index.php/USRP_Source">h=
ttps://wiki.gnuradio.org/index.php/USRP_Source</a></div><div><br></div><div>=
I appreciate any help to clarify this concepts&nbsp;<br></div><div><br></div=
><div>Regards</div><div>Isaac T.<br></div><div><br></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-02FB4490-3DB8-4A22-908A-0A12016CC0C6--

--===============6197151262621716254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6197151262621716254==--
