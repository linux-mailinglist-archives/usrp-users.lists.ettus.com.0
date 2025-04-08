Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0DFA7F7BE
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 10:24:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF9F4385ADF
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 04:24:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744100675; bh=AeFcnUpZDKFhXkZ1U1FvEW58sHgIVLUV5yXum2BTM/M=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=op4YxMLTJVIt1Ve9Wd4xrrYGAzmp+Ql0rguuGHlQPwJ6UtnBvyrv/yPTVnI4PrdPz
	 E3kJuu9IqUDJ9tFcT64AeXDQmI7YBxtrJnw20EpDJBHaiO7/RAjNSYAzes+gLSZjSu
	 nKXblqot9ONo0NJQVgw+eY6IWiTqmaYh8cwbEpBlt7dZG1v+TsCWvb/K5mLhLUdX98
	 ldu4OPaR7H6JOnz8xb8uHt0TAcgbjn7rkMEpQlcit1U4WGt7/LCo/i1d5O63KBE59u
	 dxuKRriHgr7McCunnD0R+GSdsr4g0CbdWUR0BbAz7+ADI+q6b8PfGyND8PGa/+rRgZ
	 7W8+VXKqhRl2g==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 687C4385A6F
	for <usrp-users@lists.ettus.com>; Tue,  8 Apr 2025 04:24:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="BbymfMYD";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac2a81e41e3so949664466b.1
        for <usrp-users@lists.ettus.com>; Tue, 08 Apr 2025 01:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1744100668; x=1744705468; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CzK2Fmnu3syzwUnPvhKpJcU7zQIc100Mkwe4y2o8ZXg=;
        b=BbymfMYDqhbFY9tS/jaDj9ol8ugIn8M10rQXzlgKlxjsO5xvoaH7ehIDh67sl4hlRm
         VumFmlLZzqbixD4dAkuh1i8Zigpkb6dFk8HtINH77r0qnUpZwYJkuD3Ple0QOOElfcvQ
         B0fs4g9u80DfRmhQH1YDFonIaUrfRM44N0dZdhnL507OEp6fEGNQCS/FAaZKlaaHB6Eq
         F6bEwJbe+K0pg2dGXBjA7SyKx4lzXge+q3VB5/qRdFS6NMEkILeQ4DRAlzVSsttOBa/U
         0ObBQxIbTterq0mc3eypYUbn8JJ96Wg2ZTweeSB7I9DFnvd3aBQesde/1ucvR8UbfD3Y
         ledQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744100668; x=1744705468;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CzK2Fmnu3syzwUnPvhKpJcU7zQIc100Mkwe4y2o8ZXg=;
        b=A625oBSjrsG88zGAUilFEPCHdN5RwhRv4IF2xkrvHVyx5gRt8f58eOQJbc056tFFtE
         ZAulB6qf4ftnl4ZAJsX8JNpN5VfAB1Uf5YcEJ01l/9i+gveUpdi9u7eUuFlCdX3RC6H/
         eRW1xfyls/eBrx6rrL6SKlWL4bE7CyeIonTtxv2yoFamOLO4PuYjGTvqdPds5M7uJi/X
         PsYbUcV0fBoTBvdxkJ7570GuHJdMycNBHA1155Ken1jrfX8b4PP+c7+20sMTmVVhdtti
         kiaKHYw/EAle3y3Qzyb/Iibw3poqatlF9Ja+eIbkfKqfjOzlZF8mvOB32vDgEgmUe9Z0
         NzSg==
X-Gm-Message-State: AOJu0YzLbCzh8Hjpch34gW91UoV0TIUjsyeC/CmNWCJpUccnW9LunjXB
	ScA9B2nbyQZ80zOdAahT4CM6Vzt05840rEjtIQqWiXep2onJjHsJ082MvuQUNjsmAoyYQ0H8eBG
	njc8ZvdRimHAUhEeaGRpbIs3Dhoi7wq4dFuMizZWnuxdRKP+pg4A=
X-Gm-Gg: ASbGncsN/WEWH+0L4xji/zWS4tjfkORv8sBdTEAFRKrzP9aA6RKVk4pas0ndKVlxwTI
	YgDviZ5EPNj11n9f2UNL/l8/FsOLHul7N7vx+FNBSxMFTzHjzDu1TKqJrP1jlXb4HQGsBkqLC8u
	1PJhX7iPqqcSOerWoPZJa+KF0r6HHKMlzyeyzR60Nqxvq9+9MWIhZbw+GCnQ==
X-Google-Smtp-Source: AGHT+IEjVP/qufdpIKfy86hsTqmPRhYfjEOskUIrvn4wPgT7vYozA8HvgDd5B/HQ2Us+B2l93eanjckEZs9Zsq3Lbuw=
X-Received: by 2002:a17:907:9716:b0:ac8:179a:42f5 with SMTP id
 a640c23a62f3a-ac8179a43b5mr272661666b.14.1744100667876; Tue, 08 Apr 2025
 01:24:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK5j7GCkt1qSzGFkjeJu27-9F9aaL9mHQvgnQekWXCcZpw@mail.gmail.com>
 <3e28eb52-1955-40ee-88f4-eb4097196a68@gsi.de>
In-Reply-To: <3e28eb52-1955-40ee-88f4-eb4097196a68@gsi.de>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 8 Apr 2025 10:24:16 +0200
X-Gm-Features: ATxdqUHftRRm7aghaeV9g26O7xa8cQavdGcsLkjT7HpDNHWWg9fnOy5OJODUp9c
Message-ID: <CAFOi1A4GH-bsdg4g1aEmeeuc_N5sZhpHmZ6e2RaU4F-g+QLKsg@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: NPSQ2A3QM53MRPPBMGWGHL5KAVGUPKKZ
X-Message-ID-Hash: NPSQ2A3QM53MRPPBMGWGHL5KAVGUPKKZ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_modtool io_ports not being populated
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NPSQ2A3QM53MRPPBMGWGHL5KAVGUPKKZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5560642079911756842=="

--===============5560642079911756842==
Content-Type: multipart/alternative; boundary="000000000000c3056a063240147f"

--000000000000c3056a063240147f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 12, 2025 at 10:32=E2=80=AFAM Philipp Niedermayer <p.niedermayer=
@gsi.de>
wrote:

> It's a known issue from the time the tool was still called
> "rfnoc_create_verilog" (but using the same templates).
>
> Quote: "You did the right thing. The io_ports aren't currently supported
> by rfnoc_create_verilog, so AXI ports have to be added manually."
>
> See https://github.com/EttusResearch/uhd/issues/605
>

This is all correct. We're slowly (I know, too slowly for some) adding such
features to the RFNoC tooling.

--M

--000000000000c3056a063240147f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Mar 12, 2025 at 10:32=E2=80=AFAM Phil=
ipp Niedermayer &lt;<a href=3D"mailto:p.niedermayer@gsi.de">p.niedermayer@g=
si.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><u></u>

 =20
   =20
 =20
  <div>
    <p>It&#39;s a known issue from the time the tool was still called
      &quot;rfnoc_create_verilog&quot; (but using the same templates).</p>
    <p>Quote: &quot;You did the right thing. The io_ports aren&#39;t curren=
tly
      supported by rfnoc_create_verilog, so AXI ports have to be added
      manually.&quot;</p>
    <p>See <a href=3D"https://github.com/EttusResearch/uhd/issues/605" targ=
et=3D"_blank">https://github.com/EttusResearch/uhd/issues/605</a></p></div>=
</blockquote><div><br></div><div>This is all correct. We&#39;re slowly (I k=
now, too slowly for some) adding such features to the RFNoC tooling.</div><=
div><br></div><div>--M</div></div><div class=3D"gmail_quote gmail_quote_con=
tainer"><br></div></div>

--000000000000c3056a063240147f--

--===============5560642079911756842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5560642079911756842==--
