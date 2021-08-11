Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F843E99DB
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 22:47:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45976384AE8
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 16:47:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="eNk1Ej8z";
	dkim-atps=neutral
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by mm2.emwd.com (Postfix) with ESMTPS id BB15F383D08
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 16:46:54 -0400 (EDT)
Received: by mail-ot1-f51.google.com with SMTP id 61-20020a9d0d430000b02903eabfc221a9so5026557oti.0
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 13:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QTuF2I+O9+seN35J0NXpgD92S7etbLoI2UVJzoNxgh0=;
        b=eNk1Ej8zxwxij45c3s7pYXeP0tAbVCkCGKPtx4jKOKLLHIQgnxRMoeriPqbwBPHXAr
         Qm4hKETABGeUSc94qRWoCtABAiYvBL/mxOON2sfsf7PmUXPr2HWzS5+ZvjyI42EuI9HB
         Dqvv0tIjFpyALvt1V9ivpTAqaXcAA1hjMjbtOamCRpgZLPagYgd4r08BDYzV+OtMHf2u
         MV1IjWVjfjHIDICQxVQqf1gKN9a0XXDD+jmHcUi7ltGzwJxIdUSjw3/RQEiKWnUK9cbJ
         eUjONr2aw8HriyscsCwdwJMDRzrPD6OB9PG3qyGC9Rdn2gUAktt4BoJ4HBU2bC4jceh3
         gETA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QTuF2I+O9+seN35J0NXpgD92S7etbLoI2UVJzoNxgh0=;
        b=rdaRkueO4xQm7bFo5/3EJqEg5pLTgk4zo1sh3F3yu8TZC22tB0+jdlnPNv0SME1qTq
         zy+8EnATtvlicv/6Sp9t21HiMz1FIf9crQZtNoxlNBIhwD2oAgC/EKggLmnp6l4gvuIp
         h2fRuEpVznYVSuqQQQh/nRzEbLrhx16cF+5lWAn+ktSz8Zr/Bv8gfJ0gfB3DhTUFGUxR
         JH3SFEd1YEhpgpJ1163jJ9y2RVdSDmYolpiIri0p475MkaPOsTypQRggxKpF7SGGGzCO
         T/VAOGIXLLrvU88rIv/x0GtH00Sk5Xa9e0xPCsA4CwRYmw/yFUT5CBHgCqDtT8XqzTpu
         FDMg==
X-Gm-Message-State: AOAM532mYhc84lML0MGu8y59MsFev6Bby/FJjK53ESy091apCn3ougb4
	uyDgirxK7mdhHzwwmL4jL8tXHCb3KvoYReHFe+IS4F/2
X-Google-Smtp-Source: ABdhPJxoO6NyWrU4tBcA6q3CGW/kfNzTIUJKlvTgKPo+ko2dB8qAkx2yqT6+mSwlWjNnrS6UB4GqpROudK9VszevHSk=
X-Received: by 2002:a9d:480b:: with SMTP id c11mr713952otf.30.1628714814029;
 Wed, 11 Aug 2021 13:46:54 -0700 (PDT)
MIME-Version: 1.0
References: <kqjSLhpiqLppn5dvzfkQuBRt2GC2SfCCjEmFzNVqghw@lists.ettus.com>
In-Reply-To: <kqjSLhpiqLppn5dvzfkQuBRt2GC2SfCCjEmFzNVqghw@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 11 Aug 2021 15:46:38 -0500
Message-ID: <CAFche=iH9vR57-pyzrT9qJpU4uhmkDg14rNAX+SdG7VsRcVqRQ@mail.gmail.com>
To: thebouleoffools@gmail.com
Message-ID-Hash: FHQJX3YQ436WLJNH5YRDYADVJT53URAP
X-Message-ID-Hash: FHQJX3YQ436WLJNH5YRDYADVJT53URAP
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 External Reboot Signal
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FHQJX3YQ436WLJNH5YRDYADVJT53URAP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0895702319060015844=="

--===============0895702319060015844==
Content-Type: multipart/alternative; boundary="000000000000ee500c05c94eb7de"

--000000000000ee500c05c94eb7de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 PHY_CTRL_STATUS is for the SFP port, so not what you're looking for.

You can look at the schematic for the E320 here:
https://kb.ettus.com/images/6/65/Neon_Public.pdf

There is a watchdog built into the E320 that I think is on by default. It's
on page 16 (the Real Time Clock).

Are you referring to JTAG port J6? You can see the pinout for that also on
page 16. I would think pin 10 would reset the microcontroller, but I
haven't tried it.

Thanks,

Wade





On Mon, Aug 9, 2021 at 3:54 PM <thebouleoffools@gmail.com> wrote:

> I noticed there=E2=80=99s an ARM JTAG port underneath the board with a sy=
stem
> reset pin. However, it doesn=E2=80=99t appear to do anything when grounde=
d. Does
> anyone know if the JTAG port is disabled, or if it has some different
> pinout than the typical 10 pin ARM JTAG?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ee500c05c94eb7de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>
<div>
PHY_CTRL_STATUS is for the SFP port, so not what you&#39;re looking for.<br=
></div><div><br></div><div>You can look at the schematic for the E320 here:=
<br></div><div><a href=3D"https://kb.ettus.com/images/6/65/Neon_Public.pdf"=
 target=3D"_blank">https://kb.ettus.com/images/6/65/Neon_Public.pdf</a></di=
v>

</div><div><br></div><div>There is a watchdog built into the E320 that I th=
ink is on by default. It&#39;s on page 16 (the Real Time Clock).

</div><div><br></div><div>Are you referring to JTAG port J6? You can see th=
e pinout for that also on page 16. I would think pin 10 would reset the mic=
rocontroller, but I haven&#39;t tried it.<br></div><div><br></div><div>Than=
ks,</div><div><br></div><div>Wade<br></div><div><br></div><br><div><br></di=
v><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Aug 9, 2021 at 3:54 PM &lt;<a href=3D"mailto:thebo=
uleoffools@gmail.com" target=3D"_blank">thebouleoffools@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>I notic=
ed there=E2=80=99s an ARM JTAG port underneath the board with a system rese=
t pin. However, it doesn=E2=80=99t appear to do anything when grounded. Doe=
s anyone know if the JTAG port is disabled, or if it has some different pin=
out than the typical 10 pin ARM JTAG?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000ee500c05c94eb7de--

--===============0895702319060015844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0895702319060015844==--
