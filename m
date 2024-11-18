Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD009D14C1
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2024 16:52:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A0D3386131
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2024 10:52:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731945171; bh=UPhBPD8EN8etSYNEUuE3qXk4HAHuo61835a7MfoGDrM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eEjVuA4Rf3vyWM4+h7fiIOjv9OzjLyo4Nz5Kb6Nj3WxGYHstsp7kSOFUQRnayww9U
	 244DzfMg1rXAIUlA74ajOhLewhnn2JWDeWxA4yKcMSk374/cPN7smhFCM9B5rbDmBG
	 xXX+H0INfbgWuhZ3fBVHKvFw9f2Zzw1qXl9NuuLbv2Eag/3t2ac3Eekn8tVMlAxyY8
	 +YMvTy4iSllKnUQT+j8pmXyDZjVbdUSBQlfFCC/8wI2WySqT6XaC6KsNEvbSaK/2CA
	 S67QoTvPyIwOo/SSRPaBw1w7D2lWf+SyGb/ZLdWxAVMFdikBT92Hmq9F0G4BXPk1/x
	 NRRPq7WPcZNuA==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A90E385FE2
	for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2024 10:52:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F3MdwOjr";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6d413def36cso21438446d6.3
        for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2024 07:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731945150; x=1732549950; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N3ra+KYS5jhNZESw/Ip1lXHIMuhN1LKN57n+o1LVIQ0=;
        b=F3MdwOjrKNYgqj2ZzCfXgaw884sEKQQQjeLgMmXSuZsVnAZia4b2Nw/C2w6GuXLNCH
         3XoHGaCw+b/Q25+L1fOp4gaQWKXkEENsLV4mlWJl8zrmGzHNkrS/KEJh4viBT9Mvqe/M
         0ErGfama6HkC3Bupce7VWXH3jcuj4x5ikYbi8ofHWXCt0goZvCPK/wTsDbqvInsHBoK3
         WZCiqVZ+hcBmdr9U4Ah3IyZPL8ziAZ3EK/KAn/7Z1gin3B+BUdIzYdXqCmAHwE0n2uA5
         go3aLmJ0fAHWFW+2ks+n7lUQ108hZdtaRRbFFMmdfArrK6O49FDWyC5BhNMgKfdfA3tY
         RSKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731945150; x=1732549950;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=N3ra+KYS5jhNZESw/Ip1lXHIMuhN1LKN57n+o1LVIQ0=;
        b=DH31VMy3Qzye92hwb6tFmNedyDKgq0mMAMulYud63TJkY9HSJR3fDBeAXTtUwqoX8v
         +cISzWSM7RhTry0wrAaQD+ucH1u7PmvOliVI5f1bFCqpAN8Lf3EfWtU7fBElVbpBgWDr
         /nreYl1IECuDMLeJzMTuQ0WMCiU6Y4oxOvozPOsENJ3GpPt0Zjgf1nX0mG1kBfgFUZae
         l0/O0+OxXASJJQ1ePo6LhDL8W2Xf/ImzvPiRR6/Q4gth0z4HCT+R0qliVlCSTBmbnJhP
         Xqi8WQXd+U2oWnzY7Jk54eHiTAgLya5zsmkiLKcuLXikKkpEl+6063F8HUYbhhM4Y1Cf
         +4qw==
X-Gm-Message-State: AOJu0Yw5XCGB7CvExUsqk5r47q9j4MHrO8qfx5RcbLHCqNB0LCWU3dDn
	/krkhnVxrD7BsukOCOkmJGQ7WVJlXKcwUOBDAzPDnp6qAG5yIcDezF7SVA==
X-Google-Smtp-Source: AGHT+IGczJg9k4UhrL6Vca52QFZsJ4KVWNL4xzIJt6sPwwtonLZpSnYGk4w9PHY7Jk/no9vCx/Mgpg==
X-Received: by 2002:ad4:5ca3:0:b0:6d4:20cb:daad with SMTP id 6a1803df08f44-6d420cbdd24mr74662156d6.13.1731945149994;
        Mon, 18 Nov 2024 07:52:29 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b35c9abb66sm491705785a.52.2024.11.18.07.52.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2024 07:52:29 -0800 (PST)
Message-ID: <d0cf194f-3577-4d53-964c-efdf7c73a677@gmail.com>
Date: Mon, 18 Nov 2024 10:52:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB9126E90ADAB8AD69F37EC15BEC242@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB9126E90ADAB8AD69F37EC15BEC242@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: ZU7LO3RJYDH2JB3BLGS6Z5FJJOC7UXFZ
X-Message-ID-Hash: ZU7LO3RJYDH2JB3BLGS6Z5FJJOC7UXFZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Real-world experience with X440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZU7LO3RJYDH2JB3BLGS6Z5FJJOC7UXFZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9199110328374859060=="

This is a multi-part message in MIME format.
--===============9199110328374859060==
Content-Type: multipart/alternative;
 boundary="------------7N7Nuf6NISs7I5vcGbV0pYPE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7N7Nuf6NISs7I5vcGbV0pYPE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/11/2024 16:52, Eugene Grayver wrote:
> Hi,
>
> I am considering the X440 for a wideband record/playback system.=C2=A0 =
What=20
> benchmarks has Ettus done?
>
> Is there any hardware out there that can continuously stream (one way,=20
> TX or RX) the full 8 Gsps (i.e. 2x 4 Gsps) for the combined bandwidth=20
> of 2x 1.6 GHz?=C2=A0 Assuming DPDK is used, there is still an issue wit=
h=20
> getting packets to/from different cores/threads.=C2=A0 Are the packet=20
> streams configurable to allow hardware-level queues that map to=20
> different IRQs/cores?=C2=A0 How does the TX side work (that's usually a=
 lot=20
> harder to maintain than RX)?
>
> Thanks.
>
I don't have any direct experience with X440.=C2=A0 But I know that newer=
=20
versions of "benchmark_rate" have an option for
 =C2=A0 handling different streams in different threads, so that might he=
lp=20
you with your own code.

Ingesting 3.2Gsps all by itself is a compu-difficult problem, let alone=20
trying to actually *DO* anything with those samples.
 =C2=A0 It has frequently been the case with USRPs that at introduction,=20
their ability to produce high-speed samples outstrips
 =C2=A0 the ability of extant computers to ingest those samples.

I know that a LONG time ago, UHD experimented with multi-threaded=20
"gather" from the network interface for even
 =C2=A0 a single stream.=C2=A0 The problem that was immediately apparent =
was that=20
the MUTEX traffic that was required, along
 =C2=A0 with dealing with the potential re-ordering when multiple threads=
 are=20
gathering buffers of samples, lead to much
 =C2=A0 poorer overall performance.


--------------7N7Nuf6NISs7I5vcGbV0pYPE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/11/2024 16:52, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB9126E90ADAB8AD69F37EC15BEC242@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        I am considering the X440 for a wideband record/playback
        system.=C2=A0 What benchmarks has Ettus done?=C2=A0=C2=A0</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Is there any hardware out there that can continuously stream
        (one way, TX or RX) the full 8 Gsps (i.e. 2x 4 Gsps) for the
        combined bandwidth of 2x 1.6 GHz?=C2=A0 Assuming DPDK is used, th=
ere
        is still an issue with getting packets to/from different
        cores/threads.=C2=A0 Are the packet streams configurable to allow
        hardware-level queues that map to different IRQs/cores?=C2=A0 How
        does the TX side work (that's usually a lot harder to maintain
        than RX)?</div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks.</div>
      <br>
    </blockquote>
    I don't have any direct experience with X440.=C2=A0 But I know that n=
ewer
    versions of "benchmark_rate" have an option for<br>
    =C2=A0 handling different streams in different threads, so that might
    help you with your own code.<br>
    <br>
    Ingesting 3.2Gsps all by itself is a compu-difficult problem, let
    alone trying to actually *DO* anything with those samples.<br>
    =C2=A0 It has frequently been the case with USRPs that at introductio=
n,
    their ability to produce high-speed samples outstrips<br>
    =C2=A0 the ability of extant computers to ingest those samples.<br>
    <br>
    I know that a LONG time ago, UHD experimented with multi-threaded
    "gather" from the network interface for even<br>
    =C2=A0 a single stream.=C2=A0 The problem that was immediately appare=
nt was
    that the MUTEX traffic that was required, along<br>
    =C2=A0 with dealing with the potential re-ordering when multiple thre=
ads
    are gathering buffers of samples, lead to much<br>
    =C2=A0 poorer overall performance.<br>
    <br>
    <br>
  </body>
</html>

--------------7N7Nuf6NISs7I5vcGbV0pYPE--

--===============9199110328374859060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9199110328374859060==--
