Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DFB2F0395
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jan 2021 21:51:37 +0100 (CET)
Received: from [::1] (port=38212 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kyLCw-0000mw-Tb; Sat, 09 Jan 2021 15:51:34 -0500
Received: from web170.dnchosting.com ([199.7.105.170]:49362)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <barry@dcsmail.net>) id 1kyLCs-0000fs-MO
 for usrp-users@lists.ettus.com; Sat, 09 Jan 2021 15:51:30 -0500
Received: from [24.42.137.213] (port=59244 helo=[192.168.1.194])
 by web170.dnchosting.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <barry@dcsmail.net>)
 id 1kyLC6-00029w-Un; Sat, 09 Jan 2021 20:50:49 +0000
To: Ron Economos <w6rz@comcast.net>
Cc: usrp-users@lists.ettus.com
Message-ID: <eef4a776-3763-09a2-ebb3-f506fad2a899@dcsmail.net>
Date: Sat, 9 Jan 2021 14:50:41 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
Content-Language: en-US
X-OutGoing-Spam-Status: No, score=1.9
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - web170.dnchosting.com
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - dcsmail.net
X-Get-Message-Sender-Via: web170.dnchosting.com: authenticated_id:
 barry@dcsmail.net
X-Authenticated-Sender: web170.dnchosting.com: barry@dcsmail.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-From-Rewrite: unmodified, already matched
Subject: Re: [USRP-users] Transmit underruns
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
From: Barry Duggan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Barry Duggan <barry@dcsmail.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

Hi Ron,

Thank you for your test flowgraph. It works fine when using the wav 
file, BUT when I change to an Audio Source block (mic) I get the 
underruns. So I still have the problem. I've experimented with various 
sizes of 'send_buff_size' and I even put in a Fractional Resampler to 
raise the interpolation factor above the theoretical value.

I am now running on Ubuntu 20.04 and GRC 3.8.2.0

Any further suggestions?

Thanks,
Barry Duggan KV4FV

---

On Tue Jan 5 20:33:24 EST 2021, Ron Economos wrote:

Here's an ssb flow graph that's known to work. You can select the
sideband with the default option of the QT GUI Chooser block before you
start the flow graph (you can't change filter taps on the fly).

The test file is here.

http://www.w6rz.net/ssbaudio.wav

Ron

On 1/5/21 15:29, Barry Duggan via USRP-users wrote:
 > Ubuntu 20.10
 > GRC 3.9.0.RC0
 > UHD 4.0
 > B200mini
 > USRP_ssb_xmt.grc - https://pastebin.com/ypyERUGE
 >
 > I have experimented with various combinations of send_buff_size and
 > send_frame_size but continue to get underruns while transmitting. I've
 > also tried setting the Audio Source 'OK to Block' to 'Yes' and to
 > 'No'. What is the right combination of parameters to minimize or
 > eliminate the underruns?
 >
 > Thanks for your help!
 >
 > 73,
 > ---
 > Barry Duggan KV4FV
 > https://github.com/duggabe
 >

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
