Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB1D7B480C
	for <lists+usrp-users@lfdr.de>; Sun,  1 Oct 2023 16:33:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03974385490
	for <lists+usrp-users@lfdr.de>; Sun,  1 Oct 2023 10:33:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696170782; bh=ZhEM5CwtPCyaTcP5U1NvX7hXd3exBG0ON5qgz9gsuKA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fmvl4jY1El77Fsd6Sn19e7VrGqb0P82Azz3WpObfILtp/iJiUXlhvxs0vpN4itOar
	 UDvh8gNvtfRrMJzWDGm+v10gShxy77meut2/3EtHWqQC65eOUkxm633436zemWAZo6
	 kqlwG3QfnKkhQ3Enytlffmqfskq/4SNT62JJt8YIgrXnqnYhrHSZoLihe5xBzUbTUo
	 ct01bECIg4cdmsOmiZjF8pI1WiqCHkJng+ZxEEVZIdJwyYTkkXo3/2aJkGWKr2RS2H
	 kpPELyoe/U0u00yewUeO0XiQBX64eoGxdBiQFA66S4+zjZ3CV0t3ZSJuMUgaIBmNWv
	 jahFjGbZgFEAQ==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 28A54383FFE
	for <usrp-users@lists.ettus.com>; Sun,  1 Oct 2023 10:32:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bwmggCNm";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-775751c35d4so390289985a.0
        for <usrp-users@lists.ettus.com>; Sun, 01 Oct 2023 07:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696170728; x=1696775528; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+L5M+a1YWFUQOKKbxu+AAQGDZTd1uiJFouk12gIX8V0=;
        b=bwmggCNmAoffPbE8VBa7mtRpL6485urIX2eaiMMRHzI7Yvp338zEDY8bAJN547PDPC
         hfvGLZKonMMjLni+aZ4EnlweF01fZVAXHns7UjxeVwaqDgGzXdcn/4iqKTz1R4aKrplq
         btptZgYvrtDcJy4XZLQhtWU3KZmx9TwENGmRWHhtJ214vbD1IrgmqKn+NWmhCr8URzWi
         qNH646cNjwTNLmdxAanFDN9TiMF/jb6xaJ15eVo2wMJLvTMO7WjA7FQls3PH1GmZ7CDj
         yQS9EhpaXbE2MNEZCjbadDFkhQjAeUhpQUPBrm4ZbxD8rnasKGPV+b1Sk88Ix1InF1k6
         8+fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696170728; x=1696775528;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+L5M+a1YWFUQOKKbxu+AAQGDZTd1uiJFouk12gIX8V0=;
        b=M91PK9EIONM/nuevLftsPhtT1m0pu/RaskBAaniepUVX4Y7ASkqsQOeygvvTDiTn2i
         feUM2AAtEq/6NXHrbdXGs5VZrExxnSMMJbc55fFW4LZ+yd9iLEuyeWqZkf4qttoo7Vgq
         5YVl7tRgDw9eOmodM9J11DSZ+RZ5ElWOCVZV5QwdkYAz5TT/SxA6jGe4h2m03PfDBwf2
         LJfjtKKr77ai79xkT0ykj7Xbe1L8H/3LAyrmjLv8E2mwJyPHG3gibtH16x9Zushu/a/m
         D8kaxjeDNa2Mzkjs77z04E7KdPOs7XUWLHw3d0vRPxNcJCrUc5KHQXhVLov3scoKyHV1
         OGuw==
X-Gm-Message-State: AOJu0YwLKTY4+dgUVfWYMEflzgDgUIl1gDTE1f5PMUddX8DapRnN8qgI
	AfAKFS5pLMJxnGYimYMR1fCuAQ7ccbY=
X-Google-Smtp-Source: AGHT+IExKOfrEoasKI/dITTgmUlc/l+Z7fHIgUK9BU5uDq3KO4+CGBSqxUSPxD79wfmDVdjObrQ1cg==
X-Received: by 2002:a05:620a:4411:b0:76d:83ae:fdcd with SMTP id v17-20020a05620a441100b0076d83aefdcdmr11200168qkp.57.1696170728246;
        Sun, 01 Oct 2023 07:32:08 -0700 (PDT)
Received: from [192.168.2.150] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id l7-20020a05620a0c0700b0077414748e92sm7714140qki.96.2023.10.01.07.32.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Oct 2023 07:32:07 -0700 (PDT)
Message-ID: <64fa011e-ab7e-9245-11ff-3e9a6d0768b4@gmail.com>
Date: Sun, 1 Oct 2023 10:31:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: usrp-users@lists.ettus.com
References: <HAFnQ93dmfnKgATadn7mn7wYAe7yHQfRWHkSTkdlAs@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <HAFnQ93dmfnKgATadn7mn7wYAe7yHQfRWHkSTkdlAs@lists.ettus.com>
Message-ID-Hash: 636NRYBR6RVHD5UOP3NFLLVXJXB66T7T
X-Message-ID-Hash: 636NRYBR6RVHD5UOP3NFLLVXJXB66T7T
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK with X310 and Intel X520-DA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/636NRYBR6RVHD5UOP3NFLLVXJXB66T7T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0339422128516920871=="

This is a multi-part message in MIME format.
--===============0339422128516920871==
Content-Type: multipart/alternative;
 boundary="------------zQ6X3yJMUt1hkGLKE26nN5yX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------zQ6X3yJMUt1hkGLKE26nN5yX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 01/10/2023 10:21, shaneflandermeyer@gmail.com wrote:
>
> Thank you! This was my problem.
>
>
> For anyone looking at this in the future, the configuration file that=20
> made this work looks like:
>
> |[use_dpdk=3D1] dpdk_mtu=3D9000=20
> dpdk_driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0 dpdk_corelist=3D=
0,1=20
> dpdk_num_mbufs=3D8192 dpdk_mbuf_cache_size=3D512 dpdk_link_timeout=3D50=
00=20
> [dpdk_mac=3D90:e2:ba:dd:5b:cc] dpdk_lcore =3D 1 dpdk_ipv4 =3D=20
> 192.168.30.1/24 dpdk_num_desc =3D 2048 |
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Interesting.=C2=A0=C2=A0 What this means is that the config parser librar=
y used by=20
UHD either doesn't raise an error for improperly-formed
 =C2=A0 symbols, or it allows "-" in a symbol-name.=C2=A0=C2=A0=C2=A0 In =
either case, UHD=20
would not have seen any of the symbols from the config file
 =C2=A0 that it's interested in, and proceeded with defaults.


--------------zQ6X3yJMUt1hkGLKE26nN5yX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 01/10/2023 10:21,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:shaneflanderme=
yer@gmail.com">shaneflandermeyer@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:HAFnQ93dmfnKgATadn7mn7wYAe7yHQfRWHkSTkdlAs@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Thank you! This was my problem.</p>
      <p><br>
      </p>
      <p>For anyone looking at this in the future, the configuration
        file that made this work looks like:</p>
      <pre><code>[use_dpdk=3D1]
dpdk_mtu=3D9000
dpdk_driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0
dpdk_corelist=3D0,1
dpdk_num_mbufs=3D8192
dpdk_mbuf_cache_size=3D512
dpdk_link_timeout=3D5000
   =20
[dpdk_mac=3D90:e2:ba:dd:5b:cc]
dpdk_lcore =3D 1
dpdk_ipv4 =3D 192.168.30.1/24
dpdk_num_desc =3D 2048

</code></pre>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Interesting.=C2=A0=C2=A0 What this means is that the config parser li=
brary
    used by UHD either doesn't raise an error for improperly-formed<br>
    =C2=A0 symbols, or it allows "-" in a symbol-name.=C2=A0=C2=A0=C2=A0 =
In either case, UHD
    would not have seen any of the symbols from the config file<br>
    =C2=A0 that it's interested in, and proceeded with defaults.<br>
    <br>
    <br>
  </body>
</html>

--------------zQ6X3yJMUt1hkGLKE26nN5yX--

--===============0339422128516920871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0339422128516920871==--
