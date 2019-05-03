Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F61128FE
	for <lists+usrp-users@lfdr.de>; Fri,  3 May 2019 09:38:50 +0200 (CEST)
Received: from [::1] (port=54108 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMSmI-0002CU-Fq; Fri, 03 May 2019 03:38:42 -0400
Received: from smtp.eurecom.fr ([193.55.113.210]:38121)
 by mm2.emwd.com with esmtp (Exim 4.91)
 (envelope-from <florian.kaltenberger@eurecom.fr>) id 1hMSlj-00027f-PK
 for usrp-users@lists.ettus.com; Fri, 03 May 2019 03:38:37 -0400
X-IronPort-AV: E=Sophos;i="5.60,424,1549926000"; 
 d="vcf'?scan'208,217";a="10061996"
Received: from monza.eurecom.fr ([192.168.106.15])
 by drago1i.eurecom.fr with ESMTP; 03 May 2019 09:37:26 +0200
Received: from [192.168.200.31] (unknown [192.168.200.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by monza.eurecom.fr (Postfix) with ESMTPSA id 5F6DF376B
 for <usrp-users@lists.ettus.com>; Fri,  3 May 2019 09:37:26 +0200 (CEST)
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <a2218c8e-0152-7af7-18d0-510ca262887c@eurecom.fr>
Date: Fri, 3 May 2019 09:37:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------4B09315B13E3E2C3A4380C3E"
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Problems updating FPGA on N300
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
From: Florian Kaltenberger via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Florian Kaltenberger <florian.kaltenberger@eurecom.fr>
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
--------------4B09315B13E3E2C3A4380C3E
Content-Type: multipart/alternative;
 boundary="------------7F2A398C389DA65CFBB38B5B"


--------------7F2A398C389DA65CFBB38B5B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

We have been using the N310 for a while and recently we got some N300, 
but I am having trouble getting them to work. They boot up fine and I 
can connect to them via ssh over the management port, but that's it 
(can't connect through the SFP+ ports, neither 1Gbit not 10Gbit). When I 
do "uhd_find_devices" from within the N300, I get the following message

root@ni-n3xx-317DD7D:~# uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; 
UHD_3.13.1.0-0-gbbce3e45
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
     serial: n/a
     claimed: False
     mgmt_addr: 127.0.0.1
     product: n/a
     type: n/a

So I was thinking there is a bad FPGA image and I tried updating using 
"uhd_image_loader" but that doesn't work either


root@ni-n3xx-317DD7D:~# uhd_image_loader --args "type=n3xx,fpga=HG"
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; 
UHD_3.13.1.0-0-gbbce3e45
No applicable UHD devices found

And advice anyone?

Florian.

-- 
Follow us on Google+ <https://plus.google.com/+OpenairinterfaceOrg>, 
LinkedIn <https://www.linkedin.com/company/openairinterface>, or Twitter 
<https://twitter.com/osalliance5g>!

--------------7F2A398C389DA65CFBB38B5B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello,</p>
    <p>We have been using the N310 for a while and recently we got some
      N300, but I am having trouble getting them to work. They boot up
      fine and I can connect to them via ssh over the management port,
      but that's it (can't connect through the SFP+ ports, neither 1Gbit
      not 10Gbit). When I do "uhd_find_devices" from within the N300, I
      get the following message</p>
    <p>root@ni-n3xx-317DD7D:~# uhd_find_devices <br>
      [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
      UHD_3.13.1.0-0-gbbce3e45<br>
      --------------------------------------------------<br>
      -- UHD Device 0<br>
      --------------------------------------------------<br>
      Device Address:<br>
          serial: n/a<br>
          claimed: False<br>
          mgmt_addr: 127.0.0.1<br>
          product: n/a<br>
          type: n/a<br>
      <br>
      So I was thinking there is a bad FPGA image and I tried updating
      using "uhd_image_loader" but that doesn't work either</p>
    <p><br>
      root@ni-n3xx-317DD7D:~# uhd_image_loader --args
      "type=n3xx,fpga=HG"<br>
      [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
      UHD_3.13.1.0-0-gbbce3e45<br>
      No applicable UHD devices found<br>
    </p>
    <p>And advice anyone?</p>
    <p>Florian.<br>
    </p>
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <title></title>
      Follow us on <a
        href="https://plus.google.com/+OpenairinterfaceOrg">Google+</a>,
      <a href="https://www.linkedin.com/company/openairinterface">LinkedIn</a>,
      or <a href="https://twitter.com/osalliance5g">Twitter</a>!<br>
    </div>
  </body>
</html>

--------------7F2A398C389DA65CFBB38B5B--

--------------4B09315B13E3E2C3A4380C3E
Content-Type: text/x-vcard; charset=utf-8;
 name="florian_kaltenberger.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="florian_kaltenberger.vcf"

begin:vcard
fn:Florian Kaltenberger
n:Kaltenberger;Florian
org:EURECOM;Mobile Communications
adr;dom:450 route des chappes;;Campus SophiaTech;Biot;;06410
email;internet:florian.kaltenberger@eurecom.fr
title:Assitant Professor
tel;work:+33 4 9300 8186
version:2.1
end:vcard


--------------4B09315B13E3E2C3A4380C3E
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------4B09315B13E3E2C3A4380C3E--

