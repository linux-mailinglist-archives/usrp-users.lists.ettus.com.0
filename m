Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 028F09EBB80
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 22:06:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6484F385D79
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 16:06:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733864784; bh=e6t08z7i00eu/yTmAlD1uRA8vPhky1dWpwKY3O+mwvU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=i0Qz5lj9uCOx37uu2VgCV3hRCgRzwo1emEF99acx7w7/VVZKwhUV9poFD0PtuWodZ
	 snkwuqGY3Oqf67t+lQZAql5SdDzPNbxJpiNAKvHuA6rz4XJ04D+EeFdyTRDlGs+9Iv
	 2dCjkYl3gOreofYltXLc5jdpUu3yC76Z8VIFX/WwMemd1e1THsp2YcbEJjyIcHHprf
	 /YVQlsN/ntWglIRMu1I71TLG7tCQl/VTl/+/6Hh4zpAj0y2tQ8/dgOvkHpo2AWB3eL
	 5fPyZzzdMao8i6kOxGgOY2Rc2/XV9+o9g6ZEJj6knz8+1x9syPyjxoPYGgGAnJk51l
	 CDRlZvEIgJXTA==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id EC45E385CDE
	for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 16:05:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ph0xJTB/";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6d933736380so3681036d6.1
        for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 13:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733864729; x=1734469529; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ye/071Z8I2MEVpLOaRvS934aVz5rEa0CH65NBtsW+dY=;
        b=Ph0xJTB/jhmgltFLcrQKhzC03AXpiAGxV+pnhU11Gz63/2svlwN2FF0nZxRHeMgoh0
         dIbyYfVRoxYj3cqpbwkNzPo90OB0taZMnP5xWT5IfYD93uSQl8QQuO7yJSCbGSmTIc44
         Xqh9vfN+7QFTuf7d9aDeQJX7ObvMmXD1rWdxLk7KVh81v7MupJdiyVQUQVxYBsqkETBW
         YFfQf0fR8JjbRRfguhBJns8LNOVWpUhBPKldnGF2jUUMpIWoOnKxj5m4iy0whc53RrWN
         RkMVndnBF9QD6+2Qh6pNU3iqzkp5OmDtxB61rfkRK2hYq+hKVGsBkk9IzjJtACbuJSW2
         wpvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733864729; x=1734469529;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ye/071Z8I2MEVpLOaRvS934aVz5rEa0CH65NBtsW+dY=;
        b=B2+FQHGc1mXImvKVLt9e78xwd1+RE0tBTcDE0y42Gi6xEl+6JFpQLndob9WgSXqsc5
         +ekOcPZJEekI+oH70PtEH0a4xzsz9wWiHBFbZpsvr15mxhvIiTfWOf4uMC8Yj55i+vbw
         atBbmPgS5ExhGjaDvefjz1jsSHckIWW8WdYY9i4jAMd5KlO83gGxhCkNfX+ZpgGJCZMZ
         nwdZVHbJwzlP076yHNLQpVEjVAdN+9rt4fCfQ+yZWrF6J3QwkFfqFNQYwoOwo2O2tXBp
         ngLKM8kFriQ97qUsynhbpf/rKEvN58Z77AF+48vFWk4BJDdOOjepJKO/Erq96Zo+bk/z
         FnOg==
X-Gm-Message-State: AOJu0Yyh3SEjq2AyUuSJCKTIkPkKCBR4vygWEutv9kNiWWsQWJFI46Pw
	LYS2LbO7aIpVGhLxEF366iFF8AgFDClDyljcEM8+ot1v1X+MKQhjuBI++A==
X-Gm-Gg: ASbGnctGCLgpk706MePsjZ7PDHqIk/NqeIqgZStwFnU9fS5oqa92+IuKQDljXeLHikl
	MqP3PXTjmIjTdF0VmkBxanhBqLIbG1J49/qIKnyztdJeG0Y2wxvPB1akqYszNVkvCOsRW//7zWo
	VFBEExU2Zjd8xqTNX3ch+0OmuL8Ij8CyBL/Dx1UC5SJ6RFD1+JuZTdoUrHz+6N3Yfqs/b1XnkPo
	llqybpSwTCbtOEIpoBAP5ZHsLGJM0n7zaR3pHa8N3HIrcCpnDLSAb4CrvxMRNIV
X-Google-Smtp-Source: AGHT+IEdjvcur5GWkXtVZPLrHYXl3V9xWy7sweQ7CaQE/iD+ZZENH2KK/ztz99sVnrbzf4zPD5nN2g==
X-Received: by 2002:a05:6214:4105:b0:6d8:a856:133 with SMTP id 6a1803df08f44-6d934aec119mr6436386d6.12.1733864729143;
        Tue, 10 Dec 2024 13:05:29 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d8da6977b5sm63551646d6.43.2024.12.10.13.05.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 13:05:28 -0800 (PST)
Message-ID: <874834e8-2b5c-4055-8bcd-6347554ed808@gmail.com>
Date: Tue, 10 Dec 2024 16:05:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB9126372E2F50840A52FB0898EC3D2@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB9126372E2F50840A52FB0898EC3D2@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: P4AYQRFBS3X4ODJ6KNRSWIMX5BPWAGX2
X-Message-ID-Hash: P4AYQRFBS3X4ODJ6KNRSWIMX5BPWAGX2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why is IQ cal disabled when using external LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P4AYQRFBS3X4ODJ6KNRSWIMX5BPWAGX2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3821609834363464072=="

This is a multi-part message in MIME format.
--===============3821609834363464072==
Content-Type: multipart/alternative;
 boundary="------------d2xnHDKdkmuDQL98LkhMUNIj"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------d2xnHDKdkmuDQL98LkhMUNIj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/12/2024 13:42, Eugene Grayver wrote:
> Hi,
>
> I just noticed that the calibration tables are disabled/ignored when=20
> external LO is used.=C2=A0 Why is that?=C2=A0 I understand that the aut=
omatic=20
> calibration utilities will not work (over frequency). However, we are=20
> generating those tables ourselves, and expect UHD to use them.=C2=A0 No=
w I=20
> have to hack my own code to duplicate the calibration functionality=20
> and 'manually' call set_dc_..., etc functions.
>
> Thanks.
>
I guess because the CAL* utilities run the chip in local-LO mode, and=20
the IQ and DC cals are only valid for it.

Now, your point about producing those tables yourself is actually a good=20
point, and I think this constitutes a
 =C2=A0 feature request...


--------------d2xnHDKdkmuDQL98LkhMUNIj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/12/2024 13:42, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB9126372E2F50840A52FB0898EC3D2@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        I just noticed that the calibration tables are disabled/ignored
        when external LO is used.=C2=A0 Why is that?=C2=A0 I understand t=
hat the
        automatic calibration utilities will not work (over frequency).=C2=
=A0
        However, we are generating those tables ourselves, and expect
        UHD to use them.=C2=A0 Now I have to hack my own code to duplicat=
e
        the calibration functionality and 'manually' call set_dc_...,
        etc functions.</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks.</div>
      <br>
    </blockquote>
    I guess because the CAL* utilities run the chip in local-LO mode,
    and the IQ and DC cals are only valid for it.<br>
    <br>
    Now, your point about producing those tables yourself is actually a
    good point, and I think this constitutes a<br>
    =C2=A0 feature request...<br>
    <br>
    <br>
  </body>
</html>

--------------d2xnHDKdkmuDQL98LkhMUNIj--

--===============3821609834363464072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3821609834363464072==--
