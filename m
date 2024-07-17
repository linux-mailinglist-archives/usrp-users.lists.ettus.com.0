Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0B8933E30
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 16:09:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6049038544F
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 10:09:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721225369; bh=MZ8NZP5DcYNYpUxwHfdQJkxbb80OKWpq07HIdEtk2f0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GqBWLxwO5YDLQjc7+tu+5j56mUYm512S8ObA6qzDSzM1YyYiA3U41FyAP2fBznnQ0
	 d1KDf/Btg1bp1CKcwhi8dq393XBRT7U+7NldZU4rBtqbIZiwtDUQjLwozWcRsamzfo
	 Y7WEHdZPI0pjh4m/Oa7i54rlnT9q6y92JbpawqTzXRqjdV7OMW1WGQ8nE0QfGdR/0H
	 +PgM6pjS70YDIxCrN7+zPksFz6qM0GuNycrzstZF1VOZi31aV8w8ldaKqB7Y/pkL9m
	 jnHZf4C4lHiGNGLf0sDAPzJzT4OJPyMBlnAlzqcnMQD9OCBAkwvG+Ck5zm4Z2ENZyD
	 1jZqZQay1PQ3A==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id D0C5038520F
	for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 10:08:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XG5BPhMO";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-79f190d8ebfso387216385a.3
        for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 07:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721225314; x=1721830114; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O3oBVv3p4yzhFhVxU3Eict4j7TJxayizLxxdkX2PxSU=;
        b=XG5BPhMOcCcTiSD8gQv03HSrhFmiOSt41kkJnD5As1wLFU97QlX4N5IMy10hswlkie
         INowRDz1mghghrqgNQhJy/yeU9dpDw4pt32I8bOh0yqlHZto/w1kQegLmhBrsjgyP5jp
         7zQ/udUkTPtp3O5nYZqMutA6qZs96XoEVAI3+a9y5BG3bQm+S/0cExMbSRKTXwQzkbrc
         IbuZlNmNub5ivja9uEUSVLKV/iogFywXX4dlSa2p6ssEzbfaWTrPhgAiQ5gvxLzJeJG/
         3pTJ0yOzyeX76h0DUHlCXtDKIPXGOJcAulANiRsl/Y96s+E57eCJfBgyG2z3Rf18c8eR
         aiKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721225314; x=1721830114;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=O3oBVv3p4yzhFhVxU3Eict4j7TJxayizLxxdkX2PxSU=;
        b=sQKy4SUNx9Gk+nYXoH7NrRcK65KwteBKOwYF3gfn3rJNuEUWIVTAXZCfJpIvS9SkcJ
         cnSq8xRQZwIRog/M9C5OVUFau+TSkgqRrp7U9dtAA3yGPcjk33aMvKjdOskLz+t7o/Nh
         3Vr9vrVt2FK9hrK1V4j3SFblFXOiaoXkQVC3kddRFpSFMKQyInuxxWwPjgIb+npWoNBV
         m4OIaiqLDScMjXFU8Lu7xIehNSe/1jBm6UWaULxiyW8PuJH99/GUvhsEtCRoHwzdeEvr
         MYzC/05tcb/20QFFhPXAntbTxtKgldXjsOuOv0E+HhjVERgrvPnUFKBifw6MVDuO77t4
         3NcA==
X-Gm-Message-State: AOJu0YxtvbGLgp82rHwrw9jr9Z1YaLwwWDDMHAr6Kx4IM59I0Ku9CKK+
	9EH9HPDW06wFuQYSQCWsEHj9lEh5MFcpQf3AfVCzTIGY58NoiJja0svptw==
X-Google-Smtp-Source: AGHT+IFvHkKr9oRVo06YbxdNDnR2ui2h786EQvWLvzQYL04HX2n6/wWeb93QMxeR66UR46XPNjw2Dw==
X-Received: by 2002:a05:622a:46:b0:445:579:476d with SMTP id d75a77b69052e-44f8663a615mr22183151cf.29.1721225313343;
        Wed, 17 Jul 2024 07:08:33 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-44f5b837300sm47431021cf.65.2024.07.17.07.08.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jul 2024 07:08:33 -0700 (PDT)
Message-ID: <7c23cd42-613e-45ad-ac57-e3729c879e38@gmail.com>
Date: Wed, 17 Jul 2024 10:08:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <GV1P193MB229549AF4487D944E9A71C7DCBA32@GV1P193MB2295.EURP193.PROD.OUTLOOK.COM>
 <cf0ee27c-5059-41f8-9ac5-7cea7db9fcdc@comcast.net>
 <GV1P193MB22953B182EDF6D1EF9CDB869CBA32@GV1P193MB2295.EURP193.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <GV1P193MB22953B182EDF6D1EF9CDB869CBA32@GV1P193MB2295.EURP193.PROD.OUTLOOK.COM>
Message-ID-Hash: WSUJ3MCMUEOHHHVGYM63ILON57K7XDT6
X-Message-ID-Hash: WSUJ3MCMUEOHHHVGYM63ILON57K7XDT6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replicas out of band in OFDM signal (N210+CBX)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WSUJ3MCMUEOHHHVGYM63ILON57K7XDT6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4788584688515254030=="

This is a multi-part message in MIME format.
--===============4788584688515254030==
Content-Type: multipart/alternative;
 boundary="------------sJEd8VWba60UwVuAaMEPqItA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------sJEd8VWba60UwVuAaMEPqItA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/07/2024 09:39, Brais Ares Fern=C3=A1ndez wrote:
> Hello, Ron. Thank you for the answer.
>
> I've already tried but it seems to do nothing:
>
> $ sudo /lib/uhd/examples/tx_samples_from_file --freq 1500e6 --rate=20
> 10e6 --gain 20 *--bw 10e6*=C2=A0--type float --file ~/OFDMsignal.raw=20
> --args=3D"name=3Dsdr1"
>
> I even tried weird values like 100e3 or 100e6, but no apparent effect=20
> over the spectrum at all.
The CBX doesn't support variable analog bandwidth.

Is your signal file actually sampled at 10e6 SPS?

What happens if you reduce the sample magnitude on your input file to=20
something like 0.8 and re-try?

Are you certain that the input signal doesn't already have these=20
artifacts in it?


--------------sJEd8VWba60UwVuAaMEPqItA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/07/2024 09:39, Brais Ares
      Fern=C3=A1ndez wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:GV1P193MB22953B182EDF6D1EF9CDB869CBA32@GV1P193MB2295.EURP193.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Hello, Ron. Thank you for the answer.</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        I've already tried but it seems to do nothing:</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        $ sudo /lib/uhd/examples/tx_samples_from_file --freq 1500e6
        --rate 10e6 --gain 20
        <b>--bw 10e6</b>=C2=A0--type float --file ~/OFDMsignal.raw
        --args=3D"name=3Dsdr1"</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        I even tried weird values like 100e3 or 100e6, but no apparent
        effect over the spectrum at all.</div>
    </blockquote>
    The CBX doesn't support variable analog bandwidth.<br>
    <br>
    Is your signal file actually sampled at 10e6 SPS?<br>
    <br>
    What happens if you reduce the sample magnitude on your input file
    to something like 0.8 and re-try?<br>
    <br>
    Are you certain that the input signal doesn't already have these
    artifacts in it?<br>
    <br>
    <br>
  </body>
</html>

--------------sJEd8VWba60UwVuAaMEPqItA--

--===============4788584688515254030==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4788584688515254030==--
