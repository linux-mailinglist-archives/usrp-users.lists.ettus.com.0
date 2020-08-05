Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4103823C778
	for <lists+usrp-users@lfdr.de>; Wed,  5 Aug 2020 10:13:34 +0200 (CEST)
Received: from [::1] (port=38408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3EYE-00022D-Nu; Wed, 05 Aug 2020 04:13:30 -0400
Received: from secgw2.intern.tuwien.ac.at ([128.130.30.72]:55468)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <david.haberleitner@tuwien.ac.at>)
 id 1k3EYA-0001wB-PM
 for usrp-users@lists.ettus.com; Wed, 05 Aug 2020 04:13:26 -0400
Received: from totemomail (localhost [127.0.0.1])
 by secgw2.intern.tuwien.ac.at (8.14.7/8.14.7) with ESMTP id 0758Cj7i029765
 for <usrp-users@lists.ettus.com>; Wed, 5 Aug 2020 10:12:45 +0200
Received: from localhost ([127.0.0.1])
 by totemomail.intern.tuwien.ac.at (Totemo SMTP Server) with SMTP ID 720
 for <usrp-users@lists.ettus.com>;
 Wed, 5 Aug 2020 10:12:44 +0200 (CEST)
Received: from edge13b.intern.tuwien.ac.at (edge13b.intern.tuwien.ac.at
 [IPv6:2001:629:1005:30::67])
 by secgw2.intern.tuwien.ac.at (8.14.7/8.14.7) with ESMTP id 0758CiIE029750
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Wed, 5 Aug 2020 10:12:44 +0200
Received: from mbx13a.intern.tuwien.ac.at (2001:629:1005:30::61) by
 edge13b.intern.tuwien.ac.at (2001:629:1005:30::67) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 5 Aug 2020 10:12:44 +0200
Received: from [128.130.248.239] (128.130.248.239) by
 mbx13a.intern.tuwien.ac.at (2001:629:1005:30::61) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 5 Aug 2020 10:12:44 +0200
To: <usrp-users@lists.ettus.com>
Message-ID: <ff84d09b-9e07-beba-166e-90a18f794579@tuwien.ac.at>
Date: Wed, 5 Aug 2020 10:12:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-ClientProxiedBy: mbx13b.intern.tuwien.ac.at (2001:629:1005:30::62) To
 mbx13a.intern.tuwien.ac.at (2001:629:1005:30::61)
Subject: [USRP-users] X310 multi_usrp offsets of up to one sample
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
From: David Haberleitner via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Haberleitner <david.haberleitner@tuwien.ac.at>
Content-Type: multipart/mixed; boundary="===============5084698083889377827=="
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

--===============5084698083889377827==
Content-Type: multipart/alternative;
	boundary="------------92298B6AD1A8007E3F0F607B"
Content-Language: en-US

--------------92298B6AD1A8007E3F0F607B
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I'm building a setup with three X310 equipped with TwinRX daughterboards 
running at full 100MSps. The USRPs are synchronized using the 
Octoclock-G. The problem is that I am observing offsets of up to one 
sample in both directions across the individual devices (in regards to 
channel 0 on USRP1). These offsets only change after re-initialization 
of the multi_usrp object or manipulating the timekeeping registers 
(set_time_next_pps()) of the devices but they seem to be completely random.

I've looked into the clocking system and it seems like the 200MHz 
*radio_clk* should be phase aligned across all devices through the 10MHz 
reference input. (The LMK is in 0-delay mode and align_phase is set for 
the PLL/MMCM generating the radio_clk in the FPGA image).
The only other source for the offsets I could imagine would be a 
miss-alignment of the sample-strobes coming out of the *rx_frontend_gen3 
*(more specifically the keep_1_in_2 decimator) because the devices come 
out of reset at different times and therefore one USRP could have 
produced an even amount of samples while the other an odd amount (-> the 
decimators on the individual boards are in different states/counter 
values). This would result in offsets in the 200MHz domain of the 
baseband samples.

Thanks,
David


--------------92298B6AD1A8007E3F0F607B
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi all,</p>
    <p>I'm building a setup with three X310 equipped with TwinRX
      daughterboards running at full 100MSps. The USRPs are synchronized
      using the Octoclock-G. The problem is that I am observing offsets
      of up to one sample in both directions across the individual
      devices (in regards to channel 0 on USRP1). These offsets only
      change after re-initialization of the multi_usrp object or
      manipulating the timekeeping registers (set_time_next_pps()) of
      the devices but they seem to be completely random. <br>
    </p>
    <p>I've looked into the clocking system and it seems like the 200MHz
      <b>radio_clk</b> should be phase aligned across all devices
      through the 10MHz reference input. (The LMK is in 0-delay mode and
      align_phase is set for the PLL/MMCM generating the radio_clk in
      the FPGA image).<br>
      The only other source for the offsets I could imagine would be a
      miss-alignment of the sample-strobes coming out of the <b>rx_frontend_gen3
      </b>(more specifically the keep_1_in_2 decimator) because the
      devices come out of reset at different times and therefore one
      USRP could have produced an even amount of samples while the other
      an odd amount (-&gt; the decimators on the individual boards are
      in different states/counter values). This would result in offsets
      in the 200MHz domain of the baseband samples.</p>
    <p>Thanks,<br>
      David<br>
    </p>
  </body>
</html>

--------------92298B6AD1A8007E3F0F607B--


--===============5084698083889377827==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5084698083889377827==--

