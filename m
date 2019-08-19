Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AA594C5E
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2019 20:08:55 +0200 (CEST)
Received: from [::1] (port=57410 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hzm5E-0002Gk-Uh; Mon, 19 Aug 2019 14:08:44 -0400
Received: from smtp85.iad3a.emailsrvr.com ([173.203.187.85]:32955)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jasonr@3db-labs.com>) id 1hzm5A-0002Cw-Vk
 for usrp-users@lists.ettus.com; Mon, 19 Aug 2019 14:08:41 -0400
X-Auth-ID: jasonr@3db-labs.com
Received: by smtp35.relay.iad3a.emailsrvr.com (Authenticated sender:
 jasonr-AT-3db-labs.com) with ESMTPSA id 3DD616149; 
 Mon, 19 Aug 2019 14:08:00 -0400 (EDT)
X-Sender-Id: jasonr@3db-labs.com
Received: from [192.168.101.19] (rrcs-74-142-203-226.central.biz.rr.com
 [74.142.203.226]) (using TLSv1.2 with cipher AES128-SHA)
 by 0.0.0.0:587 (trex/5.7.12); Mon, 19 Aug 2019 14:08:00 -0400
To: Neel Pandeya <neel.pandeya@ettus.com>
References: <9d637be0-b80a-33cb-492d-0197e3ba6f5a@3db-labs.com>
 <5D576746.1010008@gmail.com>
 <e74ba0af-5c65-9b46-d3d7-360ab9d9dda5@3db-labs.com>
 <CACaXmv-XwDKP8ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com>
Message-ID: <8608cec5-c191-2872-c2af-b655bc3cbce3@3db-labs.com>
Date: Mon, 19 Aug 2019 14:07:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CACaXmv-XwDKP8ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4827335771299848022=="
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
--===============4827335771299848022==
Content-Type: multipart/alternative;
 boundary="------------C1AC496D43BA94432DC297DD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C1AC496D43BA94432DC297DD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 8/19/19 12:34 PM, Neel Pandeya wrote:
> Hello Jason:
>
> I also would have expected UHD 3.14.1.0 to have resolved this issue.
>
> Would you be able to send me a stand-alone program that I can use to 
> reproduce this problem?
>
> Also, I'm curious, do you have a GPSDO installed in your X300?
>
> --Neel Pandeya

Neel,

I don't have a standalone reproducer at the moment. I will generate one 
when I get a chance, but it may be a little while before I can get back 
to you with one. We do have a GPSDO installed in the X300. Would you 
expect any differences in behavior without it?

Thanks.

Jason


--------------C1AC496D43BA94432DC297DD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 8/19/19 12:34 PM, Neel Pandeya
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CACaXmv-XwDKP8ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div class="gmail_default"
            style="font-family:verdana,sans-serif">Hello Jason:</div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif">I also would have
            expected UHD 3.14.1.0 to have resolved this issue.</div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif">Would you be able to
            send me a stand-alone program that I can use to reproduce
            this problem?<br>
          </div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif">Also, I'm curious, do
            you have a GPSDO installed in your X300?<br>
          </div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
          <div class="gmail_default"
            style="font-family:verdana,sans-serif">--Neel Pandeya</div>
        </div>
      </div>
    </blockquote>
    <p>Neel,</p>
    <p>I don't have a standalone reproducer at the moment. I will
      generate one when I get a chance, but it may be a little while
      before I can get back to you with one. We do have a GPSDO
      installed in the X300. Would you expect any differences in
      behavior without it?</p>
    <p>Thanks.</p>
    <p>Jason<br>
    </p>
  </body>
</html>

--------------C1AC496D43BA94432DC297DD--


--===============4827335771299848022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4827335771299848022==--

