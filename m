Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B456C9EC9
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2019 14:48:54 +0200 (CEST)
Received: from [::1] (port=58402 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iG0XK-0000Kz-Rk; Thu, 03 Oct 2019 08:48:50 -0400
Received: from smtp127.ord1c.emailsrvr.com ([108.166.43.127]:44092)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jasonr@3db-labs.com>) id 1iG0XH-0000D1-7c
 for usrp-users@lists.ettus.com; Thu, 03 Oct 2019 08:48:47 -0400
X-Auth-ID: jasonr@3db-labs.com
Received: by smtp8.relay.ord1c.emailsrvr.com (Authenticated sender:
 jasonr-AT-3db-labs.com) with ESMTPSA id 66FCEA01BF; 
 Thu,  3 Oct 2019 08:48:06 -0400 (EDT)
X-Sender-Id: jasonr@3db-labs.com
Received: from [192.168.101.19] (rrcs-74-142-203-226.central.biz.rr.com
 [74.142.203.226]) (using TLSv1.2 with cipher AES128-SHA)
 by 0.0.0.0:587 (trex/5.7.12); Thu, 03 Oct 2019 08:48:06 -0400
To: Neel Pandeya <neel.pandeya@ettus.com>
References: <9d637be0-b80a-33cb-492d-0197e3ba6f5a@3db-labs.com>
 <5D576746.1010008@gmail.com>
 <e74ba0af-5c65-9b46-d3d7-360ab9d9dda5@3db-labs.com>
 <CACaXmv-XwDKP8ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com>
 <8a61a15c-6018-c30b-2cd3-15220e2ea1e6@3db-labs.com>
 <CACaXmv87s56ttKCk4io8Z5nJq3DjyhzL6Qv1PgTMUvahmSad7A@mail.gmail.com>
 <d551a3fe-5f6a-147a-6bf3-0be3aaa86bcd@3db-labs.com>
 <39850419-2871-9e95-c355-677aa4543b60@3db-labs.com>
 <CACaXmv_Ar3Lq02UvuMhTv1Pi8Fv2TGkX5n642YxTW5E6W5NNVQ@mail.gmail.com>
Message-ID: <2e44da01-b922-5020-d4cc-4984fd55e1f0@3db-labs.com>
Date: Thu, 3 Oct 2019 08:48:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CACaXmv_Ar3Lq02UvuMhTv1Pi8Fv2TGkX5n642YxTW5E6W5NNVQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300, TwinRX,
 and v3.14.1.0
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9029180533216098515=="
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
--===============9029180533216098515==
Content-Type: multipart/alternative;
 boundary="------------8F702479FB9A19B78B7219FD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8F702479FB9A19B78B7219FD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 9/26/19 9:26 AM, Neel Pandeya wrote:
> Hello Jason:
>
> My apologies for the delay. We were super busy with GNU Radio 
> Conference. Thanks for providing a stand-alone test program. I'll try 
> to reproduce this issue later today or tomorrow, and I'll get back to 
> you with an update.
>
> --Neel Pandeya
>
Neel,

Have you had any luck?

Thanks.

Jason


--------------8F702479FB9A19B78B7219FD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/26/19 9:26 AM, Neel Pandeya wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CACaXmv_Ar3Lq02UvuMhTv1Pi8Fv2TGkX5n642YxTW5E6W5NNVQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div class="gmail_default"
            style="font-family:verdana,sans-serif">Hello Jason:</div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif">My apologies for the
            delay. We were super busy with GNU Radio Conference. Thanks
            for providing a stand-alone test program. I'll try to
            reproduce this issue later today or tomorrow, and I'll get
            back to you with an update.<br>
          </div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif">--Neel Pandeya</div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Neel,</p>
    <p>Have you had any luck?</p>
    <p>Thanks.</p>
    <p>Jason<br>
    </p>
  </body>
</html>

--------------8F702479FB9A19B78B7219FD--


--===============9029180533216098515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9029180533216098515==--

