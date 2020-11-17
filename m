Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2992B59BE
	for <lists+usrp-users@lfdr.de>; Tue, 17 Nov 2020 07:26:55 +0100 (CET)
Received: from [::1] (port=40234 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1keuS4-0004IW-GJ; Tue, 17 Nov 2020 01:26:52 -0500
Received: from mout.gmx.net ([212.227.17.21]:41837)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <smithgeorge1492@gmx.com>)
 id 1keuS0-0004Dy-8p
 for usrp-users@lists.ettus.com; Tue, 17 Nov 2020 01:26:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1605594366;
 bh=Dm4+yZamLuiNHSJjrKH1vZ3GuxuBtHQe4Sp3aMQoN1A=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=bdTjwYozu5JOUBIqk0NpIR1e/4gGpqAclQVNmKM9oBBXr809rD0Ux3xfjZqTU2igL
 tsZHjjZPI08DV8QDA6uP4xvBw1ERDbTOy4KRoPicC5ZIGkIknUgUxU8hgWGPTgdhUM
 78K6boW4kNMuQBqkCnJFDZoIhjVzWOgRFbUGMrQc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.216.202.180] ([62.216.202.180]) by web-mail.gmx.net
 (3c-app-gmx-bap02.server.lan [172.19.172.72]) (via HTTP); Tue, 17 Nov 2020
 07:26:06 +0100
MIME-Version: 1.0
Message-ID: <trinity-68061d4d-5ab3-4320-82b3-c9d0d0d56cf7-1605594366644@3c-app-gmx-bap02>
To: usrp-users@lists.ettus.com
Date: Tue, 17 Nov 2020 07:26:06 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:P/v0yhp7fEUqKXSXv0KUpHrBHw3g//aqQtx8a3x0DUqSFFYiVBqvpdR4vJ0Th/oAD6dJm
 0KYvr5+h9jOp7VoqGVLWnsrDkptdOemwIuaM0Doz+G4YMerNmVunXVLZCNvP9x8uQN9zGv6zuLDO
 FJgxhgFSF8km6ywPQHQv1Nc3ecMS2gG8r8Nu8wh55rv2fFsKMuRMd5dbUaWLIdRBZV5VJmH38b/e
 WdE7nay4A52XSoQ9hEmzrcPfUQx5BluNDbTDEFJFn7Fa0XbA864G1HuSIPwivGuWs94JlkxwcvzT
 a0=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wyOvUJWpFeM=:jW2wNTc6QWD6AZwS2i3hM7
 bJCH85DFqXK8WlpmIxSIXwaa+1LnxE/rSAn7s3bN8798Jg7FQL5AvjPkmfvj8jjmX6QrcMRSt
 3wM2+85KBz6h/ABVTzr7BiuYLkHG594d72Sd5S5Ua8FSGml783eTKkYlxIRS8l7KUeSxy0Mlo
 +4soRho1giJEm+d+wNFeFKRHWXOudKNAElNw9N+gjnDnpYvXfcL04hSn9vJbVg4ZrzP/ChtgP
 h+z5tYnwYRyuAkTo6/ewXeHFjoyU7galpjoauWgn/XNLG5L8BHDrNZlgWrZZ5SY5eYzuExaVw
 V0/IsU1XeHmDOpYF32l57QFrxK6BmHcOOfruIcJCKwPeGhPkh//T1321z/P8dJJtnpuJs6ZEk
 75cv9UIzjCYdpcCeoaIDg3a9Yjof1Nq7xyhgq7Qn2/R2lX8xYyaFSX+a+shczs2GEibzoeX4W
 dNz6OTOgc6sJ6pG0cJKLrElmr2U9Pt8Qqq+gfZkCzdm9nO/24tA6+1zn7h48ZpvYURnJ32Ctq
 hiZsS8fvC0/Kmp02Sx602prgHNbb5rnRfxNzQt/bS5mpKj4dPJ8xdnG9FTYOna3B0oZIigTvn
 ZWbI4CjizM7ho=
Subject: [USRP-users] RFNoC: How can I use the GPS time?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: George Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: George Smith <smithgeorge1492@gmx.com>
Content-Type: multipart/mixed; boundary="===============1812710050270308532=="
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

--===============1812710050270308532==
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div style="font-family: Verdana;font-size: 12.0px;">
<div style="font-family: Verdana;font-size: 12.0px;">
<div>Dear community,</div>

<div>&nbsp;</div>

<div>I use an RFNoC block and I would like to use it in combination with the GPS time functionallity on a N310.</div>

<div>My aim is to create and write out a GPS precise timestamp - in the first step only once but maybe later more regularly.</div>

<div>Until Inow I have a RFNoC block, where I put the controlling stuff (of the main task) inside <em>test1_block_ctrl_impl.cpp </em>which is called by <em>test1_impl.cc</em></div>

<div>My idea is to put the GPS time function inside <em>test1_block_ctrl_impl.cpp</em>&nbsp; / <em>test1_impl.cc </em>as well. In my opinion it is not necessary to create a completelty new self-written RFNoC block since it is a small function.</div>

<div>&nbsp;</div>

<div>In the following I describe two different approaches how I try to achieve my goal, but I would like to use the easiest one.</div>

<div>Mainly I try to use the integrated GPSDO function</div>

<div>So if you know a better solution, don&#39;t hesitate to post it. :)</div>

<div>&nbsp;</div>

<div>
<div>--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</div>
</div>

<div>&nbsp;</div>

<div><strong>(1)</strong></div>

<div>&nbsp;</div>

<div>Initially; I thought I could use code of the <em>sync_to_gps.cpp </em>in the examples folder of uhd, but I realized that therefore an instance of an <em>usrp</em> object is created.</div>

<div>&nbsp;</div>

<div><em>uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(args);</em></div>

<div>&nbsp;</div>

<div>Since I use a RFNoC block, previously a &quot;<em>rfnoc</em>&quot; object is constructed. (I dont know the exact name and where it is created). So, I have two instances which want to access at the same resource (board) at the same time. This is obviously not functioning.</div>

<div>So when I run it in gnuradio I got the following error:</div>

<div>&nbsp;</div>

<div><em>[ERROR] [RPC] Someone tried to claim this device again</em></div>

<div>&nbsp;</div>

<div>In order to avoid this problem I would like to apply the needed methods for using the GPS time functionallity at the <em>rfnoc </em>object (so I do not need to create an object <em>usrp </em>).</div>

<div>In the <em>sync_to_gps.cpp </em>example the following methods are used:</div>

<div>&nbsp;</div>

<div><em>set_clock_source</em></div>

<div><em>set_time_source</em></div>

<div><em>get_mboard_sensor_names</em></div>

<div><em>get_mboard_sensor</em></div>

<div><em>set_time_next_pps</em></div>

<div><em>get_time_last_pps</em></div>

<div>&nbsp;</div>

<div>So my question is, where in the RFNoC framework is an instance of the <em>rfnoc </em>object created, so I can apply these methods to it.</div>

<div>&nbsp;</div>

<div><em>Another thing:</em></div>

<div>If I start the built program <em>sync_to_gps</em>, I get after the initialization, a <em>seg fault </em>error. I think, it is because I use an RFNoC block.</div>

<div>Is it true, and where is the core dump stored?</div>

<div>&nbsp;</div>

<div><strong>(2)</strong></div>

<div>&nbsp;</div>

<div>During my research, I noticed that there is an <em>RFNoC: Radio block. </em>Looking at the source code I see interesting methods in it:</div>

<div>&nbsp;</div>

<div>set_clock_source</div>

<div>set_time_next_pps</div>

<div>get_time_last_pps</div>

<div>&nbsp;</div>

<div>but not (<em>set_time_source, get_mboard_sensor_names, get_mboard_sensor </em>)</div>

<div>&nbsp;</div>

<div>So it seems to me that a GPS time function is not integrated in the <em>rfnoc_radio_impl&nbsp; </em>class<em>.</em></div>

<div>This astonishes me, because I would assume that the RFNoC framework could perform at least the same tasks as an usual USRP (radio) one.</div>

<div>I think about using (copying) the missing methods in the <em>rfnoc_radio_impl&nbsp; </em>class. Are there any problems doing this or why they have not been implemented so far?<br/>
If I implement it, how can I recompile the block in order to get an updated <em>RFNoC: Radio</em> block.</div>

<div>&nbsp;</div>

<div>--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</div>

<div>&nbsp;</div>

<div>Used software:</div>

<div>I use GNURadio 3.7.14.0, UHD 3.15 with Python 2.7.</div>

<div>Hardware:&nbsp;</div>

<div>N310</div>

<div>&nbsp;</div>

<div>Thanks for the help :)</div>

<div>&nbsp;</div>

<div>Kind regards</div>

<div>&nbsp;</div>

<div>George</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div class="signature">&nbsp;</div>
</div>
</div></div></body></html>


--===============1812710050270308532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1812710050270308532==--
