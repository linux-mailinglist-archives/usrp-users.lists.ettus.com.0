Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 415D97E6CBA
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 15:58:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 455AB385518
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 09:58:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699541929; bh=ddNGuhaTborC6B2l+JwOH4kPb5R0vs/b7gPNw04Q6QI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qJapfx4hJfusLAV5EDUVlqf+pVXvKrSBEyNH3OPTCNNksguQWHO6GiOy54VZGYDNH
	 5F0QOCCcmUTcSh/+tkisCmhlwac6XG1ncvpYZ76i78oUcvLV30C184cqSi+noz+jpF
	 h76zTIH7f9APJ/X5xHjLPMNH2XXMIcZMJZMrH9a2qSql6zBQW8EzPchPkfuLuSVL/f
	 UvAT9GqOxjRbgRi919kSgGWzYHdTRkb17LDq/8YsQvz2NGyF6K5qHitt8d6WydL1/p
	 bCn0cRJjp2Ie5bdrLhcxtKCz686c14Or93HRXE2IRi3MrxzpOXMaVROmeCijKQUPdm
	 64vpFsAjy2ZUQ==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 79DA93854CF
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 09:58:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ufzjxmfq";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-66fbcaf03c6so6041316d6.1
        for <usrp-users@lists.ettus.com>; Thu, 09 Nov 2023 06:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699541893; x=1700146693; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qvASidQ2hTy8p1DH6pIsViXDTMob5sJ4fTLkSJj50jo=;
        b=UfzjxmfqKb0pxLnPdoTTK0Z4YZS73ZC3qk3f28DcStCduXvsukpr6aSuAjkqTTwKTO
         6u+fgOWTsHN4TNFEcpfE7eMgcyfgE/ZuMYwxV2FL0dq2v4qad4xXYxtf7i/sTxPfrxbO
         cGFwEbruJ2h8tspOLvhIigN3ngmqQ/Tnn3oRkW5PdnSc8M4w2mEN/Ik/xKfZsumA/S1O
         CwNgCRyYjZ3F3etJafgLZH/faymo0Ly+di8ncx3K+hbbsV1QgZxEQhx+sXTpLEV4OkGg
         p8tK6Zs/fA8pEoRnsGN2IrsampQhYDiXNStlvvUgVCxTOxC7s1Au4Fjt0+y1wSLQibP4
         4VUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699541893; x=1700146693;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qvASidQ2hTy8p1DH6pIsViXDTMob5sJ4fTLkSJj50jo=;
        b=mSzOOeUG6xoorbJ7Xzd2lWtKTIReDjPlak6WMdTA7Chmy6f7z/JCQ76svbRCx94R/n
         leWM7LBsYCL82AhJg3GvSQ0xdcG3/1ZVJdVUfrsoVEP+0wUJ44rUPeO1MV8ErI1uKX2W
         krpMop++CoucOn4C+XQzSZi334iYt81mEIZailtkk1K6dt2dw1NCeryVEKbjfskAExMX
         q2Z+diGflY/ptRnBRHuNeJoDiixafLddrRawqWhd1XppT8PVJQcrhmYO9G1W3oQrQxtd
         swgbpU/B59dYSwVLOZIA1g5nM+AW9XMTDFIInfOxSyjMvsItTFHsfiLLr3gcbsugGibi
         GAxg==
X-Gm-Message-State: AOJu0YyiWKV/p+gllS84FiEa/ElSTcNprdeY/PIx5RQ76q6NGRziXmq4
	iOjI5mobNKDWhIzT/033hBVPJ/jzMKQ=
X-Google-Smtp-Source: AGHT+IHq83uycsi9dtorVcMaa5rf8nxlj8iMr7MLPApkDnzw7S6lhoXcL8iLuPHFr3zj9BDJbHMpvw==
X-Received: by 2002:ad4:5c89:0:b0:671:2c4f:3e2e with SMTP id o9-20020ad45c89000000b006712c4f3e2emr5350654qvh.61.1699541892701;
        Thu, 09 Nov 2023 06:58:12 -0800 (PST)
Received: from [192.168.2.196] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id n14-20020a0cfbce000000b006575372c845sm2127298qvp.119.2023.11.09.06.58.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 06:58:12 -0800 (PST)
Message-ID: <b2eab66d-72f9-4e69-b152-9923c321608f@gmail.com>
Date: Thu, 9 Nov 2023 09:58:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <nM70OdyxB4MaincaXfOdQwE1C1tTDpJkUaJE1C4OKK0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <nM70OdyxB4MaincaXfOdQwE1C1tTDpJkUaJE1C4OKK0@lists.ettus.com>
Message-ID-Hash: UDEJNWMMX4FCHWBRX2D2UZNM7IOBKPG3
X-Message-ID-Hash: UDEJNWMMX4FCHWBRX2D2UZNM7IOBKPG3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UDEJNWMMX4FCHWBRX2D2UZNM7IOBKPG3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3595040493115605637=="

This is a multi-part message in MIME format.
--===============3595040493115605637==
Content-Type: multipart/alternative;
 boundary="------------4bNlNKEFoJeChn5zksh6TLIk"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4bNlNKEFoJeChn5zksh6TLIk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/11/2023 09:26, dixitmn6@gmail.com wrote:
>
> Hello support team and members,
>
> Recently tested the USRP x310 using uhd_usrp_probe command. However,=20
> it did not seem to work.
> The SFP port does not seem to blink after connected to LAN cable. The=20
> USRP was also not pingable.
> Hence I tried the device recovery manual=20
> <https://kb.ettus.com/X300/X310_Device_Recovery>. After successfully=20
> programming through the JTAG port, the ping didnt work so did not=20
> proceed with the uhd_image downloader flashing. However the lsusb was=20
> finally able to detect the network change, but even after setting the=20
> ip of the host machine as 192.168.10.1, the USRP is still not=20
> pingable. The wireshark is also not able to detect any ARP requests=20
> from the USRP. I am pretty sure that the SFP is reliable since it is=20
> purchased from the ettus support itself.
>
> What could be the issue?
>
Not sure what "lsusb" has to do with this situation?=C2=A0=C2=A0 The USRP=
 X310=20
communicates via ethernet.

What type of computer do you have, and more importantly, what type of=20
Ethernet interface does it have?=C2=A0=C2=A0 Which SFP module
 =C2=A0 did you purchase? Is it for copper or optical, and for what rates=
?=C2=A0=C2=A0=C2=A0=20
With the default FPGA image, the X310 supports 1Gbe on
 =C2=A0 the SFP0 and 10GBe on the SFP1.=C2=A0=C2=A0=C2=A0 If this is a ne=
w device, it's very=20
likely that your initial problem was a networking issue,
 =C2=A0 and doing device recovery was completely unnecessary.



--------------4bNlNKEFoJeChn5zksh6TLIk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/11/2023 09:26, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:dixitmn6@gmail.com">dixitmn6@gmail.co=
m</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:nM70OdyxB4MaincaXfOdQwE1C1tTDpJkUaJE1C4OKK0@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello support team and members,</p>
      <p>Recently tested the USRP x310 using uhd_usrp_probe command.
        However, it did not seem to work.<br>
        The SFP port does not seem to blink after connected to LAN
        cable. The USRP was also not pingable.<br>
        Hence I tried the <a
          href=3D"https://kb.ettus.com/X300/X310_Device_Recovery" title=3D=
""
          moz-do-not-send=3D"true">device recovery manual</a>. After
        successfully programming through the JTAG port, the ping didnt
        work so did not proceed with the uhd_image downloader flashing.
        However the lsusb was finally able to detect the network change,
        but even after setting the ip of the host machine as
        192.168.10.1, the USRP is still not pingable. The wireshark is
        also not able to detect any ARP requests from the USRP. I am
        pretty sure that the SFP is reliable since it is purchased from
        the ettus support itself.</p>
      <p>What could be the issue?</p>
    </blockquote>
    Not sure what "lsusb" has to do with this situation?=C2=A0=C2=A0 The =
USRP X310
    communicates via ethernet.<br>
    <br>
    What type of computer do you have, and more importantly, what type
    of Ethernet interface does it have?=C2=A0=C2=A0 Which SFP module<br>
    =C2=A0 did you purchase? Is it for copper or optical, and for what
    rates?=C2=A0=C2=A0=C2=A0 With the default FPGA image, the X310 suppor=
ts 1Gbe on<br>
    =C2=A0 the SFP0 and 10GBe on the SFP1.=C2=A0=C2=A0=C2=A0 If this is a=
 new device, it's
    very likely that your initial problem was a networking issue,<br>
    =C2=A0 and doing device recovery was completely unnecessary.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------4bNlNKEFoJeChn5zksh6TLIk--

--===============3595040493115605637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3595040493115605637==--
