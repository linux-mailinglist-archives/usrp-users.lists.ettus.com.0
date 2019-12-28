Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF7D12BD44
	for <lists+usrp-users@lfdr.de>; Sat, 28 Dec 2019 11:19:09 +0100 (CET)
Received: from [::1] (port=42826 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1il9Bb-0002tr-Sa; Sat, 28 Dec 2019 05:19:07 -0500
Received: from mail-wr1-f48.google.com ([209.85.221.48]:45939)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1il9BY-0002mR-9A
 for usrp-users@lists.ettus.com; Sat, 28 Dec 2019 05:19:04 -0500
Received: by mail-wr1-f48.google.com with SMTP id j42so28227036wrj.12
 for <usrp-users@lists.ettus.com>; Sat, 28 Dec 2019 02:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=yPZUMe7q3neATXDk/4Qn9Clba4S+sdiWV84lh9i7O08=;
 b=dLjNLFIN9lyAVxKiZwM5fG+eY0zbencPv3bvutbYHy2BbEUR6s8umhsg5IyXQ9K5ta
 XsDB7Fu2jS03M+5zLnN50yMyzZJzweO2v+mroslcJHfMCIPM9qS5k5pR6X4TeQFm4pTC
 R4uv+ndJ+xSJVDUCqW698NRs+WtvhuA5R1bFqEXcMQwHCiqPJyVTLCQUp1xOplkfDCic
 m56Sh3KJuQdAR5cIbyBJk6hKZjiRWv1XLVO9yUTOkdR5qDBDIUR5gLeBkaPumtaarV67
 1PHzAZ2HgHaSDt+Sv2764ECJgPKR4/UWOStf6S6uOImqqXaQ1iJ+2dc5yeurbCxH7XDj
 aLsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=yPZUMe7q3neATXDk/4Qn9Clba4S+sdiWV84lh9i7O08=;
 b=tepqaOUOvXk4TP1fcyeUU5DG/jMMw+b3eRfyAn3WSa2tr2gjaQlOw8IWjMa/t6+21V
 LLkfHbN9Q8v8P/lydvvEB9d9svrEZkNiaEC5WSZnZbGzSS4BTrKvM0D55zw/fDbU9vj9
 wnlnhrmRu1AseITiPqR5WW/bKYha72RwL5oppPEcCcbBYvnEXDGamY+rKk/nFy5QnjVZ
 nYuRVBtvumCebzNMja9+VKnzu6b/Py1aVgEkrEf+P1WsTgRJAMAYDpdteC/za5aOyjpR
 1AvO31TwBC/O4vwb1JISXkvQw2tv3ZOpMHZAG57rlEq407WtTtMSVqUywFBcfmbcjwDs
 zhYw==
X-Gm-Message-State: APjAAAWKdDu+e3Nf0AIhpMPH2/Z0r3FMnq+3rFGlEcpK2DBcG2iJyueG
 fGjqvXWigKXD1/tCAr05bokSQNLZ
X-Google-Smtp-Source: APXvYqzqX0vqibjdXeOtm9aqwVatEEbGaPKqx5Mv1+xwGwoni3EZL2WxHpYbXBY0hgr/L3IW/b10lQ==
X-Received: by 2002:a5d:6551:: with SMTP id z17mr58448084wrv.269.1577528303309; 
 Sat, 28 Dec 2019 02:18:23 -0800 (PST)
Received: from racer ([46.183.103.8])
 by smtp.gmail.com with ESMTPSA id c15sm37886362wrt.1.2019.12.28.02.18.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 02:18:22 -0800 (PST)
Message-ID: <758569ee796e2542bd4ecab8262eec008833363b.camel@ettus.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Sat, 28 Dec 2019 11:17:57 +0100
In-Reply-To: <MW2PR1901MB2137457D7A0A319B788A4264C62A0@MW2PR1901MB2137.namprd19.prod.outlook.com>
References: <MW2PR1901MB2137457D7A0A319B788A4264C62A0@MW2PR1901MB2137.namprd19.prod.outlook.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
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

Hello Jerrid,

huh, a cursory glance tells me this is in the generated IP cores, i.e.
not even in UHD code itself.

I've not encountered that before; maybe there's a half-built IP core
still present in the source tree? You can get that really pristine by
cd uhd-fpga; git clean -xdf

Best regards,
Marcus

On Fri, 2019-12-27 at 23:54 +0000, Jerrid Plymale via USRP-users wrote:
> Hello all,
> 
> So I have been attempting to build an X310 HG FPGA image following
> the steps in the getting started guide for RFNoC for a while now, and
> I have been getting the following error:
> 
> Starting DRC Task
> INFO: [DRC 23-27] Running DRC with 8 threads
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
> bus_clk_gen/inst/CLK_OUT4 has multiple drivers:
> bus_clk_gen/inst/clkout4_buf/O, and radio_clk_gen/inst/clkout1_buf/O.
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
> radio_reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9
> has multiple drivers:
> radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].
> value_reg[9][0]/Q, and
> ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].val
> ue_reg[9][0]/Q.
> INFO: [Project 1-461] DRC finished with 2 Errors
> INFO: [Project 1-462] Please refer to the DRC report (report_drc) for
> more information.
> ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not
> run.
> 
> Time (s): cpu = 00:00:05 ; elapsed = 00:00:02 . Memory (MB): peak =
> 13791.785 ; gain = 1.887 ; free physical = 109997 ; free virtual =
> 117079
> INFO: [Common 17-83] Releasing license: Implementation
> 7 Infos, 0 Warnings, 0 Critical Warnings and 3 Errors encountered.
> opt_design failed
> ERROR: [Common 17-39] 'opt_design' failed due to earlier errors.
> 
> 
> I have attached the build log for those who may want to look at it
> for more info. Can someone direct me in what I need to do to resolve
> this issue so I can build an FPGA image successfully? any help would
> be greatly appreciated. 
> 
> Best Regards,
> 
> Jerrid
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
