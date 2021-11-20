Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E75C457FD6
	for <lists+usrp-users@lfdr.de>; Sat, 20 Nov 2021 18:24:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF74738427E
	for <lists+usrp-users@lfdr.de>; Sat, 20 Nov 2021 12:24:57 -0500 (EST)
Received: from smtp-int-p.obspm.fr (smtp-int-p.obspm.fr [145.238.194.3])
	by mm2.emwd.com (Postfix) with ESMTPS id A60DE383CAD
	for <usrp-users@lists.ettus.com>; Sat, 20 Nov 2021 12:24:07 -0500 (EST)
Received: from agendas.obspm.fr (agendas.obspm.fr [145.238.193.45])
	by smtp-int-p.obspm.fr (8.15.2/8.15.2/DIO Observatoire de Paris - 15/04/10) with ESMTP id 1AKHO5wp064186
	for <usrp-users@lists.ettus.com>; Sat, 20 Nov 2021 18:24:05 +0100
From: "Le Coq Yann" <Yann.Lecoq@obspm.fr>
To: usrp-users@lists.ettus.com
User-Agent: SOGoMail 4.3.2
MIME-Version: 1.0
Date: Sat, 20 Nov 2021 18:24:05 +0100
Message-ID: <1703-61992f00-ab-c73f000@261189462>
X-Forward: 127.0.0.1
Message-ID-Hash: SGWXRVWB4APNFXG74MH66VQU33N2T6O4
X-Message-ID-Hash: SGWXRVWB4APNFXG74MH66VQU33N2T6O4
X-MailFrom: Yann.Lecoq@obspm.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users]  possibly misplaced =?utf-8?q?=2Ebit?= files in =?utf-8?q?003=2E009=2E007-release?= UHD repository
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SGWXRVWB4APNFXG74MH66VQU33N2T6O4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

I use an X310 for an application in which the daughterboards are 2 Basic RX and 2 BasicTX. The subdevspec I use (in a Gnuradio Flowgraph) is "A:A B:A", both for emission and reception. 
Last time someone from my lab checked (a year ago or so), UHD 003.009.007-release was apparently the latest UHD version that was OK with such subdevspec, and I therefore believe that I am effectively stuck to this old version.  

I was working so far with a usrp_x310_fpga_HGS.bit FPGA image on the X310, with single 10Gb/s ethernet interface. However, I want now to improve performance by going to dual 10Gb/s interface.

Unfortunately, using "uhd_images_downloader"  (which seems to work fine and tells me it extracts .bit files from the correct 003.009.007-release version) followed by "uhd_image_loader --args="type=x300,addr=192.168.40.2" --fpga-path="/usr/local/share/uhd/images/usrp_x310_fpga_XG.bit" seems to upload an FPGA image that is not compatible with the UHD version (benchmark_rate, for example, gives a "Error: RuntimeError: Expected FPGA compatibility number 19, but got 33"). For reference, uploading usrp_x310_HG.bit produces a similar compatibility number error, but usrp_x310_HGS.bit does, on the contrary, upload an image that UHD is happy with. 


It seems to me that the files in the repository at "https://files.ettus.com/binaries/images/" may be misplaced for the 003.009.007-release version. I actually tried manually dowloading the "https://files.ettus.com/binaries/images/uhd-images_003.009.007-release.tar.gz" file and extracting the .bit files from that, but got the same results as when I use the .bit downloaded by uhd_image_loader.

Can someone let me know if I am missing something here ? My only alternative, as I see it, would be to build the FPGA image myself with the fpga-src submodule of the UHD version I use, but that would first require me to get a Vivado license...

Help would be greatly appreciated.

-Yann
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
