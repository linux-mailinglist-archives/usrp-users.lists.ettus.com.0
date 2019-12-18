Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B641248B6
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 14:49:00 +0100 (CET)
Received: from [::1] (port=58904 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihZhA-0001jn-N7; Wed, 18 Dec 2019 08:48:56 -0500
Received: from mx1.hrz.uni-dortmund.de ([129.217.128.51]:47725
 helo=unimail.uni-dortmund.de)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <felix.greiwe@tu-dortmund.de>)
 id 1ihZh6-0001fa-SA
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 08:48:53 -0500
Received: from webmail.tu-dortmund.de (webmail.tu-dortmund.de [129.217.131.82])
 (authenticated bits=0)
 by unimail.uni-dortmund.de (8.16.0.41/8.16.0.41) with ESMTPSA id
 xBIDmBT2021387
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2019 14:48:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tu-dortmund.de;
 s=unimail; t=1576676891;
 bh=PnkukUH/bOoRSnZgK0qUA5ed1MTIW12GwdYgvBESw44=;
 h=Date:Subject:From:To:Reply-To;
 b=dL7pTOf7Gkfx58fqyZXgPof4IdCtTV2Ji0jaB78SV9J7dU76Xq8HRPDivtunmPqz0
 s87Fok0RKH3m01sQmKM7+cGUd2SYQXv4zjBPVsxRfIQoJXbjDYjGH8BtJZtgNFFzbL
 oh0UN5CCIesuH57KvErtyzi49VjltJ7C1Sk0INKQ=
Received: from 129.217.182.203 (SquirrelMail authenticated user smfegrei)
 by webmail.tu-dortmund.de with HTTP; Wed, 18 Dec 2019 14:48:10 +0100
Message-ID: <0f08a6b07438bf71916006244562092c.squirrel@webmail.tu-dortmund.de>
Date: Wed, 18 Dec 2019 14:48:10 +0100
To: "Usrp Liste" <usrp-users@lists.ettus.com>
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: [USRP-users] Building RFNoC Image with OOT Module on X310 - Module
 not found
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
From: Felix Greiwe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: felix.greiwe@tu-dortmund.de
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

Hello together,

recently I installed the whole UHD/GNU-Radio Toolchain on a fresh install
of Kubuntu 18.04 LTS. I followed the instructions from
https://kb.ettus.com/Getting_Started_with_RFNoC_Development
and used the Pybombs install.

(I ran into a lot of problems there and had to install a lot of stuff
manually because most of the commands were not working properly. Maybe the
Pybombs Tutorial Section needs an update?)

Finally I managed to install it successfully and the command
uhd_config_version -- info prints: UHD 3.15.0.0-124-geb448043
(I also installed Vivado 2018.3 and added the License which seems to work.)

After the install I wanted to validate it by creating an OOT Module and
OOT Block named noc_block_checkdevprocess.v. I did not edit the Verilog
Code because I only wanted to know if I was able to build an Image
properly.
(I ran the default Testbench too, which worked without errors.)

The command to build my image is:

./uhd_image_builder.py checkdevprocess digital_gain -t X310_RFNOC_HG -d
X310 -I /home/lskt/rfnoc-blocks_lskt/rfnoc

with "rfnoc-blocks_lskt" beeing my OOT Module and "checkdevprocess" beeing
my  custom block.
(I also tried the paths home/lskt/rfnoc-blocks_lskt/rfnoc/;
home/lskt/rfnoc-blocks_lskt/; home/lskt/rfnoc-blocks_lskt/rfnoc/fpga-src )

Every single time I get the same error message:
ERROR: [Synth 8-439] module 'noc_block_checkdevprocess' not found
[/home/lskt/rfnoc/src/uhd-fpga/usrp3/top/x300/rfnoc_ce_auto_inst_x310.v:22]

and I don't know why.

I also tried the the uhd_image_builder_gui.py which did not even pop up
until I uncommented the Line at row 149. I can see my OOT Block here after
adding the Module in the gui, but it prints the same error message as the
non-gui version.

If you need further information to help please ask.

Any help is appreciated.

Felix





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
