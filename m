Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C802EA1265C
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jan 2025 15:44:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 82C8338638A
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jan 2025 09:44:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736952259; bh=h9PJZuIkQdyC1ZHAns+rlRkFPX8bRnRqOJ/7BsQIMMI=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=lm4J50OcIz0AkUMq4PVylvU+lpb0kSLIGwiQJLtjfjrUvCpuV47VOHdDvWk4T+O83
	 InDwlrsuH6VFCze44TClGfyejxC9DLebX69xzGUVrIB8BDP+NKODnNe/VtUEZD7ZRz
	 amPfAGd8nUY8+KEKb5uR8G/FmI3JfIh8rWO8oK2uvQ4KLssYtooLPk/fOggyixHnyZ
	 l0Jvhuk3aFS9bkPMWNxcv3rqvRjEXGhVqLxbeQjpRNfJnjD1nX7xXFgo7VADNa3xHQ
	 jSRytrYoD+u+PWmg6d1CWwlnzvBMH33mj3MNnrRIIc/MVQ0p2KcOwI0lYdAE3plAe9
	 zy3lzgsb5w1BA==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 3BB23385FBC
	for <usrp-users@lists.ettus.com>; Wed, 15 Jan 2025 09:43:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="kGYgXoPE";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d3e9a88793so11419719a12.1
        for <usrp-users@lists.ettus.com>; Wed, 15 Jan 2025 06:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1736952218; x=1737557018; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lko4sluIgBcSvskZjd7+cyacogagrxf9H2SMLa3+myE=;
        b=kGYgXoPE2UdeNVTHf7VsRoA00xQfRsxhWAuSMt7cy1ShIvm4NI7yuAxvLY0FogYstQ
         lteDyyK5ukvLoEAOC5WJiboARJym14HPFvThizveL8Y72O9W8qkHSgVEIhnWIpCEybqC
         w5C4UHdKLNypZt4fP50zK64f6+390msTZzxnnqlKeVpL+Y+hxKnPHXq7eMMTKDFZbgcF
         wwMG1a5CvavnOk0xKmKQ1fw3ZmGrMdGcLV1ugIkicz62e4JkLyOBLXIOx8fe+O59PHoc
         TPnYO6iQ+Yr333f4ebcrLtvkDKeto4QnVF/BvugedGuY5hR8I+Oo+yIkBSnTpz3+lWiR
         zaoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736952218; x=1737557018;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lko4sluIgBcSvskZjd7+cyacogagrxf9H2SMLa3+myE=;
        b=jUdYtgOXP8akf0r2bIY7wn18Y6SsYuFtZdfEstL5ChOAPqusFTKDKFnZGL69GdyRTd
         BXOkrdyG8qy0OfLk2idUZhL4IjsmAO7BsvpHRo13276yfGHbQ46u5Z71sfAD7z53dDTZ
         Sho3cGxoWBiN0Rdb0Flf5jySjwO/DdggxWRynzj//+1YPXToz8n2J5Mb/dFcII6fTPQN
         jZdffxx2WX5b/OpWgGGerN/QX1OEPLQcgoqWjelyXuwPERCEAHhEPyEZ8+u3LStkcIbJ
         tbCl7hoiVyiCgYbNQ0+uxRf2imZh+7z3CYiWQQ97IF4soYrXuUnQEtz5qsj7tF0c46k9
         mv0g==
X-Gm-Message-State: AOJu0YzlgwPzZ8qxRtBLnOKSHd1xa0eVcI/i5hpJyKm3M2D1RgOHq2mJ
	TmPuJNqbboj/YB4Q3ihd+I4a3C/4xAPzWgbkLYvr55r1O9YgFdtm4a2Lx0mTUoDrS8r+Rj8Mv8n
	rRHf3quqWeSya1pIvfwcj9I//qAfbMO9JvmMuB9Wb/uOjyiWleg==
X-Gm-Gg: ASbGnctAoSid2gHNYPZ+wfMWgN4A36V+5O/25Fh9v6cnd0/hwPbeRMN9nxtvzWZZUOr
	Y4+fRLBKYEb2M/KkEvtv9x56OcMNuH9EESKEJBA==
X-Google-Smtp-Source: AGHT+IGN9VMom9XUNe5OPdIxkab3dD4fN9sVAnu6sWU6eyJ2HSZ211YLRyGNheEPRa8vb6p3feVVF+S+5NfsSveBadk=
X-Received: by 2002:a05:6402:3514:b0:5da:d16:7378 with SMTP id
 4fb4d7f45d1cf-5da0d167645mr2274983a12.21.1736952217960; Wed, 15 Jan 2025
 06:43:37 -0800 (PST)
MIME-Version: 1.0
References: <aunHd7FAYFHs44YJjxWxZ8I1eT2MMIxBnxvOhiRE5S8@lists.ettus.com>
In-Reply-To: <aunHd7FAYFHs44YJjxWxZ8I1eT2MMIxBnxvOhiRE5S8@lists.ettus.com>
Date: Wed, 15 Jan 2025 09:43:26 -0500
X-Gm-Features: AbW1kva9sjXio4jjKVV85ydPrEUfsnASmpNaiIRr0QV88vE5PqLx9F70pUCzv3I
Message-ID: <CAB__hTSOXNR=CTt=dYHg-dVnV_ExahdNKQym6Ao3gzG-q3mnxQ@mail.gmail.com>
To: cjohnson@serranosystems.com
Message-ID-Hash: ECQVFLR5NBO736D4MM5CRUPOWDCPLBSI
X-Message-ID-Hash: ECQVFLR5NBO736D4MM5CRUPOWDCPLBSI
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ECQVFLR5NBO736D4MM5CRUPOWDCPLBSI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3332109928420225318=="

--===============3332109928420225318==
Content-Type: multipart/alternative; boundary="000000000000f1c1de062bbfb37d"

--000000000000f1c1de062bbfb37d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Interesting. I would have expected approximately 125K packets could be
stored in this FIFO given that it is 1GB and the packet size is perhaps
8000 bytes. The DRAM memory is equally divided up in order to support
multiple channels with a FIFO for each channel.  This memory allocation
algorithm is based on  the number of replay blocks and ports, but I don't
know if it matters only how many ports the replay block has available or
how many ports are in use in the current graph.  In any case, since your
experimental results are no where close to 125K packets, I wonder if there
is a different bottleneck such as the packet context FIFO.  If so, then a
rebuild of the X310 image with bigger context FIFOs would support much
larger buffering.
Rob

On Tue, Jan 14, 2025 at 8:57=E2=80=AFPM <cjohnson@serranosystems.com> wrote=
:

> Thank you both!
>
>
> This allows me to buffer ~100 packets of 1996 samples instead of 65.
>
> For others:
> stream_args.args["streamer"] =3D "replay_buffered"; // Add more "elastici=
ty"
> on Tx using the Replay block as FIFO in USRP
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f1c1de062bbfb37d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Interesting. I would have expected approximately 125K pack=
ets could be stored in this FIFO given that it is 1GB and the packet size i=
s perhaps 8000 bytes. The DRAM memory is equally divided up in order to sup=
port multiple channels with a FIFO for each channel.=C2=A0 This memory allo=
cation algorithm is based on=C2=A0 the number of replay blocks and ports, b=
ut I don&#39;t know if it matters only how many ports the replay block has =
available or how many ports are in use in the current graph.=C2=A0 In any c=
ase, since your experimental results are no where close to 125K packets, I =
wonder if there is a different bottleneck such as the packet context FIFO.=
=C2=A0 If so, then a rebuild of the X310 image with bigger context FIFOs wo=
uld support much larger buffering.<div>Rob</div></div><br><div class=3D"gma=
il_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, Jan 14, 2025 at 8:57=E2=80=AFPM &lt;<a href=3D"mailto:cjohnson@serranosy=
stems.com">cjohnson@serranosystems.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><p>Thank you both!</p><p><br>This all=
ows me to buffer ~100 packets of 1996 samples instead of 65. <br><br>For ot=
hers:<br>stream_args.args[&quot;streamer&quot;] =3D &quot;replay_buffered&q=
uot;; // Add more &quot;elasticity&quot; on Tx using the Replay block as FI=
FO in USRP</p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f1c1de062bbfb37d--

--===============3332109928420225318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3332109928420225318==--
