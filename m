Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A726912BD42
	for <lists+usrp-users@lfdr.de>; Sat, 28 Dec 2019 11:14:17 +0100 (CET)
Received: from [::1] (port=40160 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1il96r-0002Li-90; Sat, 28 Dec 2019 05:14:13 -0500
Received: from mail-wm1-f48.google.com ([209.85.128.48]:35576)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1il96n-0002Ge-Ii
 for usrp-users@lists.ettus.com; Sat, 28 Dec 2019 05:14:09 -0500
Received: by mail-wm1-f48.google.com with SMTP id p17so10230896wmb.0
 for <usrp-users@lists.ettus.com>; Sat, 28 Dec 2019 02:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=faxUXLGybGLlkoIk4PPBT7zQN04buzbkuWcKfniRavI=;
 b=gPkJBnH549YmWAnzWK9CbliYqYuTQ5RqDTxEvBWXnGWQMvUXARzzcUF1uZ9LNyDsIz
 1Ee/4iHhi0rd2DNOVvlB/hWsOjXPwE1wtzmTcF2dVGQI9Qyoky/5k0YA2qvTPmh8RvaZ
 8aMzJzCHGRDmOCOIuh41FWAm+24obbBZ27m2s7OgZ7cPgxRUP3tZzNdNn+kX7FwmKk6S
 RbOCBkwZ4gjQhjnV/JoDQhmvcBS9aUCtRtzctdhErvNi9kgWhY11dOliqWBORn/RejtS
 lNlN2o4T99BGQVXPwIHgdJfy9UyMj8w3c6wKRfjovRe56MBwXswt7ZziaOgwAYOyjaKc
 baYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=faxUXLGybGLlkoIk4PPBT7zQN04buzbkuWcKfniRavI=;
 b=FDINEInZstFJo/9qNXm43bFyFvBDudCMjL2Wh2HHQWqs3Ve3JW19TDmTyCnO3l1yZG
 dz1hp1TY2c3jn/Ici0RyJMBN3TztBKoZaRHVHUGlBlMNR+pQoOtGR1jSMs2NYTTOylWo
 Pdekvg/lgvauV4aL+3tzdHK2jiT3/nTQi2a2oXPFQwI5ygLoZsfh0yIE/jPYa0EgxDmD
 tfr8BjCVvyPAzNos20Qh/wxaaHxeOMj8llYWO+Xc0peYJcS/XyDb5j80TMq2OyIod88w
 iorSNfAQbinH3dR84pubxwRCOlr9rH3QczTaDwsYTU3Z27qbOGQKYwGhVe2Bh41YUjtr
 33Qg==
X-Gm-Message-State: APjAAAWDs/QwZlxl9rVih3VzzY7HfGUQvDF3rO0q22PaF6/Pz8CIxjHj
 xT9NkhaGdEqSC/+YaEKkhthMKktI
X-Google-Smtp-Source: APXvYqw1A5T/7RZcHAxOEYkOnJ/px11kclgCMtO83HxbeevxkD0OfnkzaVCKgio7d5pLeRg86RJDVA==
X-Received: by 2002:a1c:61d6:: with SMTP id v205mr24756092wmb.91.1577528008432; 
 Sat, 28 Dec 2019 02:13:28 -0800 (PST)
Received: from racer ([46.183.103.8])
 by smtp.gmail.com with ESMTPSA id h17sm39438836wrs.18.2019.12.28.02.13.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 02:13:27 -0800 (PST)
Message-ID: <91be310516a5f964d97e1289b41895ae6420cdb6.camel@ettus.com>
To: Varban Metodiev <varban.metodiev@gmail.com>, usrp-users
 <usrp-users@lists.ettus.com>
Date: Sat, 28 Dec 2019 11:13:12 +0100
In-Reply-To: <CAKA0MUjRDT3FH3J64adsLZmXQ4iC9q9EbscaiePWv=MRQfk2+Q@mail.gmail.com>
References: <CAKA0MUjRDT3FH3J64adsLZmXQ4iC9q9EbscaiePWv=MRQfk2+Q@mail.gmail.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Header files cannot be opened upon trying to
 compile the FPGA image for b205mini
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

just a transient observation: your $PATH contains *a lot* of redundant
ISE paths, as if some script kept recursively sourcing the xilinx
settings. How are these set? Do you have a specific shell that you
prepare for synthesis?

Best regards,
Marcus
On Fri, 2019-12-27 at 12:47 +0000, Varban Metodiev via USRP-users
wrote:
> Hi,
> 
> I am trying to compile the FPGA image for a b205mini as per the
> official instructions. My environment looks like this:
> 
> [ise@localhost b2xxmini]$ which xtclsh
> /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xtclsh
> [ise@localhost b2xxmini]$ pwd
> /home/ise/USRP/fpga/usrp3/top/b2xxmini
> 
> [ise@localhost b2xxmini]$ echo $PATH
> /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/sys
> gen/util:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/bin:/opt/Xilinx/14.7/ISE_
> DS/ISE/../../../DocNav:/opt/Xilinx/14.7/ISE_DS/PlanAhead/bin:/opt/Xil
> inx/14.7/ISE_DS/EDK/bin/lin64:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microbl
> aze/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/powerpc-
> eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/
> 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili
> nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X
> ilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/li
> n64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/I
> SE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx
> /14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt
> /Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_D
> S/EDK/gnu/powerpc-
> eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/
> 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili
> nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X
> ilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/li
> n64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/I
> SE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx
> /14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt
> /Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_D
> S/EDK/gnu/powerpc-
> eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/
> 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili
> nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X
> ilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/li
> n64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/I
> SE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx
> /14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt
> /Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_D
> S/EDK/gnu/powerpc-
> eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/
> 14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xili
> nx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/X
> ilinx/14.7/ISE_DS/common/bin/lin64:/usr/lib64/qt-
> 3.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:
> /home/ise/bin:/home/ise/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xtclsh
> 
> 
> Upon starting the "make B205mini", the header files inside
> /fpga/usrp3/lib/ cannot be accessed.
> 
> INFO:ProjectMgmt - Include file found:
>    '/home/ise/USRP/fpga/usrp3/lib/wishbone/i2c_master_defines.v' in
> file
>    "/home/ise/USRP/fpga/usrp3/lib/wishbone/i2c_master_byte_ctrl.v"
> line 73
> ERROR:ProjectMgmt - 1 error(s) found while parsing design hierarchy.
> WARNING:ProjectMgmt - Circular Reference:
> work:Module|cam_priority_encoder
> > > > Adding source to project:
> > > > /home/ise/USRP/fpga/usrp3/lib/wishbone/axi_stream_to_wb.v
> INFO:HDLCompiler:1845 - Analyzing Verilog file
>    "/home/ise/USRP/fpga/usrp3/lib/packet_proc/source_flow_control.v"
> into
>    library work
> ERROR:HDLCompiler:281 -
>    "/home/ise/USRP/fpga/usrp3/lib/packet_proc/source_flow_control.v"
> Line 55:
>    Cannot open include file "chdr_pkt_types.vh".
> INFO:HDLCompiler:1845 - Analyzing Verilog file
>    "/home/ise/USRP/fpga/usrp3/lib/wishbone/axi_stream_to_wb.v" into
> library work
> ERROR:ProjectMgmt - 1 error(s) found while parsing design hierarchy.
> WARNING:ProjectMgmt - Circular Reference:
> work:Module|cam_priority_encoder
> > > > Adding source to project:
> > > > /home/ise/USRP/fpga/usrp3/lib/timing/time_compare.v
> INFO:TclTasksC - File
> "/home/ise/USRP/fpga/usrp3/lib/timing/time_compare.v" is
>    already present in the project
> 
> May you please advise how add the search path correctly? Or maybe I
> have missed something in the environment configuration?
> 
> Regards,
> Varban
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
