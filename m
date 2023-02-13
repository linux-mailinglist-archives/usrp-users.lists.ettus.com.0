Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C36969461A
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 13:44:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A11063844B2
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 07:44:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676292282; bh=e1XepFUqaWSUj2F9DRN2uk0qHb7jnzgf5nn4h8LHPl0=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lN1FtNUhctUwyLy0UBXumT3vN8EB/rLf8BK8VcgFAl4n7EsOQiSABcTZ/Wfy4fc9J
	 3bU//bDO5ZOcpJVRaGhf+KW9dBUhpqBYGQuzN5t3koC2hdiZ2xokMzBOVkijYTpGud
	 FXiQSN9E6uKgX2/tZeWv1AgRzw8vtGsZhQE8uhwpss4w73Cr9NliTwZG8w1mIP0ds9
	 VqMiUVjxAM+R1YSWATSWVmTS/kD+3QwRGEyoDLBNibcXWHClpSSijZ1jD1NkxYjLMh
	 KAsGzccJG9s8jkSH8Ar4/AHiKXVy+myLfJXKf/1n/ISRIUiml/c9asyI8wzo54Zl1s
	 +XVX+6SVi96zA==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id CBD933818C8
	for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 07:43:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mAemUsUx";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id c26so26746164ejz.10
        for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 04:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MiDdEcgJU6lZRAsVx6o3I7OiP6Pme2XVhhWMc8y2DiI=;
        b=mAemUsUxk+f03idfTJ0bR4TDSVYIQFxJmc6oTbAOHXikvG5scuuBUwnGXzVIle9sXE
         exRW0ESYDDj24kiVq7zgpwRHDCjgjB2eDf2zUbdmH5m++jnSgRZqnQSOiLTl7myYdsYE
         Si5ssb1H+0kf02+wbIMhhtJPBr4V5sFCwmGf3dWPihdIIyuy08Oa/V7bcbuzCazG2rib
         1zv+pLA3I4WoiVgz1kpF50o6rMtK4P1Uz/90UBfgQH1duxPXCNRksL1BRc4f9+dsAOEU
         N/KNHxOOsF2QJ6ODLzHlBkQ1iH0qwwcj3MdcxuH6XfFkh/lVFzVzVorCB9QX500NF3bi
         0CNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MiDdEcgJU6lZRAsVx6o3I7OiP6Pme2XVhhWMc8y2DiI=;
        b=jGlZ6wy1IBgYJHDsmSIIplVA6vKPg/TrEWWzI5+/osrq1qbCLJhJJvxQbUgw+ywTpv
         02SdAJWl092dyPvNyCFeFBgRWALjs7NJqUZCqN9esPsAGu8bg05Pf062c/MQhTFXyL7N
         k9RLU1jc5Lfgxdvdbg8kWv/CtrZlVB3LZcWZkdNSURUk+KchWCABwZ/RFsvfkcsovc51
         2I5pqwpOfMwY9s4ka5GWZL68ehobtLNFR8m2kaVvwZ+sHQdENsEw1fgFybAaDe1+oerb
         R3Uc7EvegZ+zMhvhE5nNsS2nBgwtxEuVGSk+HWvnp0PFX3ug1z94bhU/1V9Ag2poCPLF
         Z3YQ==
X-Gm-Message-State: AO0yUKVEHR37yPrsVstkONzQ53eQ6YC2Wbq9CbNagkHpEqjWeREOy9o4
	up8M7dD8FVCwnkIFQB4yQMh6/kpW1SUcxLwSe2EbQ73aom0oNQ==
X-Google-Smtp-Source: AK7set9As3pAocKcNI4WhZ1JO7yImYg7pFmuoAv+Ghvzcozoi5/1HbazVv6C7H+1CFmpc4IDVp13UqiwPl9Rnt5HEu0=
X-Received: by 2002:a17:906:a1d4:b0:877:747c:9745 with SMTP id
 bx20-20020a170906a1d400b00877747c9745mr4702664ejb.8.1676292235292; Mon, 13
 Feb 2023 04:43:55 -0800 (PST)
MIME-Version: 1.0
From: Kevin Williams <zs1kwa@gmail.com>
Date: Mon, 13 Feb 2023 14:43:18 +0200
Message-ID: <CAJhOL6e-nU-DfDhH6ydfxfmo4t__UpPjYGFuPGeo5c=u8MJwEA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: EF2BVGJKCC44DGGXMO5PJCAYIDR4U6T2
X-Message-ID-Hash: EF2BVGJKCC44DGGXMO5PJCAYIDR4U6T2
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] tkeep
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EF2BVGJKCC44DGGXMO5PJCAYIDR4U6T2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3813681861431969961=="

--===============3813681861431969961==
Content-Type: multipart/alternative; boundary="00000000000039735c05f49433ee"

--00000000000039735c05f49433ee
Content-Type: text/plain; charset="UTF-8"

Hi Everyone,

Why is TKEEP always 1-bit wide on m_in_payload_tkeep and
s_out_payload_tkeep in the rfnoc gain example, when, according to the AXI
spec, it should represent the number of bytes to be kept as far as I
understand?

Thanks,

-- 
Kevin Williams

--00000000000039735c05f49433ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Everyone,<div><br></d=
iv><div>Why is TKEEP always 1-bit wide on m_in_payload_tkeep and s_out_payl=
oad_tkeep in the rfnoc gain example, when, according to the AXI spec, it sh=
ould represent the number of bytes to be kept as far as I understand?</div>=
<div><br></div><div>Thanks,<br clear=3D"all"><div><br></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature">Kevin Williams</div></div></div></div></=
div>

--00000000000039735c05f49433ee--

--===============3813681861431969961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3813681861431969961==--
