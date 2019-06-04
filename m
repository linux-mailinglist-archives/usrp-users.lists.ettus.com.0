Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6266D34FF2
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2019 20:43:06 +0200 (CEST)
Received: from [::1] (port=36910 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYEOg-0005pk-FU; Tue, 04 Jun 2019 14:42:58 -0400
Received: from smtp77.iad3b.emailsrvr.com ([146.20.161.77]:44322)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <jasonr@3db-labs.com>) id 1hYEOd-0005ja-5d
 for usrp-users@lists.ettus.com; Tue, 04 Jun 2019 14:42:55 -0400
X-Auth-ID: jasonr@3db-labs.com
Received: by smtp18.relay.iad3b.emailsrvr.com (Authenticated sender:
 jasonr-AT-3db-labs.com) with ESMTPSA id 9E240E0239
 for <usrp-users@lists.ettus.com>; Tue,  4 Jun 2019 14:42:14 -0400 (EDT)
X-Sender-Id: jasonr@3db-labs.com
Received: from [192.168.101.19] (rrcs-74-142-203-226.central.biz.rr.com
 [74.142.203.226]) (using TLSv1.2 with cipher AES128-SHA)
 by 0.0.0.0:25 (trex/5.7.12); Tue, 04 Jun 2019 14:42:14 -0400
To: usrp-users@lists.ettus.com
References: <BL0PR12MB23402C2808CD82D3A68A4E1BAF150@BL0PR12MB2340.namprd12.prod.outlook.com>
Message-ID: <05f3a780-1b44-d8d4-6a64-a018964b6c6f@3db-labs.com>
Date: Tue, 4 Jun 2019 14:42:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <BL0PR12MB23402C2808CD82D3A68A4E1BAF150@BL0PR12MB2340.namprd12.prod.outlook.com>
Content-Language: en-US
Subject: Re: [USRP-users] offset tuning on the TwinRX
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
From: Jason Roehm via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Roehm <jasonr@3db-labs.com>
Content-Type: multipart/mixed; boundary="===============6985889619204098550=="
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
--===============6985889619204098550==
Content-Type: multipart/alternative;
 boundary="------------7FCD9B7AA00692BF144528CD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7FCD9B7AA00692BF144528CD
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit


On 6/4/19 12:30 PM, Jason Matusiak via USRP-users wrote:
> An associate was asking me about the TwinRX (which I haven't really 
> used).  He apparently uses offset tuning on the B series often for his 
> gnuradio flowgraphs.  He was trying to do it with the TwinRX and can't 
> find the hooks for it.  I looked around briefly and came up empty as 
> well.  I assume that there is something about the TwinRX that prevents 
> offset tuning, so I was curious what that might be.

Are you sure you actually want to use offset tuning on the TwinRX? It is 
a superheterodyne receiver. Usually, offset tuning is used to overcome 
the limitations of a zero-IF architecture.


Jason


--------------7FCD9B7AA00692BF144528CD
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/4/19 12:30 PM, Jason Matusiak via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:BL0PR12MB23402C2808CD82D3A68A4E1BAF150@BL0PR12MB2340.namprd12.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        An associate was asking me about the TwinRX (which I haven't
        really used).  He apparently uses offset tuning on the B series
        often for his gnuradio flowgraphs.  He was trying to do it with
        the TwinRX and can't find the hooks for it.  I looked around
        briefly and came up empty as well.  I assume that there is
        something about the TwinRX that prevents offset tuning, so I was
        curious what that might be.</div>
    </blockquote>
    <p>Are you sure you actually want to use offset tuning on the
      TwinRX? It is a superheterodyne receiver. Usually, offset tuning
      is used to overcome the limitations of a zero-IF architecture.</p>
    <p><br>
    </p>
    <p>Jason<br>
    </p>
  </body>
</html>

--------------7FCD9B7AA00692BF144528CD--


--===============6985889619204098550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6985889619204098550==--

