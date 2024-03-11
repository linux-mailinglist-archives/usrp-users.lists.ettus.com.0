Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A9E8785F0
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 18:01:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0035B385062
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 13:01:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710176496; bh=eD0EixDW+32mlnz7gnSJQKRPwHjVESpeRGSEaehNkM0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=V4kQyL71MCYOzJBRBJeIB/uUf7a6YIgOq717h3ZDz9/o7wY270wUkOBOsCiUYe6P1
	 8wYc5fNAnVX7ckQZbihobDC6VFWUCEL3ABpr2sVqeC7JYTGT1wu6yx/Jj0/bBpjfAr
	 hybarmn4nBKvxWXoq4kF5KnZvgeHxiBJtERvydANMo6Y5xIg+iEko2EWGaKcBnwzV1
	 x6n+HIPCst9k3x1ypHptqRXtNRXtPxAz+wUIXgT7QeEjts0BynuDS85WYCmSdzwV1c
	 es+g2PjIlonIxcUxSCepXFwQQW/siR99FICEnaNYn5ojth7vYsKGCfITKjmJtwNH3d
	 5JJ2WptghPV3Q==
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 122FB385062
	for <usrp-users@lists.ettus.com>; Mon, 11 Mar 2024 13:00:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DLPWGe+K";
	dkim-atps=neutral
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5a11f42324dso1951948eaf.2
        for <usrp-users@lists.ettus.com>; Mon, 11 Mar 2024 10:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710176457; x=1710781257; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IiDLFHPErjMawOxVBbNVnl6zriQHJJfAGkmDILdDds0=;
        b=DLPWGe+KD2Ln3uv2YtRIuyfB/Dxau8IrBbwInb+z2yIouZh581QFcARqveSOzS8Kwv
         1CkbMSJCOZBNmhG0JW3OQ9UCyYkOJL9CYvMfNU4baOPKrXdbX3oIM2XYE785qbd5TA56
         p9apR+KEY2NE3V8ZgtGLxcKrijN9SVwefSXBVteCuDiF2IZ58HpOS2KFRZ4kJiWATcKg
         0bz+asOegovEAdpRdTHzdX59DnH6dmkfKOjNOICPrtrdkACNnDqPi63HueEi+vVIAzhD
         Sj2NL7y+D0zvJaI+OKywpomx+WJA0frRZ+Nfuis98P+f2zgLwjM8d3S91oJoJ7PuqnD4
         3i8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710176457; x=1710781257;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IiDLFHPErjMawOxVBbNVnl6zriQHJJfAGkmDILdDds0=;
        b=Yzf5dx9suPlKg5V+GQ722fNpT4Ee5lmdryamSzEZvg6QAg+nM9xIbv9kKyB+Rg32eQ
         fXEAc+m1nyEn5/YEaId0CTV9LkLhn0/LwNS2djdoR4NAaaiR5zlmsY+UGdi+zY876B2F
         ovCQyZxUMTkTzJjqx5WFLcT/JFowVvc/BH+ZRDepTJyp85w2DdQlKQNklqWkIt45Glum
         YJbwGoaeyq30owTRV9m0uQgFBCSx2eIpqk25k/EzQW0RRFVerPfCWXNJ3zyMrcDjEjvS
         kJ95NASidDSv+iBLBgcg8vm3m16FEn8KqB+9AJI7/wMIYeX2C+oqaLrLdO9CAkLBk858
         SPxw==
X-Gm-Message-State: AOJu0YznCyfCEdgIls9y97wWqF6WUVKSDGWgGlfGX4X4wxyT3FefB4S5
	YmE/7Qr9GLUZPP10ysvd3y/1J+QskXCgZ3OHMkHRhNQGZquJq73V55VI+7lYnZE=
X-Google-Smtp-Source: AGHT+IHKOHkKNUW9+j8WkXDMy3DQmt9d6Z0RyOiCogXMPz/IgpIjjEJC2lbqDw6Ln5YPR/BffJVigw==
X-Received: by 2002:a05:6358:4421:b0:17e:68e6:712b with SMTP id z33-20020a056358442100b0017e68e6712bmr1268412rwc.12.1710176456944;
        Mon, 11 Mar 2024 10:00:56 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id g24-20020ac84818000000b0042ef85c6a42sm2864114qtq.17.2024.03.11.10.00.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Mar 2024 10:00:56 -0700 (PDT)
Message-ID: <aad5784b-d31a-4a2c-af38-e61a4b3793f9@gmail.com>
Date: Mon, 11 Mar 2024 13:00:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg@lists.ettus.com>
Message-ID-Hash: R2MK7URXOEG33UA62A2DSOZV2Q4IOLXY
X-Message-ID-Hash: R2MK7URXOEG33UA62A2DSOZV2Q4IOLXY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Non-Unique Device MAC Address's After Mender F.S. Update
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R2MK7URXOEG33UA62A2DSOZV2Q4IOLXY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4724754187248609205=="

This is a multi-part message in MIME format.
--===============4724754187248609205==
Content-Type: multipart/alternative;
 boundary="------------NuIAPJg7sZAB9lVgxQxicVkz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------NuIAPJg7sZAB9lVgxQxicVkz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 11/03/2024 11:42, edenmclaughlin123@gmail.com wrote:
>
> Hi,
>
> We had a need for a multiple device - single subnet setup. After=20
> updating multiple E320=E2=80=99s to a newer UHD version, me and my coll=
eague,=20
> we realized that all of the devices share a common MAC address. This=20
> results in unstable connections within the network. As for in this=20
> thread=20
> <https://lists.ettus.com/empathy/thread/POYUYNB4RH5MFPADPFYTSLLKVAWT64M=
6?hash=3DPOYUYNB4RH5MFPADPFYTSLLKVAWT64M6#POYUYNB4RH5MFPADPFYTSLLKVAWT64M=
6>=20
> is there a non-third party, Ettus supported, homegrown way of=20
> restoring/updating the MAC address of a network device, specifically E3=
20?
>
> Thanks.
>
>
Trying to attract R&D's attention on this.=C2=A0 I know we went through t=
his=20
with E310 years and years ago, but it was resolved.


--------------NuIAPJg7sZAB9lVgxQxicVkz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 11/03/2024 11:42,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:edenmclaughlin=
123@gmail.com">edenmclaughlin123@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi,</p>
      <p class=3D"">We had a need for a multiple device - single subnet
        setup. After updating multiple E320=E2=80=99s to a newer UHD vers=
ion, me
        and my colleague, we realized that all of the devices share a
        common MAC address. This results in unstable connections within
        the network. As for in <a
href=3D"https://lists.ettus.com/empathy/thread/POYUYNB4RH5MFPADPFYTSLLKVA=
WT64M6?hash=3DPOYUYNB4RH5MFPADPFYTSLLKVAWT64M6#POYUYNB4RH5MFPADPFYTSLLKVA=
WT64M6"
          title=3D"E310: Change MAC Address? " moz-do-not-send=3D"true">t=
his
          thread</a> is there a non-third party, Ettus supported,
        homegrown way of restoring/updating the MAC address of a network
        device, specifically E320?</p>
      <p>Thanks.</p>
      <br>
    </blockquote>
    Trying to attract R&amp;D's attention on this.=C2=A0 I know we went
    through this with E310 years and years ago, but it was resolved.<br>
    <br>
    <br>
  </body>
</html>

--------------NuIAPJg7sZAB9lVgxQxicVkz--

--===============4724754187248609205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4724754187248609205==--
