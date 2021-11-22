Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D6F458A73
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 09:22:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A258384221
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 03:22:33 -0500 (EST)
Received: from barracuda.navarca.com (barracuda.navarca.com [212.239.60.237])
	by mm2.emwd.com (Postfix) with ESMTPS id D9FB6383D3D
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 03:21:47 -0500 (EST)
X-ASG-Debug-ID: 1637569305-053bad1377498630001-5wTQH4
Received: from dns26.navarca.com (dns26.navarca.com [192.168.0.26]) by barracuda.navarca.com with ESMTP id ojLScsiYmONZPspC (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO) for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 09:21:45 +0100 (CET)
X-Barracuda-Envelope-From: emanuele.tolomei@intecs.it
X-Barracuda-RBL-Trusted-Forwarder: 192.168.0.26
Received: from dns26.navarca.com (localhost [127.0.0.1])
	by dns26.navarca.com (Postfix) with ESMTPS id 417271C8F96;
	Mon, 22 Nov 2021 09:21:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by dns26.navarca.com (Postfix) with ESMTP id 343CE710A9;
	Mon, 22 Nov 2021 09:21:45 +0100 (CET)
Received: from dns26.navarca.com ([127.0.0.1])
	by localhost (dns26.navarca.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 7l_tWH_pYItz; Mon, 22 Nov 2021 09:21:45 +0100 (CET)
Received: from dns27.navarca.com (dns27.navarca.com [192.168.0.27])
	by dns26.navarca.com (Postfix) with ESMTP id 2267E1D64DF;
	Mon, 22 Nov 2021 09:21:45 +0100 (CET)
Date: Mon, 22 Nov 2021 09:21:45 +0100 (CET)
X-Barracuda-RBL-Trusted-Forwarder: 192.168.0.27
From: Emanuele Tolomei <emanuele.tolomei@intecs.it>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <708657326.6472726.1637569305046.JavaMail.zimbra@intecs.it>
MIME-Version: 1.0
X-ASG-Orig-Subj: Trouble with TwinRX frequency tuning
X-Originating-IP: [2.228.120.196]
X-Mailer: Zimbra 8.8.15_GA_3996 (ZimbraWebClient - FF94 (Win)/8.8.15_GA_3996)
Thread-Index: CXEcQju0E3L+E/VzZmmM+ajKXn8ZtA==
Thread-Topic: Trouble with TwinRX frequency tuning
X-Barracuda-Connect: dns26.navarca.com[192.168.0.26]
X-Barracuda-Start-Time: 1637569305
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://212.239.60.237:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at navarca.com
X-Barracuda-Scan-Msg-Size: 1921
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=8.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.94126
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
Message-ID-Hash: 6MVPAERM3ALKXJV3QY3YK5BRVYOIKDCM
X-Message-ID-Hash: 6MVPAERM3ALKXJV3QY3YK5BRVYOIKDCM
X-MailFrom: btv1==96003e4e4ac==emanuele.tolomei@intecs.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Luigi Venuso <luigi.venuso@intecs.it>, "gianluca.bafanelli" <gianluca.bafanelli@intecs.it>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6MVPAERM3ALKXJV3QY3YK5BRVYOIKDCM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

I have an X300 with two TwinRX daughterboards, and I'm using UHD 3.13.1. I need channels synchronization for DOA calculation, so the channels share the same LO provided by channel 0.
The code for the LO sharing is the following:

m_MultiUsrp->set_time_unknown_pps(uhd::time_spec_t());
std::this_thread::sleep_for(std::chrono::seconds(1)); // wait for pps sync pulse
// Set channel specific settings
m_MultiUsrp->set_rx_lo_export_enabled(true, m_MultiUsrp->ALL_LOS, 0);
m_MultiUsrp->set_rx_lo_source("internal", m_MultiUsrp->ALL_LOS, 0);
m_MultiUsrp->set_rx_dc_offset(true, 0);
m_MultiUsrp->set_rx_lo_source("companion", m_MultiUsrp->ALL_LOS, 1);
m_MultiUsrp->set_rx_dc_offset(true, 1);
m_MultiUsrp->set_rx_lo_source("external", m_MultiUsrp->ALL_LOS, 2);
m_MultiUsrp->set_rx_dc_offset(true, 2);
m_MultiUsrp->set_rx_lo_source("external", m_MultiUsrp->ALL_LOS, 3);
m_MultiUsrp->set_rx_dc_offset(true, 3);

I am able to correctly tune the channels for the first time. However I'm having problems with changing the center frequency at runtime. When using the command set_rx_frequency() both in channel tuning and in channel synchronization, after a few loops the application crashes producing the error:

what():  EnvironmentError: IOError: Block ctrl (CE_01_Port_40) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [with uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t = long unsigned int]
  at /home/emanuele/uhd/host/lib/rfnoc/ctrl_iface.cpp:154

In particular, in the attached code of the ReceiveSamplesBurst function, if I comment between lines tagged with "INDICTED CODE LINES", the application runs without problems but the channels are not phase-synchronized.
How can I avoid this error while keeping the synchronization between all the four channels?

Thank you in advance.

Emanuele Tolomei

LEGAL DISCLAIMER:
The contents of this email and any transmitted files are confidential and intended solely for the use of the individual or entity to whom they are addressed. We hereby exclude any warranty and any liability as to the quality or accuracy of the contents of this email and any attached transmitted files. If you are not the intended recipient, be advised that you have received this email in error and that any use, dissemination, forwarding, printing or copying of this email is strictly prohibited. If you have received this email in error please contact the sender and delete the material from any computer.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
