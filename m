Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F32A2D061
	for <lists+usrp-users@lfdr.de>; Fri,  7 Feb 2025 23:20:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFD7E3860FD
	for <lists+usrp-users@lfdr.de>; Fri,  7 Feb 2025 17:20:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738966844; bh=XvhvM5AcIW3CMa2N4NoEml+HsVp8Adqxy/mh5zQDiDs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fr84CJunOzxf1cfmJZI/TtrgaRrJGcQPXgJXJ+VQPsNfREKIwaZdxw9EmB9kzTDf4
	 +LTnBv2TozR2NuBWlFwZ2zT7zrxASJ2ARjbSIuqE23LZKE4rH5dUCsjiOcb5qCb6Gg
	 1Mp4A/Vdntit3DqfWAZ8tBGbZDlRL4HjHQfKeltjyWepym4bl+7gHHY+E0H5OMwNtA
	 ZFn+W8DldDk3mse8E+NdnWvCllCd+NNz8k4TDTtOvaMDKGlAdJYTsY6CLtwawwIFTR
	 gok/TAyCF0GpHzc1MRpWsdCGkYcwZ+CQ6mWmfmQJRRhTIf0QmZtLRrR2RDiTd8Wlxx
	 h3/WeeRqVUcVg==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id A861E3860C4
	for <usrp-users@lists.ettus.com>; Fri,  7 Feb 2025 17:20:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i5IESB0b";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-46df3fc7176so22490691cf.2
        for <usrp-users@lists.ettus.com>; Fri, 07 Feb 2025 14:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738966831; x=1739571631; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=97MFW1FbiAFMKCc601KSStzeQjGH3DqbrUTgQeE2HIk=;
        b=i5IESB0bhMiOaBhTLT73qpl0VgxlrPZGQ2d+Bw0nxp2smfWjxjI7LaJaQ0ViEM+rBi
         NQ2O6J/fNI7+CZAayXwdu5UMJNEm3rYHpWg1iC3uHkmgyns2CGVqqtfadElSa4Ki/9gw
         k3iZAzG2mc0W8sMAb2zcrD08Udp7oKccfqrHoyoEzjAhSlA4qOLrOGtN6X8ojQvAdTTY
         LlcdZAFBGBJ3jNgA1dvHpZbJggrmjc9LJrZO7Yeu8K8U4jTjHyz7aOZvedr2AAX52hWj
         yLyDSHgW/OZ2TK1Ssi/5ov2/gfrmYdcIiQ34QgDf1qWl8mLMUXbW/M8Y9T/tGtBF8rLi
         fAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738966831; x=1739571631;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=97MFW1FbiAFMKCc601KSStzeQjGH3DqbrUTgQeE2HIk=;
        b=TKFO/Oe9K4YAuXiA4YNjOYiSiRXUbBM7sk6QIzcEJb8pd/Ey0C8P+NuRI1BGXcNxDO
         bPT3fL5R3pPXriawVtXEb+WbEuC2wI1Dk5S1UblA9e8Ovg9aC3Mfd57KA2fO6adKYLlQ
         ORKgkfz5hUcbc1FB6l/vboyDHDrpQr0LhOQyNNAw8z1715KtysjTrhJca+vhzDPWQ7qO
         zACEiaLPeO0oufkX4fKOv0G3dm401UCtjfvdFr4W2QwGbQZwbVKac1xIjilDQjzgbRmG
         g7+O7j3ZE3rOkIPmVOEFnvbMfSVfJ2qQPj040v/Ngynw7gKZ34W6xpoo4OyX9HieqWsD
         wb4Q==
X-Gm-Message-State: AOJu0YxzeApFeShUBVirlge1d0yBWFENMzBnTTnv9w7bp7bVRoQmwGau
	1iopA8Sh31wPvdTNSP/OznymBf9JT6stjBkzPkbOt/sGHLDGYmvmcyPCRA==
X-Gm-Gg: ASbGncu8jGmx152m80qwqHbQCf8b9b4Ka7RrZ5u7vxOBD63MJK47X8EcHGXGs603g1u
	QHA1JvJxd1genA9ge8+7qoHJcElS7b025GjOdC2LEZ2vhZHDW4yygBDfuHiwe6DcvUV7D1p5cHv
	D5PAk7CoKbZDC/AOS54u5U3fr6Zvaf6jy1Qapi3xBAzBc3A8g0ovfsN5hJEDMYSRTepTaUbOIJ0
	I5klu32chCwVAJIm96z8ZUQ4t4J/5EvV5MnJA2YF42RMS/xtGLjxGltsfcxnQm3PYCtRhqxpyJh
	7fKONJ3KA9r1swDcneprZNpB3A==
X-Google-Smtp-Source: AGHT+IFZ0a/3fxThutUU8dIzjK4cOoqn/CBNDAeZmTa1QK8iUV2RAW23Y8tEfMwPyWuq1Ub5wmfhiw==
X-Received: by 2002:a05:6214:5094:b0:6d8:a5f7:f116 with SMTP id 6a1803df08f44-6e4457148a8mr65553696d6.42.1738966831042;
        Fri, 07 Feb 2025 14:20:31 -0800 (PST)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e443254399sm15179876d6.49.2025.02.07.14.20.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 14:20:30 -0800 (PST)
Message-ID: <0fb871b5-6b92-4646-947d-74961ab61fe4@gmail.com>
Date: Fri, 7 Feb 2025 17:20:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB912673D9052B0D2ECE79DBF9ECF12@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB912673D9052B0D2ECE79DBF9ECF12@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: MCZLRMZE2MDMQGD4KV4GQXCSYMY6BWG4
X-Message-ID-Hash: MCZLRMZE2MDMQGD4KV4GQXCSYMY6BWG4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO offset with external LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MCZLRMZE2MDMQGD4KV4GQXCSYMY6BWG4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5425303171255390081=="

This is a multi-part message in MIME format.
--===============5425303171255390081==
Content-Type: multipart/alternative;
 boundary="------------3yr80DA482FGd0ApkDpaFSmo"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3yr80DA482FGd0ApkDpaFSmo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/02/2025 16:55, Eugene Grayver wrote:
> Hi,
>
> I am using N310 with external LO.=C2=A0 I still want to use the digital=
 LO=20
> offset.=C2=A0 However, it appears that when the LO is set to external t=
he=20
> digital LO offset is ignored.=C2=A0 Am I missing something or is this t=
he=20
> intended behavior?=C2=A0 UHD 4.6
>
> Eugene
>
This doesn't *sound* like design intent, but, maybe?

Have you tried it with an earlier UHD, just in case this is a version iss=
ue?


--------------3yr80DA482FGd0ApkDpaFSmo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 07/02/2025 16:55, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB912673D9052B0D2ECE79DBF9ECF12@SJ0PR09MB9126.namprd09=
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
        I am using N310 with external LO.=C2=A0 I still want to use the
        digital LO offset.=C2=A0 However, it appears that when the LO is =
set
        to external the digital LO offset is ignored.=C2=A0 Am I missing
        something or is this the intended behavior?=C2=A0 UHD 4.6</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Eugene</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
    </blockquote>
    This doesn't *sound* like design intent, but, maybe?<br>
    <br>
    Have you tried it with an earlier UHD, just in case this is a
    version issue?<br>
    <br>
    <br>
  </body>
</html>

--------------3yr80DA482FGd0ApkDpaFSmo--

--===============5425303171255390081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5425303171255390081==--
