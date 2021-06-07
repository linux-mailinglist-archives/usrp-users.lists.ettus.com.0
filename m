Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B2139E1BE
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 18:14:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E543D38495D
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 12:14:43 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 788A7384224
	for <usrp-users@lists.ettus.com>; Mon,  7 Jun 2021 12:13:46 -0400 (EDT)
Date: Mon, 7 Jun 2021 16:13:46 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <IeiNwyn5psgTn0yc2Ve6JbmYvw3NaZ51NGxVyJ3Arkw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFBYX1U+SaLEbvrp85Kex08-mHJNQ1CPEdY4SeXeZU4PkEn5Vw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: JI3FNHRJEZYEYP4PXLA4ZEZAB6NFENWJ
X-Message-ID-Hash: JI3FNHRJEZYEYP4PXLA4ZEZAB6NFENWJ
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Disabling property_propagation_active - [ERROR] [RFNOC::GRAPH::DETAIL]
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JI3FNHRJEZYEYP4PXLA4ZEZAB6NFENWJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0365510241301283769=="

This is a multi-part message in MIME format.

--===============0365510241301283769==
Content-Type: multipart/alternative;
 boundary="b1_IeiNwyn5psgTn0yc2Ve6JbmYvw3NaZ51NGxVyJ3Arkw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_IeiNwyn5psgTn0yc2Ve6JbmYvw3NaZ51NGxVyJ3Arkw
Content-Type: text/plain; charset=us-ascii

Hi,\
I have the same problem working with GNURadio.\
In the python generated, where connections are done, there are calls to the\
"connect" method of rfnoc_graph (something like this:\
self.rfnoc_graph.connect(self.ettus_rfnoc_ddc_0.get_unique_id(), 0,\
self.ettus_rfnoc_fft_0.get_unique_id(), 0, False))\
The last argument is the "skip_property_propagation" as it said in the UHD\
manual\
(<https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1rfnoc__graph.html>)\
I have tried to set it to True in the connection I get the error, but it\
still gives the same error. Maybe changing all the connections with this\
option? Not sure about what does this option exactly.\
Have you found anything else?\
Kind Regards,\
Maria

--b1_IeiNwyn5psgTn0yc2Ve6JbmYvw3NaZ51NGxVyJ3Arkw
Content-Type: text/html; charset=us-ascii

<p>Hi,<br>I have the same problem working with GNURadio.<br>In the python generated, where connections are done, there are calls to the<br>"connect" method of rfnoc_graph (something like this:<br>self.rfnoc_graph.connect(self.ettus_rfnoc_ddc_0.get_unique_id(), 0,<br>self.ettus_rfnoc_fft_0.get_unique_id(), 0, False))<br>The last argument is the "skip_property_propagation" as it said in the UHD<br>manual<br>(<a href="https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1rfnoc__graph.html">https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1rfnoc__graph.html</a>)<br>I have tried to set it to True in the connection I get the error, but it<br>still gives the same error. Maybe changing all the connections with this<br>option? Not sure about what does this option exactly.<br>Have you found anything else?<br>Kind Regards,<br>Maria</p>


--b1_IeiNwyn5psgTn0yc2Ve6JbmYvw3NaZ51NGxVyJ3Arkw--

--===============0365510241301283769==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0365510241301283769==--
