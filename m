Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A55FB73840B
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 14:45:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81CE4383C78
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 08:45:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687351528; bh=XpdNpf42+7Ui1ZoIX5Q62QCFoxJGJg908M9Yfa77/fA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eRGHGefyN8AKvi2pm4ncdL991EKkTb4uLQmqwHqnh5iQnkoQ81WuPLXZI52sMuPsf
	 qq42MOPcD35Fm6x+Poiw4VN39ePPaUzFPuMFWNMTK7uiy/ZK9+EQFIsY5pIJQJjd0F
	 gxKWFJaQnyIFx50mspcHtR9oNK58ljO745Jpv3cBA0CDzwoj4n/bZHSQgkluqjbqIr
	 gHpjdcDZOXRi8ML4Gw9XEx8Uxv4yqd8DLQK5eI4YNEosraPT30TuD3A4fKGg4SaqO8
	 la0g83aB5PO3UY7p2Tm0Qm7BccwZlhBqQCH3q738P1aEfAD4RluPcC9Bexj029kWn8
	 XntCBYcKob9uA==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 8CFCE3813D3
	for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 08:44:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="r/TbcStJ";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-9881b9d8cbdso779982566b.1
        for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 05:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687351472; x=1689943472;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tXAJ3hgV4qxsZr5SilCCW/2t2zye4yuRCfWX/WWOGM4=;
        b=r/TbcStJMXuzvnVGNijd7Sawu8P64j1CeXiPVTB4069Df3nIk9phO7AGLumbm+SLjD
         /WwrWe+3nYo9lSn30m3mbE5SRM0kMhlRBT0WrjO41NmnZIVWnaANgXOZ/muLSDqgWPMO
         utTtGHjkG7JkEcjgQCBDiFYr/J2xCu1yG69GRMKWbh0pG8M8AxQJ+oLfSHtLtGnW1Pvc
         AJ/8KDh7swieAuduGQL+ktK/1YoKFE0YJQ6fHp4nV8tQfMmm6jP+ji9kcu6+w0XD3Z1J
         u5n+EWtxNqcWpBNvQOmhVMdB7u++XEheYBGOm/eBH8JmccGvYVUOuEREdEJKa2p8dtkr
         yk+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687351472; x=1689943472;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tXAJ3hgV4qxsZr5SilCCW/2t2zye4yuRCfWX/WWOGM4=;
        b=MPDSNB0Q7nN8xpXKgUAIUB8OtYRWlJNyyg2kBkowCYNq4AfrV/n8h9Om8myK6+i51I
         p30aZjps2+9cB4Ilty7/0f58Wnb39fz2g61NjPV9HzOxlQc2KR8r5elVkdXBAnMC6zYM
         bgKFRxgl77EtImY0iaxS8pksxz8mGDsN1zK19QJr5kdnB4y1vzx1/fOlr7Rc9K04f0VV
         qFl6yo07tuPifO1JjWgIV5K4QaBA6/ZY+R2puuVDDn/qPNpOEd/eb+rR4WyOoYKURuh2
         YaRYPHjHmnK9cFcVmVA7T9qg9i9pzPxDaHh1GlmDxNBZutBD4dsJsNq/ud8gfJ+Ie3JR
         17uw==
X-Gm-Message-State: AC+VfDxqIbKYiSNb0sFF8x4E0pWkyiSxrrCXOGrX9W1bUGvzyXSjVI8N
	DIxF9HJIyo6rtxf3q/t9QWF1JwVd6/eISIAe2B+8htxxvpM=
X-Google-Smtp-Source: ACHHUZ5Yvhn78bT0uS0qW58zyFbt6x6u+8X4gg+hndBwPy0JVV8smrE1MRS67kY2xTqFRC00nBRscJBMvkHmUAld66Q=
X-Received: by 2002:a17:907:3e83:b0:987:fe18:1c58 with SMTP id
 hs3-20020a1709073e8300b00987fe181c58mr10114763ejc.35.1687351471940; Wed, 21
 Jun 2023 05:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAOkUcStztZNDcFMHftzcZXXnQwDbYAOeHZ+eBpJJoNUY8pmGUw@mail.gmail.com>
 <b87ade32-d119-2a53-4cbc-efe60212a90c@gmail.com>
In-Reply-To: <b87ade32-d119-2a53-4cbc-efe60212a90c@gmail.com>
From: cyberphox <cyberphox@gmail.com>
Date: Wed, 21 Jun 2023 13:44:20 +0100
Message-ID: <CAOkUcSs3xp1HxeEAF3FOjAU1GLkDqVLu+0-R7Yv2BnE5fa1rAA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: NA4OVU7E4XJY7WHAZ5JTPXRV63JAQHV6
X-Message-ID-Hash: NA4OVU7E4XJY7WHAZ5JTPXRV63JAQHV6
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.0 - Reading FPGA core temperature - USRP2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NA4OVU7E4XJY7WHAZ5JTPXRV63JAQHV6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5328905787790484383=="

--===============5328905787790484383==
Content-Type: multipart/alternative; boundary="00000000000018afef05fea3219d"

--00000000000018afef05fea3219d
Content-Type: text/plain; charset="UTF-8"

Thanks Marcus. I could not find any temperature sensors :(


On Thu, 15 Jun 2023 at 14:33, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 15/06/2023 06:31, cyberphox wrote:
> > Hi All
> >
> > I would like to read the FPGA core temperature of the Kintex within
> > the USRP2974, and any other temperature sensor available, ideally on
> > the RF boards.
> >
> >
> > Is there an API for this?
> >
> > thanks
> > marino
> You can use the "usrp_list_sensors" examples app to list all the sensors
> that are available to the API -- and look at the code
>    to see how it uses the sensors API.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000018afef05fea3219d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Marcus. I could not find any temperature sensors :(=
</div><div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, 15 Jun 2023 at 14:33, Marcus D. Leech &lt;<a hr=
ef=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">On 15/06/2023 06:31, cyberphox wrote:<br>
&gt; Hi All<br>
&gt;<br>
&gt; I would like to read the FPGA core temperature of the Kintex within <b=
r>
&gt; the USRP2974, and any other temperature sensor available, ideally on <=
br>
&gt; the RF boards.<br>
&gt;<br>
&gt;<br>
&gt; Is there an API for this?<br>
&gt;<br>
&gt; thanks<br>
&gt; marino<br>
You can use the &quot;usrp_list_sensors&quot; examples app to list all the =
sensors <br>
that are available to the API -- and look at the code<br>
=C2=A0=C2=A0 to see how it uses the sensors API.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000018afef05fea3219d--

--===============5328905787790484383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5328905787790484383==--
