Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD799E59DB
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 16:38:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C5607385AE0
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 10:38:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733413104; bh=697NJBNZ7nY1UtHkH88CnKy/BPyscce9ZZs3NwCEdSs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=M/q0oNtM2FJxQIRIk80yL0MPQNlHUQdewR2otm3a7Zc4KOV6qRnti4C7WnKxaOrN/
	 Km9+5g41BistajG+Upx94QBQRR1QA/UGJY9u/k2E1aWpBoOSg2cKOtyBfga9a1S2A6
	 eqRVaSNYjbI/TMOmpYYnaq+oPDakTS2VDYozwqawohguYSn2VIkGTdqJkwiZ3RlLuL
	 7+LWgv9tXdBrCcKX73sD68YQOPxd9WofINL3mgzAutmWfavDmyn7o0CTe0uis2PPcy
	 aZQ59CM9pLMe4ZoSdcvMBOfvWxHJ7U/gfV1fETmO7LNZI8oRvqyprTS6/jY8+BaaGy
	 7yNC8gIq5CrhQ==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 9705D385978
	for <usrp-users@lists.ettus.com>; Thu,  5 Dec 2024 10:37:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aCdAuTnx";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6d8a2d0588bso9715766d6.2
        for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2024 07:37:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733413059; x=1734017859; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J/ank7Mnr3BMFskgNqOO9z9gGmn6lOb/lOqv4rIoA5c=;
        b=aCdAuTnxjfZkiejo7z5q6QXVEn+XvvgCUyBQtiXoNW+a7iqk+Aomxvy9Wj80iQ4o8X
         sXcTHHXNjiwBC1iJGCtaRWHTVidm5XcN1f5rlZ8G48wpBMsRUzKPeE8tEtiKGFnGCVDU
         +I0bnjTsFSV9bDh3thHJn62RuS6cxXhVKUzCH6irJtc9SWbeR+ffxDabTWW+ryLhGg+5
         6xfX5PsSZB5vihLOVTOFSKbOcidLu7z/uglvDNWjIDmOYJcLj6Vb0Q5YgbYe+eaPqU7c
         B2Cf6ZgY1pG55/f/5Q7RPsfehZpqDT5ZIqQvwVTvjbF+oaDSUOvJSHoTwnrggFLLq6qO
         tjhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733413059; x=1734017859;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=J/ank7Mnr3BMFskgNqOO9z9gGmn6lOb/lOqv4rIoA5c=;
        b=Ot5x7YDVwng6PY9N1BJmZKMeiDmkfAuOG+qEkmJUgboy/HzzdZX2RSr+TSWUVDGT9h
         Ey141CaocdmI8OauOHEWgMhkJh2iONv4uF/pnIPjUhA30dn8emaDliGrP1uCo+L7QA27
         9SdFxOEcX57lY9S3RfOMXZ1Ot/3rsjtnCXna+9HhymMtl15wafAuuUKWInFMI74gCe/B
         3nX7Kt3CQab0cOl4zZngx9Iro/Mri1C5FmUNZyGXXD3cif0SSTe9/d+kmlYdRLLwWQDL
         FBm30E9ZdN5y9AVYsni5mydimjNGtttz2I21GjCK7X8CSVEdFT91Zg+zCpmfwsnOb+kl
         ds0Q==
X-Gm-Message-State: AOJu0Yw3Pqpx/fwfbNuVDSKN988IbUtw6Bye1LjZD3NfKxgdBTOncD+Q
	mh8oPTILHe8+Z4nxTn7ljiquYmA1h74+Y8rz5cEbu6x8i97FQEmCa06jLw==
X-Gm-Gg: ASbGncsa2WRMOpuQcfwBv+y1pzrxcdMj+x1cj9pVlHcTrBUcSqq/iTSq/RJnhed5Gwu
	7yTjC+yeUxEiIXas1TbwNj0G6lA21JcBvALJnbYd0pUEqYX+JSaHjNu6v/SI8rlJ/ZasJch3ul1
	q2iUp1tG9DLNE/GNwsBnd1dr/opYz4VqpTXVsjxbF+c6HqAGrewUYqMsMgBohNz+twJ4ggflKAH
	xxSEoJB5Y4sJIZC6r4WG4RNTMSXRqg9Zu7LqVyr1HF6yv0lx/LD+4JdCNhW
X-Google-Smtp-Source: AGHT+IHWj0GSkAe5ci0XItj7W7s0BGr0rlpcJogEcoIVu7MyV1pJE1EyEuF5lcff+OjK4E8wQv1CkQ==
X-Received: by 2002:a05:6214:21e7:b0:6d8:8e27:5a45 with SMTP id 6a1803df08f44-6d8b74468d3mr196670306d6.39.1733413058669;
        Thu, 05 Dec 2024 07:37:38 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d8da9fe9e1sm7567996d6.82.2024.12.05.07.37.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 07:37:38 -0800 (PST)
Message-ID: <d8f53099-af23-40ec-abd3-951576ef8ef7@gmail.com>
Date: Thu, 5 Dec 2024 10:37:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SY7P282MB39787EB6FA259C2F9899386E9D302@SY7P282MB3978.AUSP282.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SY7P282MB39787EB6FA259C2F9899386E9D302@SY7P282MB3978.AUSP282.PROD.OUTLOOK.COM>
Message-ID-Hash: Y2RF5F6VAC3M4LPC3EESUWF7YAQ6EPWK
X-Message-ID-Hash: Y2RF5F6VAC3M4LPC3EESUWF7YAQ6EPWK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use multi_usrp to open multi b210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y2RF5F6VAC3M4LPC3EESUWF7YAQ6EPWK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6740929466385528220=="

This is a multi-part message in MIME format.
--===============6740929466385528220==
Content-Type: multipart/alternative;
 boundary="------------uNf96D58ldfpIQDD0gty9fA0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------uNf96D58ldfpIQDD0gty9fA0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/12/2024 22:37, james Thomas wrote:
> Hi, i want to use a single multi_usrp to control multi b210. all b210 
> is connected to the same pc.
> is there any code example of this>?
>
The multi_usrp object specifically doesn't support multiple B210.

If you want multiple B210 in a single program, you'll need to use 
multiple multi_usrp objects.



--------------uNf96D58ldfpIQDD0gty9fA0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 04/12/2024 22:37, james Thomas
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:SY7P282MB39787EB6FA259C2F9899386E9D302@SY7P282MB3978.AUSP282.PROD.OUTLOOK.COM">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div class="elementToProof"
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Hi, i want to use a single multi_usrp to control multi b210. all
        b210 is connected to the same pc.</div>
      <div class="elementToProof"
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        is there any code example of this&gt;?</div>
      <br>
    </blockquote>
    The multi_usrp object specifically doesn't support multiple B210.<br>
    <br>
    If you want multiple B210 in a single program, you'll need to use
    multiple multi_usrp objects.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------uNf96D58ldfpIQDD0gty9fA0--

--===============6740929466385528220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6740929466385528220==--
