Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D9C59CC0
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2019 15:15:08 +0200 (CEST)
Received: from [::1] (port=48522 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgqiV-0006jw-SI; Fri, 28 Jun 2019 09:15:03 -0400
Received: from sonic301-10.consmr.mail.ne1.yahoo.com ([66.163.184.243]:46008)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hgqiS-0006fX-5d
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 09:15:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1561727659; bh=UGJ5redXbfjbxhtqcvteKPO3s1zQU09SMDwRzVudtwA=;
 h=Subject:From:To:Date:From:Subject;
 b=POU7zWUHKXTcGOhzfvEc51vC57XA0PFkUdTPzqVfPHsy5ckRUzn/48zY1T8B3xc4AKZdRzO/wDUwh86cnqaj1qI/Ea0HuDo70zfoK3gnQXq7+yYDHVfqIK1WSjcT4FSA9iLQXJTitivPcNwENKx8TyeY8ZqGYs3cERCTDlfzjamK2Nyq8D/+jRy++kLNEJI0+ibNVL/Ts20i7LUhKvGav87bysPcL7odJOorydL9R3CiBoE0ZDTiOH2KOui4R3T0fFLHi1RieWj4B73idR9gqTkDFx1JHq1omzy5juYST6grxcbaGjj9VVokEuKtpc4khRarDkZzzVZ3HH21A1Jh1w==
X-YMail-OSG: QhyA2t8VM1l_QzfJrkAS9a0HAspnx8gAdD0nMTdplaW66kvWGRrwkggKWDfOhWa
 S6b.fpGLMUGuYKzig59VZOUTFspuZM5q_XTnJjjsvyeIn5gV3lnQtsWocO6YP_x_PwWCzjlY8llH
 fJoAwtYPINrKl_XKjdBWWqo5SDKgwCPyYOuawbHTVfwLKxEpxUIqzx6Arr7MAl4UDNkR.yuOVd44
 .DanPfTacHRKA8kggsz80PpfehNkdg9mFBHM2Hn_sHnXK_P__O0ZinZqXvALp3PcHXnSSWBwQRZd
 lnpiUsgEL2qsJOn4IlL1hxF91J7SnZr3JtJtydfTac21waCWlBQAyzKHz6lJrSrKVgIRsl68l9iU
 4o1hbH2bR8Xgq1vvzLMqdt4yRTP5UZdOFx6W3ZbTbtH2l43wfm5UCdbI1q78pj6GP1XA0pwsgWPg
 PvA0ZWXFUQfBvuhRALlHBYlmkdg1IGFO5Is.J7QnJHguatscfkgHPtIcDl4_N0.YNi3Zgozv7oQG
 i3VLBNRdcn4pyZCzSXVhfVivZEoVeptVQdBkqJQvHDM0IuhWX5xsz.d58rZZ8RhqkFKuziAu2BEe
 kue.ZoSOQO81zsWiwioJHIvp_4rzWwNN3a8INpyfge_j8I13A5dDfwcOqVmeX.8NI.7Lg55jMCaq
 iKIUC2BmAmWH8s.sjIaKVOOyFOakBCG7n4wWbb82E5I_7FmXq00FEKN2ptNqPf70_w_gRIMKjaYg
 aOwoYG_1oprphWUb3au8OFsU1iD2wmYgjv2Wz.hrLCd4MmEC3rD8thvaO0OsDhKhRZFUWeMv4I0T
 0tUrSffMfT0QLMlmzxTSO0jTFjIcQWii7aQHz5fScM53PsABcSRgZSG.lakvhqLjKXnys5Q8gWOi
 3sH98XLx5jGLS3uXixsG2ITo9JsZ0pO_cI_igATtkhU7AuFEqsX1LLJekpgZF8snTzafFpT8AHRx
 dis6jlpd1vNnDmfCxCPZlh_7oL1H5bnvQpYIsRCbLCHqrUdxtSHXUlrinmD2N1yuK1OTLWoFzfL.
 tsGCjBQbcVHMRaZK5A8HQi9m_pXQsqVmx3Vd2iBl4Je5KmV.7VHIeHuZ0P3jyagbjTiofMmPcsK.
 wQxWiW.QZYtHHql2Y6L8SaD7hfRHC3I2mkYxmRFB6ed8MD8w84MQhZWwUwtamS98DpSAnaH7RCOS
 B4vkW97Wh2Ajv1z_Ud5eqsG1xVlGBTSGCWxr.s6k0ibXcBZ6liDig7bdCyMUtE7y.IvU0w_U684w
 sUh2zXUSInne3WiAp4CV7
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.ne1.yahoo.com with HTTP; Fri, 28 Jun 2019 13:14:19 +0000
Received: from 65-123-201-146.dia.static.qwest.net (EHLO Serenity2)
 ([65.123.201.146])
 by smtp416.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 08631104a7073688714065b8f7a9b76b for <usrp-users@lists.ettus.com>;
 Fri, 28 Jun 2019 13:12:18 +0000 (UTC)
Message-ID: <732f0af3de67dcc002938e9d954e3cebc0cd4ec8.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Fri, 28 Jun 2019 13:12:16 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: [USRP-users] E310 v3.15.0.0 pre-release
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
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

I found the new SD image and cross-compiler described in 
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-May/059897.html
and it seems to work well for the UHD that's pre-installed. I was also
able to build the v3.15.0.0 pre-release host code from git and run it
from a sshfs "newinstall" directory using the old instructions as a
guide. rx_samples_to_file and rfnoc_rx_to_file seem to make valid
recordings. I used the script in fpga-src...scripts to generate some
FPGA images with different RFNOC blocks and they seemed build OK with
Vivado 2018.3 but I can't figure out how to load them into uhd on the
E310. uhd_usrp_probe, using either the baseline SD version of uhd or my
cross-compiled version, always shows the same modules (DDC_0, DUC_0)
regardless of what .bit files are in the UHD_IMAGES_DIR or where I try
to point it with --args="fpga=..." I've gone so far as to delete all of
the .bit images that I can find on the SD card and uhd still finds that
same fpga image whether I use the baseline or the newinstall version.
It's as if that particular FPGA image is baked into the uhd build or
some other location that updatedb...locate can't find rather than being
read from a file that I can change.

In general, is there a way to see which RFNOC modules are built into an
fpga .bit image other than uhd_usrp_probe?




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
