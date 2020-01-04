Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEF41301BC
	for <lists+usrp-users@lfdr.de>; Sat,  4 Jan 2020 11:10:31 +0100 (CET)
Received: from [::1] (port=59982 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ingO3-0008Az-Cu; Sat, 04 Jan 2020 05:10:27 -0500
Received: from mx1.hrz.uni-dortmund.de ([129.217.128.51]:44771
 helo=unimail.uni-dortmund.de)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <felix.greiwe@tu-dortmund.de>)
 id 1ingNz-00086K-FF
 for usrp-users@lists.ettus.com; Sat, 04 Jan 2020 05:10:23 -0500
Received: from webmail.tu-dortmund.de (webmail.tu-dortmund.de [129.217.131.82])
 (authenticated bits=0)
 by unimail.uni-dortmund.de (8.16.0.41/8.16.0.41) with ESMTPSA id
 004A9frZ008055
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Sat, 4 Jan 2020 11:09:41 +0100 (CET)
Received: from 5.147.6.249 (SquirrelMail authenticated user smfegrei)
 by webmail.tu-dortmund.de with HTTP; Sat, 4 Jan 2020 11:09:41 +0100
Message-ID: <640c149702f53cfe43d71b5da2255278.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <0f08a6b07438bf71916006244562092c.squirrel@webmail.tu-dortmund.de>
References: <0f08a6b07438bf71916006244562092c.squirrel@webmail.tu-dortmund.de>
Date: Sat, 4 Jan 2020 11:09:41 +0100
To: "Usrp Liste" <usrp-users@lists.ettus.com>
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: Re: [USRP-users] Building RFNoC Image with OOT Module on X310 -
 Module not found
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

Hello again,

has no one an idea? I have still not managed to get it working..
I would take any advice!

Best regards,

Felix


> Hello together,
>
> recently I installed the whole UHD/GNU-Radio Toolchain on a fresh install
> of Kubuntu 18.04 LTS. I followed the instructions from
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
> and used the Pybombs install.
>
> (I ran into a lot of problems there and had to install a lot of stuff
> manually because most of the commands were not working properly. Maybe the
> Pybombs Tutorial Section needs an update?)
>
> Finally I managed to install it successfully and the command
> uhd_config_version -- info prints: UHD 3.15.0.0-124-geb448043
> (I also installed Vivado 2018.3 and added the License which seems to
> work.)
>
> After the install I wanted to validate it by creating an OOT Module and
> OOT Block named noc_block_checkdevprocess.v. I did not edit the Verilog
> Code because I only wanted to know if I was able to build an Image
> properly.
> (I ran the default Testbench too, which worked without errors.)
>
> The command to build my image is:
>
> ./uhd_image_builder.py checkdevprocess digital_gain -t X310_RFNOC_HG -d
> X310 -I /home/lskt/rfnoc-blocks_lskt/rfnoc
>
> with "rfnoc-blocks_lskt" beeing my OOT Module and "checkdevprocess" beeing
> my  custom block.
> (I also tried the paths home/lskt/rfnoc-blocks_lskt/rfnoc/;
> home/lskt/rfnoc-blocks_lskt/; home/lskt/rfnoc-blocks_lskt/rfnoc/fpga-src )
>
> Every single time I get the same error message:
> ERROR: [Synth 8-439] module 'noc_block_checkdevprocess' not found
> [/home/lskt/rfnoc/src/uhd-fpga/usrp3/top/x300/rfnoc_ce_auto_inst_x310.v:22]
>
> and I don't know why.
>
> I also tried the the uhd_image_builder_gui.py which did not even pop up
> until I uncommented the Line at row 149. I can see my OOT Block here after
> adding the Module in the gui, but it prints the same error message as the
> non-gui version.
>
> If you need further information to help please ask.
>
> Any help is appreciated.
>
> Felix
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
