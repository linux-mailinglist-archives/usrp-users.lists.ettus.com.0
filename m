Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4897099A4C7
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 15:20:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8AFF0385BAF
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 09:20:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728652802; bh=rTgAsORvyIMCBZbukiU5RbAWdfniYvngfCu53t8iHOE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=y4BDSJ56cbNz7Qj+UK/Ahoz3cq7KKFTrBG8cSckd/eIm/kFSw4f7LnCH0FhH4R8RW
	 WsO+SeWQWyacQ1FNqIoUfyci+YYiO/m/BNwQb/S7urGtNR7Rq6VBz8Nc2DiTL6BEsK
	 nkm4fdFMCa4MtYQetFPen1cORF0Id3X7jVdKiD/kcwx+3rpHA8S6eGNXy9kOQtzXhp
	 iJYdoIru6V3GiN94hMLwczL1bNkX4yfvEwj7EddzfTMRV9XKJepSStz8XJnNplm4a0
	 DEUJzVqX0z+Hboo2ihk+zgkEIx9RXQ08KC+HyvaF5tiEeCqi/nzscZo+pcoUDWAAUS
	 idwW7MO02kOyg==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id C69AA38585B
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 09:19:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="sTzy1Mo5";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5c949d60d84so778863a12.1
        for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 06:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728652776; x=1729257576; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3dFYtSPGKzlL5ONu35RDdaMEwGnD3hDqFoW1qRD2Chk=;
        b=sTzy1Mo5xdjMWMct+NrXV65WxC8l2aiolW76NJzPFbesgstXQ9AtQUR9+xk7j34sv0
         YduMKTNMIdgrnKfLqBdG8rxKhqiRdBfkvLjTSpF8HzuUdYAYRpScyUjROkPcSgJscTm/
         6dUFvB1vIrmEIm+z65a/BfTPRKPExvQSg8OgOyebPEzP4+thpxvzVw/yN5eONfmYuYVn
         0Y7uegPj80slteD1bZZDv/jugI+eSgaCyVLDlbobaS/nnMNRVy7J7pgh+v8mLMK8PkLW
         IIRiPUD1pvaRaG2eBpfqJ6QFRGcY2GmPeyvol7A2l/9SVW8dQC9mcD/FC+cO2Fd9FL5C
         xbUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728652776; x=1729257576;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3dFYtSPGKzlL5ONu35RDdaMEwGnD3hDqFoW1qRD2Chk=;
        b=vIZ2/1ljhkWz//6tDHQllcLgn3YHeMOQ91KgUPRu00wxtgPcNliTP4RHECmwI8MVdy
         SxdulGtkrGiTqX3yr9LIWfnjvhyEvBf70quySd8AIjER3jm77vHxXSKdC37kHgJbyvX9
         vKWSqezPq5k1jXZsF+eTaxz/Ulo3t2iwmNA6aqMKbOYKvpjv/+oORZJLTqlngVKjXQj9
         ty5z2QwEH97R35sddgIvXu7ht62XD4aiCCIUaeKeFYUYuM+QPruJ6Mhu9en8NC3o5xCA
         oSAxzCNSjC2N86zv86+vO5YpX0lbZfJ5E6SwV1aLWqeNqPyX8ei7qPRDKD/szzIEF9CX
         LkiQ==
X-Gm-Message-State: AOJu0YxCEvY17m+AhMAWyHnMh3w1dnDLoUQJDL+aMoZjiZyzW2wc5qXt
	+9JLt79Mhjk8Hh1cvD+Ow+/tGbPIFmpf+OXFvfi5oEABD7bqLdDIsOJvywFyi30eRoozUf/tq6m
	96SJurS6EisUtqM8SLPtu7czmn1NArQXj3ZcqamgcnYTlFl5gAL4=
X-Google-Smtp-Source: AGHT+IEk5u9zuwzVtzLRM9K4CFbZIKnKE99E7sWZ/jBV2YBbOqPSjOccxUhogOU1roJVjRSOlWWFlmBeSPW4GpDPZE8=
X-Received: by 2002:a05:6402:270f:b0:5c7:2122:50d with SMTP id
 4fb4d7f45d1cf-5c948dcf7c8mr1863352a12.35.1728652775541; Fri, 11 Oct 2024
 06:19:35 -0700 (PDT)
MIME-Version: 1.0
References: <JYdfRN2IVvGdaIxRpj3sGBkRCxe4CW2pgIJx7Bql0g@lists.ettus.com> <8d4fae65-290d-4c09-8c8f-c5aa2abab43d@o2.pl>
In-Reply-To: <8d4fae65-290d-4c09-8c8f-c5aa2abab43d@o2.pl>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 11 Oct 2024 15:19:22 +0200
Message-ID: <CAFOi1A4QBxaLLJ+pG-OsFGvmRz=NgzicrZ2FiJEtR0KXozumJg@mail.gmail.com>
To: Piotr Krysik <perper@o2.pl>
Message-ID-Hash: KTNUAXOIKDZTQBKSGJXJWVHUZY2CNNMB
X-Message-ID-Hash: KTNUAXOIKDZTQBKSGJXJWVHUZY2CNNMB
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KTNUAXOIKDZTQBKSGJXJWVHUZY2CNNMB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0231083678512986460=="

--===============0231083678512986460==
Content-Type: multipart/alternative; boundary="000000000000a067c20624335668"

--000000000000a067c20624335668
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 11, 2024 at 6:13=E2=80=AFAM Piotr Krysik <perper@o2.pl> wrote:

> Regarding =E2=80=98kas=E2=80=99 command - that works well with the =E2=80=
=98zeus=E2=80=99 branch of
> meta-ettus (used up to UHD 4.6). But when I switched to more recent
> =E2=80=98kirkstone=E2=80=99 branch - it stopped. Probably some changes ar=
e needed in
> that command. I would guess kas verstion 2.6.2 is not correct anymore,
> but I don=E2=80=99t know for which the command might work. So it is actua=
lly
> good that you already are able to run those builds with =E2=80=98kas=E2=
=80=99 but
> without docker.
>

Can you please open an issue on this on github.com/EttusResearch/uhd? We
use kas to build images, so this should not be an issue.

--M

--000000000000a067c20624335668
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2024 at 6:13=E2=80=AF=
AM Piotr Krysik &lt;<a href=3D"mailto:perper@o2.pl">perper@o2.pl</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Regarding =E2=80=98kas=E2=80=99 command - that works well with the =E2=80=
=98zeus=E2=80=99 branch of <br>
meta-ettus (used up to UHD 4.6). But when I switched to more recent <br>
=E2=80=98kirkstone=E2=80=99 branch - it stopped. Probably some changes are =
needed in <br>
that command. I would guess kas verstion 2.6.2 is not correct anymore, <br>
but I don=E2=80=99t know for which the command might work. So it is actuall=
y <br>
good that you already are able to run those builds with =E2=80=98kas=E2=80=
=99 but <br>
without docker.<br></blockquote><div><br></div>Can you please open an issue=
 on this on <a href=3D"http://github.com/EttusResearch/uhd">github.com/Ettu=
sResearch/uhd</a>? We use kas to build images, so this should not be an iss=
ue.</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">--=
M<br></div></div>

--000000000000a067c20624335668--

--===============0231083678512986460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0231083678512986460==--
