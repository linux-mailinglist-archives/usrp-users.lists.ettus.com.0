Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBEA12B49B
	for <lists+usrp-users@lfdr.de>; Fri, 27 Dec 2019 13:48:41 +0100 (CET)
Received: from [::1] (port=33146 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ikp2e-0007z2-C1; Fri, 27 Dec 2019 07:48:32 -0500
Received: from mail-oi1-f170.google.com ([209.85.167.170]:44259)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <varban.metodiev@gmail.com>)
 id 1ikp2b-0007vN-5w
 for usrp-users@lists.ettus.com; Fri, 27 Dec 2019 07:48:29 -0500
Received: by mail-oi1-f170.google.com with SMTP id d62so9309999oia.11
 for <usrp-users@lists.ettus.com>; Fri, 27 Dec 2019 04:48:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=HiTRGEuCDDDl51J/Eb1PSipGzlJEDh31fQb5YW1+ChQ=;
 b=q6v+EGgCGA+qYzna3Nai55IMWn7XcbmQ4aZoE0zGU/+I8ZOSS0l5IayAvETPFfJA8H
 8MdQJzLViIVjY0LXVU4WMNNzRPfT0X9jNuX4m5yZMRGCf7UHzbVAaCMYrI1+Qnal4Jvl
 +7riGPXbPd0cB5RmOWES1xQHF1fZiy1/hBjQKlwkeZk8YCBoVankL48WisvFyDRCsH1Q
 IaOCf6IIDITOBzgwSyrumXT1cgICZoHmqnRDrGRmTcCmygKqt+Gri+EDKweqbN5L4pvC
 1NLushQ4KQ0HTE6F/BgsJSM469eGiimqK/izNn9WH3Mo+WRv88S7iY0miVTL3NLhe+RP
 abdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=HiTRGEuCDDDl51J/Eb1PSipGzlJEDh31fQb5YW1+ChQ=;
 b=Dchi62Dmki20d4E1sRPhzMgtdUezGxWeuwD/2f2c2DedzG7HAKZ60EjQyU68uk2jR2
 ZXElbMYhzL3dBo1Zj/y47wlh0BIOR8yOVMDxcaQyz2sb7siAYPJcOJLrpgLFqQvCAWtx
 Vm78ul8B83HAdwniZZHs0tNWotsEKYOd/c2NrNwGF9seGlrttVLCIcwCxWndlWQe6ftK
 ho6CxtVdUaWSqeISD6Jq8YxU7jqOnKn3+iONp6BZqcbI5y4hHkXMu3iISQG05FFIwvki
 fEqrhiTOtEtL6entBbJbodOx0HTyhTOZg6+q6fmaPz8dHiPl5pL0banXX/8jeQI5gT/o
 hMQA==
X-Gm-Message-State: APjAAAWh0Umn2Xcl8KUanic97rms8Ygl4HLb2dc1KC+vPKK8+kRRLJZz
 KLy+dpxySN6LfGAv+olU+K9m9gM1SF/QYedFDvHPjQ==
X-Google-Smtp-Source: APXvYqycY3njOesxSOq/2rZpXP/mMjFpUmHI4gc+F649Y6SEQkaKfE1JUyC3+9Of/1F20OlrwQ+YfnQNNmVNcKkQ3e0=
X-Received: by 2002:aca:c786:: with SMTP id x128mr3036364oif.2.1577450867892; 
 Fri, 27 Dec 2019 04:47:47 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac9:5f87:0:0:0:0:0 with HTTP; Fri, 27 Dec 2019 04:47:46
 -0800 (PST)
Date: Fri, 27 Dec 2019 12:47:46 +0000
Message-ID: <CAKA0MUjRDT3FH3J64adsLZmXQ4iC9q9EbscaiePWv=MRQfk2+Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Header files cannot be opened upon trying to compile
 the FPGA image for b205mini
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
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
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

Hi,

I am trying to compile the FPGA image for a b205mini as per the
official instructions. My environment looks like this:

[ise@localhost b2xxmini]$ which xtclsh
/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xtclsh
[ise@localhost b2xxmini]$ pwd
/home/ise/USRP/fpga/usrp3/top/b2xxmini

[ise@localhost b2xxmini]$ echo $PATH
/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx/14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/powerpc-eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/Xilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx/14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/powerpc-eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/Xilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx/14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/powerpc-eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/Xilinx/14.7/ISE_DS/common/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/util:/opt/Xilinx/14.7/ISE_DS/ISE/sysgen/bin:/opt/Xilinx/14.7/ISE_DS/ISE/../../../DocNav:/opt/Xilinx/14.7/ISE_DS/PlanAhead/bin:/opt/Xilinx/14.7/ISE_DS/EDK/bin/lin64:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/powerpc-eabi/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/Xilinx/14.7/ISE_DS/common/bin/lin64:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/ise/bin:/home/ise/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xtclsh


Upon starting the "make B205mini", the header files inside
/fpga/usrp3/lib/ cannot be accessed.

INFO:ProjectMgmt - Include file found:
   '/home/ise/USRP/fpga/usrp3/lib/wishbone/i2c_master_defines.v' in file
   "/home/ise/USRP/fpga/usrp3/lib/wishbone/i2c_master_byte_ctrl.v" line 73
ERROR:ProjectMgmt - 1 error(s) found while parsing design hierarchy.
WARNING:ProjectMgmt - Circular Reference: work:Module|cam_priority_encoder
>>> Adding source to project: /home/ise/USRP/fpga/usrp3/lib/wishbone/axi_stream_to_wb.v
INFO:HDLCompiler:1845 - Analyzing Verilog file
   "/home/ise/USRP/fpga/usrp3/lib/packet_proc/source_flow_control.v" into
   library work
ERROR:HDLCompiler:281 -
   "/home/ise/USRP/fpga/usrp3/lib/packet_proc/source_flow_control.v" Line 55:
   Cannot open include file "chdr_pkt_types.vh".
INFO:HDLCompiler:1845 - Analyzing Verilog file
   "/home/ise/USRP/fpga/usrp3/lib/wishbone/axi_stream_to_wb.v" into library work
ERROR:ProjectMgmt - 1 error(s) found while parsing design hierarchy.
WARNING:ProjectMgmt - Circular Reference: work:Module|cam_priority_encoder
>>> Adding source to project: /home/ise/USRP/fpga/usrp3/lib/timing/time_compare.v
INFO:TclTasksC - File "/home/ise/USRP/fpga/usrp3/lib/timing/time_compare.v" is
   already present in the project

May you please advise how add the search path correctly? Or maybe I
have missed something in the environment configuration?

Regards,
Varban

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
