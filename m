Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BB11575D7
	for <lists+usrp-users@lfdr.de>; Mon, 10 Feb 2020 13:45:35 +0100 (CET)
Received: from [::1] (port=35470 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j18RM-0006nl-6r; Mon, 10 Feb 2020 07:45:28 -0500
Received: from smtpsal1.cc.upv.es ([158.42.249.61]:39826 helo=smtpsalv.upv.es)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <borieher@iteam.upv.es>)
 id 1j18RI-0006jW-84
 for usrp-users@lists.ettus.com; Mon, 10 Feb 2020 07:45:24 -0500
Received: from smtpx.upv.es (smtpxv.cc.upv.es [158.42.249.46])
 by smtpsalv.upv.es (8.14.7/8.14.7) with ESMTP id 01ACigbm031017
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <usrp-users@lists.ettus.com>; Mon, 10 Feb 2020 13:44:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=upv.es; s=default;
 t=1581338682; bh=XgK0CKAWYYV9/+A/DFv/e8wYlb7NvR5SfR4+114j9IM=;
 h=To:From:Subject:Date:From;
 b=cDipuy1LlZPQ2wkee2KW8pTfoGMozeyNeq9e4iI2T8KBWRXHd2eITcTYgrjthXRk4
 HWFVuIucBWq2L3quWNio/XsT/b1IAYHHGhbSq517/R4On+l0fE/JZQs005agkB3O1c
 vUf8IfSh6qFmN17g3UhD5XYWjRUSDBFQhwJ0Uobp7tFMPSV0wke1BdbPx8eD7abegN
 1Uha0eoS4pnytdfhv19jV2o6bIaWU353GntVAjbtbrN4NS8LL/YiJJKNHC0lJmtrPZ
 34zp2doCWRs4kN9PYKZJblfNOPrg2ImfcZI5d47ShQh/kkkK5Vrothmo0Qp//bHI23
 9ohTbtkkDqEwA==
Received: from smtp.upv.es (smtpv.cc.upv.es [158.42.249.16])
 by smtpx.upv.es (8.14.7/8.14.7) with ESMTP id 01ACigmD026572
 for <usrp-users@lists.ettus.com>; Mon, 10 Feb 2020 13:44:42 +0100
Received: from [158.42.160.88] (mcg59.iteam.upv.es [158.42.160.88])
 by smtp.upv.es (8.14.7/8.14.7) with ESMTP id 01ACigvS009018
 for <usrp-users@lists.ettus.com>; Mon, 10 Feb 2020 13:44:42 +0100
To: usrp-users@lists.ettus.com
Message-ID: <49e170dd-3e0d-587a-0520-936fbe758b99@iteam.upv.es>
Date: Mon, 10 Feb 2020 13:44:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] Synchronize USRP using Octoclock
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Borja_I=C3=B1esta_Hern=C3=A1ndez_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Borja_I=c3=b1esta_Hern=c3=a1ndez?= <borieher@iteam.upv.es>
Content-Type: multipart/mixed; boundary="===============7659508206237929493=="
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
--===============7659508206237929493==
Content-Type: multipart/alternative;
 boundary="------------DAE92956F9F4C1E49B0659DD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DAE92956F9F4C1E49B0659DD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I just set up an Octoclock-G using the guide and now I can ping my 
device. But checking the test_clock_sync example with my x310 USRP 
something seems to be working bad. I run ./test_clock_synch --clock-args 
addr=CLOCK_ADDRESS --usrp-args serial=USRP_SERIAL and every time it has 
a 1 second offset between the USRP and the Octoclock in all the 
comparisons. The clock in the USRP is always one second delayed.

And in the test_clock_synch example changing: *(*times)[mboard] = 
usrp->**get_time_now**(mboard)**.**get_full_secs**();*

to: *(*times)[mboard] = 
usrp->**get_time_last_pps**(mboard).**get_full_secs**();
*

Works every time.

So, does anyone know why my USRP is one second delayed when I use 
get_time_now() even if its supossed to work? Can I assume that my USRP 
is synchronized to the Octoclock when im using get_time_last_pps()?

For my tests I have used this modified version of test_clock_synch 
created to work with two USRPs but only using it with one. 
https://github.com/Borjis131/USRP-tests/blob/master/test_clock_synch_b210.cpp 
the code is from Urban Hankansson thread 
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2015-January/012227.html

Thanks, Borja.


--------------DAE92956F9F4C1E49B0659DD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi all,</p>
    <p>I just set up an Octoclock-G using the guide and now I can ping
      my device. But checking the test_clock_sync example with my x310
      USRP something seems to be working bad. I run ./test_clock_synch
      --clock-args addr=CLOCK_ADDRESS --usrp-args serial=USRP_SERIAL and
      every time it has a 1 second offset between the USRP and the
      Octoclock in all the comparisons. The clock in the USRP is always
      one second delayed.<br>
    </p>
    <p>And in the test_clock_synch example changing: <b>(*times)[mboard]
        = usrp-&gt;</b><b><span class="pl-c1">get_time_now</span></b><b>(mboard)</b><b>.</b><b><span
          class="pl-c1">get_full_secs</span></b><b>();</b> <br>
    </p>
    <p>to: <b>(*times)[mboard] = usrp-&gt;</b><b><span class="pl-c1">get_time_last_pps</span></b><b>(mboard).</b><b><span
          class="pl-c1">get_full_secs</span></b><b>(); <br>
      </b></p>
    <p>Works every time. <br>
    </p>
    <p>So, does anyone know why my USRP is one second delayed when I use
      get_time_now() even if its supossed to work? Can I assume that my
      USRP is synchronized to the Octoclock when im using
      get_time_last_pps()?</p>
    <p>For my tests I have used this modified version of
      test_clock_synch created to work with two USRPs but only using it
      with one.
<a class="moz-txt-link-freetext" href="https://github.com/Borjis131/USRP-tests/blob/master/test_clock_synch_b210.cpp">https://github.com/Borjis131/USRP-tests/blob/master/test_clock_synch_b210.cpp</a>
      the code is from Urban Hankansson thread
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2015-January/012227.html">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2015-January/012227.html</a></p>
    <p>Thanks, Borja.<br>
    </p>
  </body>
</html>

--------------DAE92956F9F4C1E49B0659DD--


--===============7659508206237929493==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7659508206237929493==--

