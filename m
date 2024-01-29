Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED891840963
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 16:11:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFDCC384E12
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 10:11:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706541104; bh=naMiRBlV+WhUe56hBmkX340FXn44rzfOlP3F+LJuOX4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=K5fn8BOeJwBpNzBc859f/Wk2PvqGWFIFW2y93ouOHZ1FZJOrtdqCF+kL9DBcNQXds
	 4HFvDfKRCiQkmh0JpkT/PxhUtTjoTEtGOlcGie6Vo93+3soU82Htw5jpdhta5XBX7V
	 TP037oR4tkcP8swOhodITk7ccyuAso1z9MaYcprBBq/dOI6B2e+wK+kBkjW25XXX93
	 dmgLPP9BknsgLohb6PWFWvuHzd5XUdYpiMVztTzxXJbm1FU/AQ+OwBRm3URP80npXG
	 aU3jmGvKS9GA7ewOD8FI9dt8Tbfafv//mkifTdmkbd5vjSyDMd16efDugh+kfNE6w8
	 on+LHI+WNmMLg==
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 704D1384514
	for <usrp-users@lists.ettus.com>; Mon, 29 Jan 2024 10:11:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="FMD+0ZXJ";
	dkim-atps=neutral
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40eacb6067dso43722765e9.1
        for <usrp-users@lists.ettus.com>; Mon, 29 Jan 2024 07:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1706541071; x=1707145871; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fGitg6FTq465cDPWNOHEgS7kh7EXUtPE9QdFnRMYEVM=;
        b=FMD+0ZXJ5WgvBlCC63aEfK83AMZaJ4B/ji9bKyeikqM2dABtrwVikC6FxzdZIH3OA2
         hhzWfeXpkobvihyX3mkE3pDAzVuOzV8/gZ3WNpHIYiOZ0ktjRMZg53iYnulL/CvQ5mss
         ULv4YH/vl9wwRAbInIOSKvLbOpje2kUKlpwDVxuNN6CgKMtDxNjNtNVBwEkw4VVxdUD+
         XsoAYS2o3qsZytJI+HoKRVuTEN9H/d8StBB3Na+qQ/2jRckVU/OZ2cisAVr0QCC3sO9q
         eMGjaUuTJhFChEIRlxbePGkhT7ZUUxnNsjctKXfEOOJd3Cv6ZCETcjP0883tWI0w++do
         becw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706541071; x=1707145871;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fGitg6FTq465cDPWNOHEgS7kh7EXUtPE9QdFnRMYEVM=;
        b=S8rlappGjdsVAp7a8AIZd10bWepbAJACmwdCU0k/SoDxaH+HRe3ZWsRCQToX+iATfc
         K4rYOxuZarUSvrY0AXSFjaUzmzRwY0uXDy8+QKiW1ICukwZArRlBqLM8c7cxvDMUVwc8
         lUftX15XkxAZ9RMtC1HElIqygk+qzHhJVEkjL4Ayc+KfhOAQceG8jeC2a2omTyXIo+ut
         ESH7ZUZPejR8GxRcSxYZ3F8fvtR91CqxXmpFwMKai7RVnYsJecTZ0DKxTVZUepp8G1mk
         tykrtwN3dqpJH4flNsBIyd+CTQMv3hRxK2vd9VdZx84TkZobbyURE0QZ22Gl/P95CD7q
         zF5g==
X-Gm-Message-State: AOJu0Yy2THHxLYGFC8jabOOcQyIJzqYXyK76bU3UtzXEG4oS3j5Kt6PO
	b+aClZSNq79ZKbiTT+gXBhpVESi42drx+Vdh+Ju/unH840v66BEiVLAV3cdf0YjNZpOD9cqMYdf
	N9xs=
X-Google-Smtp-Source: AGHT+IE2ZCjm74i88Cx8H7zqKhavzKfVJn/TZo5nI0xMTWyAqNeHiNoOLoCzOQxXAS3GHfgdEgb/qg==
X-Received: by 2002:a05:600c:4e91:b0:40e:490f:3f31 with SMTP id f17-20020a05600c4e9100b0040e490f3f31mr5075117wmq.35.1706541070953;
        Mon, 29 Jan 2024 07:11:10 -0800 (PST)
Received: from ?IPV6:2001:16b8:cc76:8d00:10fc:1619:bea3:90d1? ([2001:16b8:cc76:8d00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id m28-20020a05600c3b1c00b0040ecea3c4dbsm14142831wms.46.2024.01.29.07.11.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 07:11:10 -0800 (PST)
Message-ID: <22168a60-61a4-43bb-afec-a1e74d874961@ettus.com>
Date: Mon, 29 Jan 2024 16:11:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN8PR05MB5971F338F42E2F9B91C913B08C7E2@BN8PR05MB5971.namprd05.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <BN8PR05MB5971F338F42E2F9B91C913B08C7E2@BN8PR05MB5971.namprd05.prod.outlook.com>
Message-ID-Hash: 2LVMWZYAUJ7TVD3NBFNCAXNPGBDVKDXK
X-Message-ID-Hash: 2LVMWZYAUJ7TVD3NBFNCAXNPGBDVKDXK
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 USRP -- Performance questions
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2LVMWZYAUJ7TVD3NBFNCAXNPGBDVKDXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2265736938517814402=="

This is a multi-part message in MIME format.
--===============2265736938517814402==
Content-Type: multipart/alternative;
 boundary="------------DiJ2LLVwYQhtWO8F5MoqR792"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DiJ2LLVwYQhtWO8F5MoqR792
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Arnaldo,


On 29.01.24 14:23, Arnaldo Sans wrote:
> Are there any details about what the measurement conditions were used to accomplished 
> both the Rx and Tx measurements... e.g. input power etc.?
Which measurements specifically are you referring to? For most of the RX figures, input 
power is the actual measured quantity, of sorts?
> Regarding the block diagram... I see various attenuators... that I would like to better 
> understand I have placed green boxes around the attenuators
So, what would you like to understand about these attenuators?
> Is there a theory of operations document / URL for the x310?

I think you're mostly looking at it; could you specify that question a bit, please?


Best regards,
Marcus


--------------DiJ2LLVwYQhtWO8F5MoqR792
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Arnaldo,</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 29.01.24 14:23, Arnaldo Sans wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:BN8PR05MB5971F338F42E2F9B91C913B08C7E2@BN8PR05MB5971.namprd05.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div class="elementToProof">A<span
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">re
          there any details about what the measurement conditions were
        </span><span
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 14.6667px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">used
          to accomplished both the Rx and Tx measurements</span><span
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">...
          e.g. input power etc.?</span></div>
    </blockquote>
    Which measurements specifically are you referring to? For most of
    the RX figures, input power is the actual measured quantity, of
    sorts?<br>
    <blockquote type="cite"
cite="mid:BN8PR05MB5971F338F42E2F9B91C913B08C7E2@BN8PR05MB5971.namprd05.prod.outlook.com"><span
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Regarding
        the block diagram... I see various attenuators... that I would
        like to better understand I have placed green boxes around the
        attenuators</span></blockquote>
    So, what would you like to understand about these attenuators? <br>
    <blockquote type="cite"
cite="mid:BN8PR05MB5971F338F42E2F9B91C913B08C7E2@BN8PR05MB5971.namprd05.prod.outlook.com"><span
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 14.6667px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">Is
        there a theory of operations document / URL for the x310?</span></blockquote>
    <p>I think you're mostly looking at it; could you specify that
      question a bit, please?</p>
    <p><br>
    </p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <br>
  </body>
</html>

--------------DiJ2LLVwYQhtWO8F5MoqR792--

--===============2265736938517814402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2265736938517814402==--
