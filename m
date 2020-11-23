Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE372C0536
	for <lists+usrp-users@lfdr.de>; Mon, 23 Nov 2020 13:10:42 +0100 (CET)
Received: from [::1] (port=46956 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khAfy-00064L-F9; Mon, 23 Nov 2020 07:10:34 -0500
Received: from srv-frontsmtp1.insa-toulouse.fr ([195.83.9.38]:45417)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_DHE_RSA_WITH_AES_128_CBC_SHA
 (Exim 4.93) (envelope-from <dimercur@insa-toulouse.fr>)
 id 1khAft-0005y6-OC
 for usrp-users@lists.ettus.com; Mon, 23 Nov 2020 07:10:29 -0500
Received: from i-mel.insa-toulouse.fr ([195.83.9.6])
 by srv-frontsmtp1.insa-toulouse.fr with esmtp (Exim 4.82)
 (envelope-from <dimercur@insa-toulouse.fr>) id 1khAfE-0000Lw-CR
 for usrp-users@lists.ettus.com; Mon, 23 Nov 2020 13:09:48 +0100
Received: from localhost (localhost [127.0.0.1])
 by i-mel.insa-toulouse.fr (Postfix) with ESMTP id 59E1CC6307
 for <usrp-users@lists.ettus.com>; Mon, 23 Nov 2020 13:09:43 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at 
Received: from i-mel.insa-toulouse.fr ([127.0.0.1])
 by localhost (i-mel.insa-toulouse.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9UizSMQoZOvs for <usrp-users@lists.ettus.com>;
 Mon, 23 Nov 2020 13:09:43 +0100 (CET)
Received: from [10.2.5.43] (insa-08256.insa-toulouse.fr [10.2.5.43])
 (Authenticated sender: dimercur)
 by i-mel.insa-toulouse.fr (Postfix) with ESMTPSA id 41262C64F4
 for <usrp-users@lists.ettus.com>; Mon, 23 Nov 2020 13:09:42 +0100 (CET)
To: usrp-users@lists.ettus.com
Message-ID: <3d725267-832c-ea0f-ae74-8040f9d0504a@insa-toulouse.fr>
Date: Mon, 23 Nov 2020 13:09:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: fr-FR
X-Bm-Milter-Handled: 6c19ab42-660a-4c65-ad32-50deaee95f8c
X-Bm-Transport-Timestamp: 1606133383278
Subject: [USRP-users] USRP E100/E110 linux update
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
From: =?utf-8?q?S=C3=A9bastien_DI_MERCURIO_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?S=c3=a9bastien_DI_MERCURIO?= <dimercur@insa-toulouse.fr>
Content-Type: multipart/mixed; boundary="===============6691615729873300349=="
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
--===============6691615729873300349==
Content-Type: multipart/alternative;
 boundary="------------E392A26ABF5BBC35AE5C6FD4"
Content-Language: fr-FR

This is a multi-part message in MIME format.
--------------E392A26ABF5BBC35AE5C6FD4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I've got several USRP E100/E110 with outdated Linux and Gnuradio 
software on it. So I decided to build a Yocto image, more up-to-date and 
succeeded in after several tries.
The new image boots and run a reasonable updated version of Linux and 
Gnuradio.

But, because of Ettus proprietary kernel driver, I cannot connect to 
FPGA and so the board is useless.

My questions are:

- Did someone achieve to get an updated Linux base and Gnuradio 
software, with working FPGA communications (whatever the method)
       - Is it possible to get source code of Ettus kernel driver, as 
the board is now End-of-life
       - Is it possible to enable Ethernet communication pass-throughto 
FPGA, a bit like in N series, in order to use it over Ethernet(not 
standalone)

Regards!

Sebastien









.


--------------E392A26ABF5BBC35AE5C6FD4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p lang="en-US">
      <font style="font-size: 10pt" size="2">Hi,</font></p>
    <p lang="en-US"><font style="font-size: 10pt" size="2">I've got
        several USRP E100/E110 with outdated Linux and Gnuradio software
        on
        it. So I decided to build a Yocto image, more up-to-date and
        succeeded in after several tries.<br>
        The new image boots and run a
        reasonable updated version of Linux and Gnuradio.</font></p>
    <p lang="en-US"><font style="font-size: 10pt" size="2">But, because
        of Ettus proprietary kernel driver, I cannot
        connect to FPGA and so the board is useless.</font></p>
    <p lang="en-US"><font style="font-size: 10pt" size="2">My questions
        are:</font></p>
    <p lang="en-US">     <font style="font-size: 10pt" size="2">-
        Did someone achieve to get an updated Linux base and Gnuradio
        software, with working FPGA communications (whatever the
        method)<br>
              - Is it possible to get
        source code of Ettus kernel driver, as the board is now
        End-of-life<br>
              - Is it possible to
        enable Ethernet communication </font><font style="font-size:
        10pt" size="2">pass-through</font><font style="font-size: 10pt"
        size="2">
        to FPGA, a bit like in N </font><font style="font-size: 10pt"
        size="2">series</font><font style="font-size: 10pt" size="2">,
        in order to use it over </font><font style="font-size: 10pt"
        size="2">Ethernet</font><font style="font-size: 10pt" size="2">
        (not standalone)</font></p>
    <p lang="en-US"><font style="font-size: 10pt" size="2">Regards!</font></p>
    <p lang="en-US"><font style="font-size: 10pt" size="2">Sebastien</font></p>
    <style type="text/css">
		p { margin-bottom: 0.25cm; line-height: 115%; background: transparent }</style>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p>.</p>
  </body>
</html>

--------------E392A26ABF5BBC35AE5C6FD4--


--===============6691615729873300349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6691615729873300349==--

