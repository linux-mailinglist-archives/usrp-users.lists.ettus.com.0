Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8795A94D0A
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2019 20:34:09 +0200 (CEST)
Received: from [::1] (port=35322 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hzmTn-00044y-AT; Mon, 19 Aug 2019 14:34:07 -0400
Received: from smtp125.iad3b.emailsrvr.com ([146.20.161.125]:49840)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jasonr@3db-labs.com>) id 1hzmTj-0003zF-L4
 for usrp-users@lists.ettus.com; Mon, 19 Aug 2019 14:34:03 -0400
X-Auth-ID: jasonr@3db-labs.com
Received: by smtp16.relay.iad3b.emailsrvr.com (Authenticated sender:
 jasonr-AT-3db-labs.com) with ESMTPSA id 2562FC0294
 for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2019 14:33:23 -0400 (EDT)
X-Sender-Id: jasonr@3db-labs.com
Received: from [192.168.101.19] (rrcs-74-142-203-226.central.biz.rr.com
 [74.142.203.226]) (using TLSv1.2 with cipher AES128-SHA)
 by 0.0.0.0:25 (trex/5.7.12); Mon, 19 Aug 2019 14:33:23 -0400
To: usrp-users <usrp-users@lists.ettus.com>
References: <9d637be0-b80a-33cb-492d-0197e3ba6f5a@3db-labs.com>
 <5D576746.1010008@gmail.com>
 <e74ba0af-5c65-9b46-d3d7-360ab9d9dda5@3db-labs.com>
 <CACaXmv-XwDKP8ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com>
Message-ID: <8a61a15c-6018-c30b-2cd3-15220e2ea1e6@3db-labs.com>
Date: Mon, 19 Aug 2019 14:33:22 -0400
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
Content-Type: multipart/mixed; boundary="===============5109042439238550414=="
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
--===============5109042439238550414==
Content-Type: multipart/alternative;
 boundary="------------ABFF23F7311D7A06A55F65AE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ABFF23F7311D7A06A55F65AE
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
>
Neel,

Also, if it helps, I had traced the problem down a bit further when I 
was originally debugging it last week. I found that the code in 
super_recv_packet_handler.hpp, which translates the packets from the 
device into samples and metadata that are passed to the UHD client, 
thought that the tick rate was 100 MHz (recv_packet_handler::_tick_rate 
was equal to 100e6). However, the X300 with a TwinRX installed must 
always use a master clock rate of 200 MHz per the documentation. So the 
effect was that the timestamps received in the packets from the X300 
were ticking up at a rate of 200 MHz, but the code in 
recv_packet_handler believed that the tick rate was 100 MHz instead; 
hence the 2x real-time rate. I was not able to find out how that tick 
rate was actually getting to the recv_packet_handler, however.

Jason


--------------ABFF23F7311D7A06A55F65AE
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
          <div class="gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Neel,</p>
    <p>Also, if it helps, I had traced the problem down a bit further
      when I was originally debugging it last week. I found that the
      code in super_recv_packet_handler.hpp, which translates the
      packets from the device into samples and metadata that are passed
      to the UHD client, thought that the tick rate was 100 MHz
      (recv_packet_handler::_tick_rate was equal to 100e6). However, the
      X300 with a TwinRX installed must always use a master clock rate
      of 200 MHz per the documentation. So the effect was that the
      timestamps received in the packets from the X300 were ticking up
      at a rate of 200 MHz, but the code in recv_packet_handler believed
      that the tick rate was 100 MHz instead; hence the 2x real-time
      rate. I was not able to find out how that tick rate was actually
      getting to the recv_packet_handler, however.</p>
    <p>Jason<br>
    </p>
  </body>
</html>

--------------ABFF23F7311D7A06A55F65AE--


--===============5109042439238550414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5109042439238550414==--

