Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1D454FD0
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2019 15:07:43 +0200 (CEST)
Received: from [::1] (port=35140 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hflAg-0000Td-Uf; Tue, 25 Jun 2019 09:07:38 -0400
Received: from dash.upc.es ([147.83.2.50]:49284)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <adria.amezaga@upc.edu>)
 id 1hflAc-0000KZ-Ik
 for usrp-users@lists.ettus.com; Tue, 25 Jun 2019 09:07:34 -0400
Received: from ackerman2.upc.es (ackerman2.upc.es [147.83.2.244])
 by dash.upc.es (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id x5PD6qMT003098
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2019 15:06:53 +0200
Received: from [192.168.2.14] (185-160-170-114.ipv4.xta.cat [185.160.170.114]
 (may be forged)) (authenticated bits=0)
 by ackerman2.upc.es (8.14.4/8.14.4) with ESMTP id x5PD6q5S011058
 (version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO)
 for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2019 15:06:52 +0200
To: usrp-users@lists.ettus.com
Message-ID: <ef1b9d55-f392-7e20-9420-22aa8d15fa27@upc.edu>
Date: Tue, 25 Jun 2019 15:06:50 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: es-ES
X-Antivirus: Avast (VPS 190624-4, 06/24/2019), Outbound message
X-Antivirus-Status: Clean
X-Greylist: Delayed for 94:02:36 by milter-greylist-4.3.9 (dash.upc.es
 [147.83.2.50]); Tue, 25 Jun 2019 15:06:53 +0200 (CEST)
X-Greylist: Default is to whitelist mail, not delayed by milter-greylist-4.4.3
 (ackerman2.upc.es [147.83.2.244]); Tue, 25 Jun 2019 15:06:52 +0200 (CEST)
X-Scanned-By: MIMEDefang 2.70 on 147.83.2.244
X-Virus-Scanned: clamav-milter 0.100.2 at dash
X-Virus-Status: Clean
Subject: [USRP-users] Samples do not get through RFNoC stream splitter
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
From: Adria via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Adria <adria.amezaga@upc.edu>
Content-Type: multipart/mixed; boundary="===============3652325044320193494=="
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

This is a multi-part message in MIME format.
--===============3652325044320193494==
Content-Type: multipart/alternative;
 boundary="------------A574923293005528F8CE0233"
Content-Language: es-ES

This is a multi-part message in MIME format.
--------------A574923293005528F8CE0233
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear all,

I am working on an application where I need to transmit a frequency ramp 
through two UBX-160 using different carrier frequencies.

I use a split_stream RFNoC block to copy the samples of a ramp generator 
like this:

[Ramp Generator] ---> [Split Stream] --> Radio 0

'-> Radio 1

However, I see no activity on the radio outputs. If I replace the 
splitter with, for instance, a DigitalGain block or I remove it, data is 
transmitted correctly through any of the two daughterboards.

Here is how I connect the blocks:

/  //Connect DDS sweeper to splitter//
//  graph->connect(dds_src_ctrl->get_block_id(), splitter_id);//
//  //Connect splitter to radios//
//  graph->connect(splitter_id, 0, radio_ctrl_id_b, 0);//
//  graph->connect(splitter_id, 1, radio_ctrl_id_a, 0);/

Any help would be appreciated, thanks!



---
This email has been checked for viruses by Avast antivirus software.
https://www.avast.com/antivirus

--------------A574923293005528F8CE0233
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear all,</p>
    <p>I am working on an application where I need to transmit a
      frequency ramp through two UBX-160 using different carrier
      frequencies.</p>
    <p>I use a split_stream RFNoC block to copy the samples of a ramp
      generator like this:</p>
    <p>[Ramp Generator] ---&gt; [Split Stream] --&gt; Radio 0</p>
    <p>                                                                  
      '-&gt; Radio 1</p>
    <p>However, I see no activity on the radio outputs. If I replace the
      splitter with, for instance, a DigitalGain block or I remove it,
      data is transmitted correctly through any of the two
      daughterboards.</p>
    <p>Here is how I connect the blocks:<br>
    </p>
    <p><font size="-1"><i>  //Connect DDS sweeper to splitter</i><i><br>
        </i><i>  graph-&gt;connect(dds_src_ctrl-&gt;get_block_id(),
          splitter_id);</i><i><br>
        </i><i>  //Connect splitter to radios</i><i><br>
        </i><i>  graph-&gt;connect(splitter_id, 0, radio_ctrl_id_b, 0);</i><i><br>
        </i><i>  graph-&gt;connect(splitter_id, 1, radio_ctrl_id_a, 0);</i></font><br>
    </p>
    <p>Any help would be appreciated, thanks!</p>
  <div id="DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2"><br />
<table style="border-top: 1px solid #D3D4DE;">
	<tr>
        <td style="width: 55px; padding-top: 13px;"><a href="https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient&utm_term=icon" target="_blank"><img src="https://ipmcdn.avast.com/images/icons/icon-envelope-tick-round-orange-animated-no-repeat-v1.gif" alt="" width="46" height="29" style="width: 46px; height: 29px;" /></a></td>
		<td style="width: 470px; padding-top: 12px; color: #41424e; font-size: 13px; font-family: Arial, Helvetica, sans-serif; line-height: 18px;">Virus-free. <a href="https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient&utm_term=link" target="_blank" style="color: #4453ea;">www.avast.com</a>
		</td>
	</tr>
</table><a href="#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width="1" height="1"> </a></div></body>
</html>

--------------A574923293005528F8CE0233--


--===============3652325044320193494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3652325044320193494==--

