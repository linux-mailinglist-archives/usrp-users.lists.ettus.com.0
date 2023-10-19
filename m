Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD807CED1E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Oct 2023 03:04:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36D3238766F
	for <lists+usrp-users@lfdr.de>; Wed, 18 Oct 2023 21:04:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697677483; bh=Cbrb5j5ft3bQSP89eRJxni1U1cyWItkiwI3MaVFElxQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ynkKy8o70NZ3Bymbg+MZf0n5AKFvP932eiHDO3dKOVAZOSDhqBl1Uz03pFbN60emu
	 DZqaj+GW5M8QbdA9yVbi2zsB0p/A0rfb/iGKNV7kioZ1EoBPyVy/Kuie1rFTn6DDQ/
	 sCXPDcjezzUfdClMQ/6IDU8MhLZrIYtS8BnikKKYgeRKMFHurLM7eDEGySWiQkYk5q
	 OPc+tU7H2CrH6wf9P3sYkHRqUqmBcxRThlqR+nL3BRpKQU7Hi49tRlUJDvV9TbULLX
	 cC6XbHcjbD3hL0pMYtfeUAxwTG3OU1iRhxA1Bzy1ZdjsXvMeOjzcJMee/ggYW1RStV
	 jEN8jzulre7sg==
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B31C3874B6
	for <usrp-users@lists.ettus.com>; Wed, 18 Oct 2023 21:03:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f0odtP1v";
	dkim-atps=neutral
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5a7b91faf40so90770917b3.1
        for <usrp-users@lists.ettus.com>; Wed, 18 Oct 2023 18:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697677436; x=1698282236; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pfQiZQuJRfz79HRolTN8tqhGjK6ZHLSdkG6Xg5/5Q18=;
        b=f0odtP1vXpRtb0tIoj3amDU2nnjWcLOIDXJt/VMYR0Z4zwYgkQUW4h7ug0+7fWoJPL
         ieogyg1pI8thnNkw0AiCAia0eIubFcTTYTdgrgu8LlhfT6HsMOJd1Kbk6rRgn5gkB0km
         pTA9SOhsmvJssHdn/kLuYqhvlSFVx12G8jRt6VZRN7705B7ozIox0Y7KhNGxetNWIFmH
         nqukHNlfZAyWd9BGnf2k6VXGgK9ed7EvBOxgYKrV7+YaBCM5qbV2eZkOx5bAnDz6KnVg
         7qlmBsKwgUxgyxwrMcim+0dKM70meTTDW9T49tQUOGSkPI9NJwWEp1orKQMPtCmsZ7Eq
         CAUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697677436; x=1698282236;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pfQiZQuJRfz79HRolTN8tqhGjK6ZHLSdkG6Xg5/5Q18=;
        b=Jz5d0rdE4T3ybL20U/CF1VTUR24tfL7kYU5lb1LFjowEYpdsvYcaELW8vCsiVzCwcx
         VY6sUrG9QzyFX9Dyl//qTzLYHQr8Pl0H2nMRsZah/RQ5y9mMcpTfGDpRPwji7HJ+Auo/
         TUdLXXDSG+K8hc3GCiGvSkpj7MZJiuYpoB8uXnAnn28q06SnDDjD/UPDRyccRj10o1ql
         YcetDolsQRQNKohRJJOQp13nbDwule91GkNODV/myP0pdKD09SeXqmSjTpTfowrSWW5l
         6PRwvvSCTpBE4HXa3vdUDRbhCAAJhe3081A9FotiPNsWe4Jqw4dFVYZfz7N1YqJ7JQLE
         T4MA==
X-Gm-Message-State: AOJu0Yx85G9rIDNpnRVpnE+heCjwMhi/0Xu6oF82d5sIu5RZS+h2I6+M
	1Lc6pYBQZ6MUR9wyag7ZeDbq5N2gV6g=
X-Google-Smtp-Source: AGHT+IHqCoV3HcuFWMciXQUS8TK6F2CHhcFiZbt4KhGv/VEEouDwAt3/KM3GKb1Aw0Y1Gf1eUXbHkQ==
X-Received: by 2002:a0d:e654:0:b0:5a4:db86:4ea8 with SMTP id p81-20020a0de654000000b005a4db864ea8mr913789ywe.31.1697677436646;
        Wed, 18 Oct 2023 18:03:56 -0700 (PDT)
Received: from [192.168.2.200] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id u1-20020a0562140b0100b0065896b9fb15sm383428qvj.29.2023.10.18.18.03.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 18:03:56 -0700 (PDT)
Message-ID: <5c66bf72-96c2-45aa-bd91-c7b7dcf7c246@gmail.com>
Date: Wed, 18 Oct 2023 21:03:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SA1PR09MB913066B57749C64C57C389D0ECD5A@SA1PR09MB9130.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SA1PR09MB913066B57749C64C57C389D0ECD5A@SA1PR09MB9130.namprd09.prod.outlook.com>
Message-ID-Hash: 55K43FC6RKOVJNMGUSGZNFO2ABTRDK2Y
X-Message-ID-Hash: 55K43FC6RKOVJNMGUSGZNFO2ABTRDK2Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full scale power for an BasicRX on X310?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/55K43FC6RKOVJNMGUSGZNFO2ABTRDK2Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3839202745645526475=="

This is a multi-part message in MIME format.
--===============3839202745645526475==
Content-Type: multipart/alternative;
 boundary="------------eS1mldHSVx6xZIfnWU50SnbB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------eS1mldHSVx6xZIfnWU50SnbB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/10/2023 19:45, Eugene Grayver wrote:
> Hi,
>
> Does anyone know what the full-scale power into a BasicRX on an X310=20
> is?=C2=A0 I have one in the lab but am too lazy to go measure it.
>
> Thanks.
>
>
Probably about +3 to +5dBm, somewhere in there.

The ADCs are usually set with a 1.2V reference source, but with a=20
100ohm(ish) differential input.

The Basic_RX is basically just a transformer-coupled "buffer" for=20
whatever ADC is on the motherboard.


--------------eS1mldHSVx6xZIfnWU50SnbB
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/10/2023 19:45, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SA1PR09MB913066B57749C64C57C389D0ECD5A@SA1PR09MB9130.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class=3D"elementToProof">
        Hi,</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class=3D"elementToProof">
        <br>
      </div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class=3D"elementToProof">
        Does anyone know what the full-scale power into a BasicRX on an
        X310 is?=C2=A0 I have one in the lab but am too lazy to go measur=
e
        it.</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class=3D"elementToProof">
        <br>
      </div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class=3D"elementToProof">
        Thanks.</div>
      <div class=3D"elementToProof">
        <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
        <div id=3D"Signature">
          <div>
            <div id=3D"divtagdefaultwrapper" dir=3D"ltr"
style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
              <p><span
style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: black;">=
<span
                    id=3D"ms-rterangepaste-start"></span><span
style=3D"font-family: Arial, sans-serif; font-size: 13.33px; color: rgb(0=
, 0, 0);"></span></span><br>
              </p>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Probably about +3 to +5dBm, somewhere in there.<br>
    <br>
    The ADCs are usually set with a 1.2V reference source, but with a
    100ohm(ish) differential input.<br>
    <br>
    The Basic_RX is basically just a transformer-coupled "buffer" for
    whatever ADC is on the motherboard.<br>
    <br>
    <br>
  </body>
</html>

--------------eS1mldHSVx6xZIfnWU50SnbB--

--===============3839202745645526475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3839202745645526475==--
