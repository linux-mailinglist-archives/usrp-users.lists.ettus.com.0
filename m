Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5F267818E
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jan 2023 17:35:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1C4D38107D
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jan 2023 11:35:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674491746; bh=6NiQuDJglfVvtu8ePGXn/b/XRtvxbqEvt3NoHw9+ZuM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CC1/OxxT74GMUIe5rBUQPD5wCsJCwg5snGz9zWNM3WRAnTzpYf+gioOzkZrdGQ2Vc
	 msGZh8sAFNVMfYEi2/DXoXiTHtVhG6IZY1zcyW6N/neW5SeSXppwqKyZLBpUKTY37m
	 AoXUBz5MJ3nzh1ev1RVnkM7EISPEVqV+h/ZMUu9NW3xpYCWDtyDkCVQ8CE7Gj58bIp
	 U+/CkiVOF54VGzKltMj9K8H2HmHkEkopFJCsOlk2L8QNb+7Sb0KZwM323Er8adGsZm
	 SNh5J/ShzUa7Ahk1+f4aiRy9JWOwyKAfrtZFpl+hResGlqd0vUDtKps7uNj9qUfkLR
	 hnltUlbsAuZng==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 76C2E380A4A
	for <usrp-users@lists.ettus.com>; Mon, 23 Jan 2023 11:35:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qQiqyyiM";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id qx13so31937080ejb.13
        for <usrp-users@lists.ettus.com>; Mon, 23 Jan 2023 08:35:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BkoDICE+J84PL5tMDlk9HvOmc2xitr8z3VcaPCIbJnA=;
        b=qQiqyyiMbTTq7M+g3YyGF+SR2GKlhQD6fxYjm5pN1i5mRBYIyIOfL/vodhKI+c6UjG
         pQUh9dbdqSeJU/5V61Uf563Ro5TvIGSeA5PKOXeqM0Z+NG/tLoaOmOTxViRzOErHzLlS
         n2l+L2ryflXUWfojCK3BW7WJGjNJbLHiWSeI1pfOk3oUck/vrqWWWcIEqYymCvVza2jH
         9i/K/uYLh8Dwe8tcn6O5oRKAo59ju7Q3+a3tXbboCnSDJFLK1P78M42tDlIyG0lfdRpy
         e43SwiYlAuuwMzaLP6utkwZdOijR+yzbex1ISeAryXHA1Qrtt1SB4hAztnAw72XhknGa
         1WYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BkoDICE+J84PL5tMDlk9HvOmc2xitr8z3VcaPCIbJnA=;
        b=Q3MzzZLi3qt6Dgatp/wE+uZGtPVoMzjotzYEvNbtZaoIUzifc6/sq5l47KZdkGJ2j+
         qaUAaGcw9eGI6lzm8sRMBOrncEno0UHHj3NbNXTw+vNcRI76SdcNK/KybdR1b/3jV12W
         ookFt/Vcfl/I9Q9+T30oSWT7YXP62INdpBxu2zgg0blvDCLCX7mqlHlAqj956vrX9wul
         Rohw2LbdUz3DGZei3a7r8jPvse273v4EAWG0/GuYmDPer/WuK/cxDHMe5K552qymFwok
         PLQo1iGU4o8e1fXwln4L8MB7jWluZ40UO1dWf6K6DULtULSwEkWgXJGRQ5aD7CyE5U55
         QcKg==
X-Gm-Message-State: AFqh2kqaFxHxZewlwk91SK+bCt7rMqi4/o3T17R0i4FuaNpqVr0txX8O
	Lvhh6yaBafMzDWrvuOf99qpowapanlkfWePG/pdeTUc=
X-Google-Smtp-Source: AMrXdXtfNMR6CQFdVN2CIZ5ajy75HOGXLY1/V+6cRsLzTZa3Gz/lYxDsaU8V8gqxwwLFDLcrV2T971UCurzxWmCLzwc=
X-Received: by 2002:a17:906:9417:b0:85f:f115:65d2 with SMTP id
 q23-20020a170906941700b0085ff11565d2mr2324915ejx.555.1674491739252; Mon, 23
 Jan 2023 08:35:39 -0800 (PST)
MIME-Version: 1.0
References: <CALooG3-i1-T_FRDmuhBFXDeVVrTwO6oKf_x_Z1s=3fJWnCtTQQ@mail.gmail.com>
 <1dad107d-4211-ca7d-8e0f-1bd9f212e47b@gmail.com>
In-Reply-To: <1dad107d-4211-ca7d-8e0f-1bd9f212e47b@gmail.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Mon, 23 Jan 2023 19:35:26 +0300
Message-ID: <CALooG38N4H9i4tHhBDVWq_U=d5+nOm1A0S+Pr9512rZGC4hdHg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: MD7HJ6V6I3SYXAXPNNSC32Y22IVTNXFP
X-Message-ID-Hash: MD7HJ6V6I3SYXAXPNNSC32Y22IVTNXFP
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Autoboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MD7HJ6V6I3SYXAXPNNSC32Y22IVTNXFP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4644311422017516833=="

--===============4644311422017516833==
Content-Type: multipart/alternative; boundary="0000000000004c2a5205f2f0fd81"

--0000000000004c2a5205f2f0fd81
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,
it works when I manually boot it. Although I followed the documentation for
activating autoboot, autoboot does not work.

Kind regards,
Yasir

Marcus D. Leech <patchvonbraun@gmail.com>, 23 Oca 2023 Pzt, 19:18 tarihinde
=C5=9Funu yazd=C4=B1:

> On 23/01/2023 03:13, Yasir =C3=96z=C3=A7al=C4=B1k wrote:
>
> Hi everyone,
> I have an E320 which does not autoboot. I am trying to activate it. When =
I
> searched documents for this, I found that there are flags on the
> microcontroller that controls autoboot. The document says "eeprom-set-fla=
gs
> 0x1" activates the autoboot function, however it does not work. I have se=
en
> that I might need to update firmware for this problem, but my boardversio=
n
> is already 7. Therefore, when I tried to update mcu firmware, it said it
> cannot find necessary files for version 7. As I understand it, my mcu is
> already updated to the latest.  Can anyone help me activate the autoboot
> function?
>
> My Board : USRP E320
> UHD Version: 4.0.0
> MCU Update Files: mcu_neon
> <https://files.ettus.com/binaries/misc/upgrade_mcu_neon_v1.1.7358-a190641=
-musl-glibc-rev3-6.tar.gz>
>
> Kind Regards,
> Yasir
>
> If you manually boot it, does it come up OK?
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004c2a5205f2f0fd81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div>it works when I manually boot it. Although =
I followed the documentation for activating autoboot, autoboot does not wor=
k.</div><div><br></div><div>Kind regards,</div><div>Yasir</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Marcus D. Le=
ech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com<=
/a>&gt;, 23 Oca 2023 Pzt, 19:18 tarihinde =C5=9Funu yazd=C4=B1:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 23/01/2023 03:13, Yasir =C3=96z=C3=A7al=C4=B1k
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi everyone,
        <div>I have an E320 which does not autoboot. I am trying to
          activate it. When I searched documents for this, I found that
          there are flags on the microcontroller that controls autoboot.
          The document says &quot;eeprom-set-flags 0x1&quot; activates the
          autoboot function, however=C2=A0it does not work. I have seen tha=
t
          I might need to update firmware for this problem, but my
          boardversion is already 7. Therefore, when I tried to update
          mcu firmware, it said it cannot find necessary files for
          version 7. As I understand it, my mcu is already updated to
          the latest.=C2=A0 Can anyone help me activate the autoboot
          function?</div>
        <div><br>
        </div>
        <div>My Board : USRP E320</div>
        <div>UHD Version: 4.0.0</div>
        <div>MCU Update Files:=C2=A0<a href=3D"https://files.ettus.com/bina=
ries/misc/upgrade_mcu_neon_v1.1.7358-a190641-musl-glibc-rev3-6.tar.gz" targ=
et=3D"_blank">mcu_neon</a></div>
        <div><br>
        </div>
        <div>Kind Regards,</div>
        <div>Yasir</div>
      </div>
      <br>
    </blockquote>
    If you manually boot it, does it come up OK?<br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000004c2a5205f2f0fd81--

--===============4644311422017516833==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4644311422017516833==--
