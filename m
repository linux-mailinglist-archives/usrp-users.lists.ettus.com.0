Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B552C12DAF4
	for <lists+usrp-users@lfdr.de>; Tue, 31 Dec 2019 19:37:20 +0100 (CET)
Received: from [::1] (port=50278 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1imMON-0003cV-97; Tue, 31 Dec 2019 13:37:19 -0500
Received: from mail-wm1-f44.google.com ([209.85.128.44]:38386)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1imMOJ-0003W9-Ps
 for usrp-users@lists.ettus.com; Tue, 31 Dec 2019 13:37:15 -0500
Received: by mail-wm1-f44.google.com with SMTP id u2so2416177wmc.3
 for <usrp-users@lists.ettus.com>; Tue, 31 Dec 2019 10:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=r0lvhZTcbxheFGkNNOq4Sa8H4qPAS6j1DtWiAIjyT6s=;
 b=h2QymqyQcgOc3CE4Oy2lc5T0a3z1MfsVICOtFeZ0X5DW5m1xHBVidio8Ki6/Ftpwin
 tI1SDf9EGk82sZHTWIhoZdzsddWBZcynnNcD04AW0jPND4n1STwtbO+AbXwo7xS5O2c5
 3eAxpwi9Sm29rPR2sk+b9QnMSnVbvMee/AJADFChDNZ61sV5IOLXUPSQ+ys1VzsoQiGF
 Pvwq3aIhBIN+ayD5H7E+PGqTGe4crQNYeH5R+YPoqrSbdsRwdpICf/rX2LCe66vPaVu0
 YuLVjlPnb+odHxTLteP3519fYONR6PCNCeACWiyxLLLS6qmnCuzykaZv7jIw0nbSZ6WQ
 91iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=r0lvhZTcbxheFGkNNOq4Sa8H4qPAS6j1DtWiAIjyT6s=;
 b=HQfcfvhHBVFP7KC0As2WqbWrc0AH7vh5r/66EJ/CkIerCIMj/ybEp/fU2XttSsn0u5
 Jl2Sa0WSRp5BQ9ywwJdnvJDE02OWTntZgsmCZa37JXW6/fGtE4cQew7OOwc0HnfE+ksT
 AxDorxLBrteqGfuzc/gqwpuq8Ce86vbcJiuhVRhk2XR2OBXHx3mJL4/CSK8kmFzm2jhB
 eozxHvNVVTea93goPpZUDkDrdNx9jcMHdhY2rQZeRfOC/UYDGIeTT0zdkjV/d/+hRgbR
 QHz/zyEm25lyI9CQBVxb/Ewt1uV2PcLD0K7irl204wEGZg5jbcYq5X2lvdswziWbNkIf
 Uo7g==
X-Gm-Message-State: APjAAAWOyQ3q8ClABosnvmTS4FGjPF6ttHVuPiEcoeFL3DJo5Neb2T7S
 ZLA8nzsblauuluoTH5B+vLSqAZjP
X-Google-Smtp-Source: APXvYqxppA5b4bNQ7GxbXnJF08lbCCYaakZEfO/IqnA3eSCW9BG9atE2B1r3KvM7zlmD8tG5l1UI/g==
X-Received: by 2002:a1c:4c10:: with SMTP id z16mr5724266wmf.136.1577817394794; 
 Tue, 31 Dec 2019 10:36:34 -0800 (PST)
Received: from workhorse.lan
 (HSI-KBW-46-223-163-146.hsi.kabel-badenwuerttemberg.de. [46.223.163.146])
 by smtp.googlemail.com with ESMTPSA id p18sm3280678wmg.4.2019.12.31.10.36.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 10:36:33 -0800 (PST)
Message-ID: <f2ad9c99336c38d30c9e586643121a31e31866fd.camel@ettus.com>
To: Varban Metodiev <varban.metodiev@gmail.com>, usrp-users
 <usrp-users@lists.ettus.com>
Date: Tue, 31 Dec 2019 19:36:32 +0100
In-Reply-To: <CAKA0MUjQQgobKGFzfjDZUsZmF5UNM75NUNewAk9ojr07V5jP8A@mail.gmail.com>
References: <CAKA0MUjQQgobKGFzfjDZUsZmF5UNM75NUNewAk9ojr07V5jP8A@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Adding my custom RX module inside the FPGA (USRP
 b205mini)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Hi Varban,

not quite sure I understand what you want:
The B2xx series only has the streamers it has, so you can either get
the DDC output, or the output of your module, not both (unless you
somehow interleave them, and then on the host deinterleave them).

Also, unless latency is an important constraint: since the B205mini can
basically output samples at ADC speed, what's the specific motivation
to do things on the FPGA?

Best regards,
Marcus

On Tue, 2019-12-31 at 18:11 +0200, Varban Metodiev via USRP-users
wrote:
> Dear all,
> 
> I have written a simple RX logic in Verilog and now I want to
> integrate it inside the FPGA. I have the following questions:
>  
> 1) What is the correct way to connect it after the DDC (so that I
> will get 1:1 samples with those from GNURadio)?
> 2) How should I expose it to the UHD driver? I read the
> radio_legacy.v example about the custom UHD registers but I couldn't
> get how to specify the register address mapping.
> 
> Thank you in advance,
> Varban
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
