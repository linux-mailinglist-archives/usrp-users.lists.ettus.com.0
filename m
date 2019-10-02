Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A86D9C893E
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2019 15:05:43 +0200 (CEST)
Received: from [::1] (port=34020 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFeK2-0006dP-L6; Wed, 02 Oct 2019 09:05:38 -0400
Received: from dslsn201.fix.netvision.net.il ([82.166.192.201]:42655
 helo=sept12.barochoren.com) by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <baroch@6tzvaim.com>) id 1iFeJy-0006QB-SR
 for usrp-users@lists.ettus.com; Wed, 02 Oct 2019 09:05:35 -0400
Received: from [192.168.14.139] (bzq-79-179-226-225.red.bezeqint.net
 [79.179.226.225])
 by sept12.barochoren.com (Postfix) with ESMTPSA id 9D66323F905
 for <usrp-users@lists.ettus.com>; Wed,  2 Oct 2019 15:40:32 +0300 (IDT)
To: usrp-users@lists.ettus.com
Message-ID: <f7bc0c94-95c6-cfd3-d018-8461a21de64b@6tzvaim.com>
Date: Wed, 2 Oct 2019 16:04:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] N310 link speed,
 buffer overflows and GPS locking / NMEA string
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
From: Baroch Oren via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Baroch Oren <baroch@6tzvaim.com>
Content-Type: multipart/mixed; boundary="===============1934851387412456966=="
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

--===============1934851387412456966==
Content-Type: text/html; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

<html style="direction: ltr;">
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <style type="text/css">body p { margin-bottom: 0cm; margin-top: 0pt; } </style>
  </head>
  <body bidimailui-charset-is-forced="true" style="direction: ltr;"
    bgcolor="#FFFFFF" text="#000000">
    <p>Hello all. This is my first post here so hopefully it will stand
      the expectations. <br>
    </p>
    <p><br>
    </p>
    My setup is:<br>
            Device - N310 with UHD 3.13.0.2-0-uknown serial=31950A8<br>
            Host - rebuilt UHD on the host computer, using
    3.14.0.HEAD-0-g6875d061<br>
            connected via mgmt via 1Gb eth, and 2 sfp ports.<br>
            cpu_governor is set to performance (4 cores at 3.75GHz)<br>
            network buffers (r_mem/w_mem) are 625,000,000<br>
    <br>
    1. Once upgraded the host's UHD to 3.14.0 (and the FPGA image as
    well), we keep getting "Could not determine link speed; using 1GibE
    max speed of 125000000". (These messages were not there before the
    upgrade). Is there any way to connect with both 10Gb connections and
    get feedback that this link speed is used by the software?<br>
    <br>
    2. I cannot manage to sample for periods longer than 0.06 sec (0.08
    fails) on 4 channels. the benchmark_rate example application cannot
    reach 10 seconds without DDD or DDODD on sampling rate of 30.72e6
    when clock is 122.88e6 . This limitation is fairly reproducable.
    Also it does not matter if I use GnuRadio or "rx_samples_to_file".
    Anyway data is routed to a ramdrive (write speed should be &gt;
    2Gbyte/sec). What I need is about 3 seconds of continuous capture.<br>
    <br>
    3. If I use usrp-&gt;set_time_source("external") I get an error "At
    least one PLL did not lock!" or "Failed to capture PPS within 1.1
    seconds. TDC_STATUS: 0x0"<br>
    and if I use "gpsdo", I cannot get any feedback that gps is pps
    locked and used. only the message "1) catch time transition at pps
    edge 2) set times next pps (synchronously)" - does it mean that gps
    is locked?<br>
    <br>
    4. how can I get NMEA string from the internal GPSDO of the N310?<br>
    <br>
    Thanks in advance,<br>
    Baroch Oren  <br>
    <div class="moz-signature">-- <br>
      <div dir="rtl"><br>
      </div>
    </div>
  </body>
</html>


--===============1934851387412456966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1934851387412456966==--
