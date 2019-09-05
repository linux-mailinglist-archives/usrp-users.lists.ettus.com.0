Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E01AA6FD
	for <lists+usrp-users@lfdr.de>; Thu,  5 Sep 2019 17:08:49 +0200 (CEST)
Received: from [::1] (port=48790 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5tNP-0000Ef-0c; Thu, 05 Sep 2019 11:08:47 -0400
Received: from sun60.bham.ac.uk ([147.188.128.137]:51668)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <j.subash@bham.ac.uk>) id 1i5tNL-0008Je-Ay
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 11:08:43 -0400
Received: from [147.188.128.54] (helo=mailer3)
 by sun60.bham.ac.uk with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <j.subash@bham.ac.uk>) id 1i5tMg-000528-NA
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 16:08:02 +0100
Received: from eee980-93.bham.ac.uk ([147.188.93.140])
 by bham.ac.uk (envelope-from <j.subash@bham.ac.uk>)
 with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 id 1i5tMg-0006wx-D9 for usrp-users@lists.ettus.com 
 using interface auth-smtp.bham.ac.uk; Thu, 05 Sep 2019 16:08:02 +0100
To: USRP list <usrp-users@lists.ettus.com>
Message-ID: <5b42d964-619f-3034-5b9a-44f464afe630@bham.ac.uk>
Date: Thu, 5 Sep 2019 16:08:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-GB
X-BHAM-SendViaRouter: yes
X-BHAM-AUTH-data: TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128 via
 147.188.128.21:465 (subashj)
Subject: [USRP-users] sc16 - complex<int16_t> to numpy float
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
From: J Subash via USRP-users <usrp-users@lists.ettus.com>
Reply-To: J Subash <j.subash@bham.ac.uk>
Content-Type: multipart/mixed; boundary="===============9161548427215212764=="
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
--===============9161548427215212764==
Content-Type: multipart/alternative;
 boundary="------------DB5B64537394C8521E4AB444"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------DB5B64537394C8521E4AB444
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am using a B200 to save samples on the host as 'short' (as described 
in the uhd <https://github.com/EttusResearch/uhd>/host 
<https://github.com/EttusResearch/uhd/tree/master/host>/examples 
<https://github.com/EttusResearch/uhd/tree/master/host/examples>/rx_samples_to_file.cpp), 
which I believe is complex<int16_t>.

I'd like to import this data into numpy and then convert it into 
floating point values. Is sc16 a fixed point representation, if yes what 
is the scaling factor. If no, how do I convert it into a numpy float in 
Python. Any help would be much appreciated. Thanks.

BW

JS


--------------DB5B64537394C8521E4AB444
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,</p>
    <p>I am using a B200 to save samples on the host as 'short' (as
      described in the <tt><span class="js-repo-root text-bold"><span
            class="js-path-segment"><a data-pjax="true"
              href="https://github.com/EttusResearch/uhd"><span>uhd</span></a></span></span></tt><tt><span
          class="separator">/</span></tt><tt><span
          class="js-path-segment"><a data-pjax="true"
            href="https://github.com/EttusResearch/uhd/tree/master/host"><span>host</span></a></span></tt><tt><span
          class="separator">/</span></tt><tt><span
          class="js-path-segment"><a data-pjax="true"
            href="https://github.com/EttusResearch/uhd/tree/master/host/examples"><span>examples</span></a></span></tt><tt><span
          class="separator">/</span></tt><tt><span class="final-path">rx_samples_to_file.cpp),</span></tt>
      which I believe is complex&lt;int16_t&gt;.  <br>
    </p>
    <p>I'd like to import this data into numpy and then convert it into
      floating point values. Is sc16 a fixed point representation, if
      yes what is the scaling factor. If no, how do I convert it into a
      numpy float in Python. Any help would be much appreciated. Thanks.<br>
    </p>
    <p>BW</p>
    <p>JS<br>
    </p>
  </body>
</html>

--------------DB5B64537394C8521E4AB444--


--===============9161548427215212764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9161548427215212764==--

