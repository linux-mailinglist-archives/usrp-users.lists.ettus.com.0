Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB26F5A4591
	for <lists+usrp-users@lfdr.de>; Mon, 29 Aug 2022 10:58:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90FC838AAA8
	for <lists+usrp-users@lfdr.de>; Mon, 29 Aug 2022 04:58:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661763485; bh=kFLgATgCUo5lQpNx4zdR9g+DzNdP9chADpY3ZigG0yw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ccomHAsCmEp93eimoydeqWhPK6iObhGNRHhGQBcUCfsvXsLv77XCeYzhJrPvIIH9e
	 VIMg+2pWc6hYev2zQQUWeGYDL0eXxnsNKkc3kaa6ighiU+ev8ged3VDCJEQTtyDJQx
	 jPSs7cBYsuagAUwqEE/iI+PmAToGjdETikF/4mLsjGAii20LfAec0lwrqvkHQtzdfP
	 GcuJ4b4zm6vDTb4ji3W7m7aqkGobdNR4chud9D7fsUGqHr1mIPteAExWeDO4cmz81T
	 rIwrVOb7l0gNNif+MsHkKBPx+ThRdpWdaGATbOTm+Wr+c7HnrDgpW8t9hCQ00Tswni
	 Lmf6gqHexIfYA==
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by mm2.emwd.com (Postfix) with ESMTPS id EDC1B38A75F
	for <usrp-users@lists.ettus.com>; Mon, 29 Aug 2022 04:56:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kyx9IV/d";
	dkim-atps=neutral
Received: by mail-oi1-f182.google.com with SMTP id w197so9614039oie.5
        for <usrp-users@lists.ettus.com>; Mon, 29 Aug 2022 01:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=zQB1HLZt4A9ZXYNPErtQSA5MBRSBGxXFbORBtXETuHc=;
        b=Kyx9IV/dD8TdUTW/t6KJjNV7C6di8DWTRegnRdinnmiSMPSaB+aMuS+/2qjif6QihW
         66Hh6KX7HH+EZRsFGycTbxKjSapqn+MFyyNtvhFzwEvZ8jEZgFGYvyqdpsJ5MvqHqnWW
         jDMMjgoLDChuvUS0drwh/0Vx4BDEdIEkQq7t+pQwE+UpMp9OQ5OlTQh924B1LgsalvcW
         N6Xcwj7l1u5LhbZq0h6EvjRYaRWZr2rMyB3RWjjypDhGtBtDi14OAO/zYTzhycG5NvAk
         8ZUUOSBN+5rNqUxq76XNK/tzL7NxdM+aljgRP0rHnBSOoNVL0jSPgb3SLdnADmQpZg+/
         uneA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=zQB1HLZt4A9ZXYNPErtQSA5MBRSBGxXFbORBtXETuHc=;
        b=BAg9GWnbIte8IyDuZbRVZANPZ8hDN4Y0jLrOjmC6vQtFXC9gSYh6zyBWLERSSphhgq
         DZAqjKyrFEMjjqpSB7SfjKbC0jKdVvpRncU/7If4r25qegxNye85uAvge1g7FHQU/pj7
         cqXM3JqK4g+xZL2dT1qCrMf5JSFrb0tDI8uxbJQk9EJk6PLmiU+Bg6wls6lrWmNYfqnD
         Z8iWojpbYA+ayks0EiXZlcrrSCnJ+e+xp4KsHafojkyowC/t7Gu551G5BYT+vS/PCgjx
         TYF8LO3ESUVIn6Ee2ZzJ2Af0S6BoXJSNz/ZkKJPe2LGnd8qZb8gqgREeKrALq7d1oist
         9K9A==
X-Gm-Message-State: ACgBeo0tNjz4O8qRQtPNGsKbPxkgDEplPEuOs86wkcAk7xke/OOFJJa0
	NYr39cnVaeyrOaAJbsyiCULAY8QRPWulMwovH7Xq7S0oig==
X-Google-Smtp-Source: AA6agR4Tp99eGyZ4FZ08y2FjHNqHa7mLoFO8aeOYpnjRq2AE2x+PqTO1valNnZRA+BTfzGdMgogU9u+JNls2T43vjuU=
X-Received: by 2002:a05:6808:1584:b0:343:2404:6b9f with SMTP id
 t4-20020a056808158400b0034324046b9fmr6487454oiw.148.1661763407042; Mon, 29
 Aug 2022 01:56:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PupWnTfTXCfZ5ENm5ixSQbgqh+SgRpA4-7hsrXLvA5thQ@mail.gmail.com>
In-Reply-To: <CAA=S3PupWnTfTXCfZ5ENm5ixSQbgqh+SgRpA4-7hsrXLvA5thQ@mail.gmail.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Mon, 29 Aug 2022 11:56:36 +0300
Message-ID: <CALooG3_c9Pfr1vRG3zohhNwdFYZFxE2UC2eaej58-+3M-Tyi+A@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: THYILC47ECPSENXZVNU3M4OBJJB5GFH7
X-Message-ID-Hash: THYILC47ECPSENXZVNU3M4OBJJB5GFH7
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x2cd7049b, 0xffff
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/THYILC47ECPSENXZVNU3M4OBJJB5GFH7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2171209703774228174=="

--===============2171209703774228174==
Content-Type: multipart/alternative; boundary="00000000000093ddb305e75d71ad"

--00000000000093ddb305e75d71ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi sp,
can you give the details about how you generated bitstream with RFNoC
block. Did you use rfnoc-example, also did you generate bitstream with
default codes or did you add your own block into RFNoC?

sp <stackprogramer@gmail.com>, 29 A=C4=9Fu 2022 Pzt, 10:14 tarihinde =C5=9F=
unu yazd=C4=B1:

> When I built FPGA for RFNOC block I faced with strange error...I check th=
e
> FPGA source and RFNOC CPP source every id is ok but my code doesn't work
> correctly...
> ????
> Can any help me?
> uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
> UHD_4.2.0.0-0-unknown
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
> Target sock buff size: 2453333 bytes.
> Actual sock buff size: 212992 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.rmem_max=3D2453333
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2453333 bytes.
> Actual sock buff size: 212992 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2453333
> [WARNING] [UDP] The current recv_buff_size of 212992 is less than the
> minimum recommended size of 816000 and may result in dropped packets on
> some NICs
> [WARNING] [UDP] The current send_buff_size of 212992 is less than the
> minimum recommended size of 307200 and may result in dropped packets on
> some NICs
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
> 0x2cd7049b, 0xffff
> [INFO] [0/Block#0] Setting default MTU forward policy.
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
> 0xf0c66ff1, 0xffff
> [INFO] [0/Block#1] Setting default MTU forward policy.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000093ddb305e75d71ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi sp,<div>can you give the details=C2=A0about how you gen=
erated bitstream=C2=A0with RFNoC block.=C2=A0Did you use rfnoc-example, als=
o did you generate bitstream with default=C2=A0codes or did you add your ow=
n block into RFNoC?</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">sp &lt;<a href=3D"mailto:stackprogramer@gmail.com"=
>stackprogramer@gmail.com</a>&gt;, 29 A=C4=9Fu 2022 Pzt, 10:14 tarihinde =
=C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">When I built FPGA for RFNOC block I faced with stran=
ge error...I check=C2=A0the FPGA source and RFNOC CPP source every id is ok=
 but my code doesn&#39;t work correctly...<div>????</div><div>Can any help =
me?<div>uhd_usrp_probe<br>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_=
107100; UHD_4.2.0.0-0-unknown<br>[INFO] [X300] X300 initialization sequence=
...<br>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio=
 1x clock: 200 MHz<br>[WARNING] [UDP] The recv buffer could not be resized =
sufficiently.<br>Target sock buff size: 2453333 bytes.<br>Actual sock buff =
size: 212992 bytes.<br>See the transport application notes on buffer resizi=
ng.<br>Please run: sudo sysctl -w net.core.rmem_max=3D2453333<br>[WARNING] =
[UDP] The send buffer could not be resized sufficiently.<br>Target sock buf=
f size: 2453333 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the t=
ransport application notes on buffer resizing.<br>Please run: sudo sysctl -=
w net.core.wmem_max=3D2453333<br>[WARNING] [UDP] The current recv_buff_size=
 of 212992 is less than the minimum recommended size of 816000 and may resu=
lt in dropped packets on some NICs<br>[WARNING] [UDP] The current send_buff=
_size of 212992 is less than the minimum recommended size of 307200 and may=
 result in dropped packets on some NICs<br>[WARNING] [RFNOC::BLOCK_FACTORY]=
 Could not find block with Noc-ID 0x2cd7049b, 0xffff<br>[INFO] [0/Block#0] =
Setting default MTU forward policy.<br>[WARNING] [RFNOC::BLOCK_FACTORY] Cou=
ld not find block with Noc-ID 0xf0c66ff1, 0xffff<br>[INFO] [0/Block#1] Sett=
ing default MTU forward policy.<br></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000093ddb305e75d71ad--

--===============2171209703774228174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2171209703774228174==--
