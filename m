Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 9nKKIjublmnrhwIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 06:10:19 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BB315C11E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 06:10:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D279C3853C6
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 00:10:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771477816; bh=nwkNyQZSuB5YgJ9AEhCmCTmp4EDpbGYqynq0DTgC3xE=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=JNtxPEURtszkAdxuxV5pwj4cwMGKWwO+WynVuykN4CSTr6g90KqpeGORMrmhKtJhJ
	 Bsm9zCWPnUcnCeJDC3fGZxShjVs3OfV5VZMPgY92x8Gl20nuzaK6NQTag8N/W+xL+b
	 SNYvxb19iGSf3jchnnWzmJoNJUtv3Y6EAt0n4zvsvA3rRftM5cgFQAuQd1GTIAPkNx
	 cT42wyeRa10ZtoNsuPYKA6HOz0NJ4G3Ekyc6M64kRBRNSljFV892TfLEvbzjNxboAI
	 LVl8eugLtKDzXovG/8O9V1s5I/4G8HZxvTJfwKrpAJ/1qM1tLPUYsPJGxbw4UXSNJC
	 s68TAtT/AIEDw==
Received: from resqmta-a2p-658780.sys.comcast.net (resqmta-a2p-658780.sys.comcast.net [96.103.146.53])
	by mm2.emwd.com (Postfix) with ESMTPS id A3DE8383BD3
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 00:09:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="DlFc93pL";
	dkim-atps=neutral
Received: from resomta-a2p-630472.sys.comcast.net ([96.103.145.242])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 256/256 bits)
	(Client did not present a certificate)
	by resqmta-a2p-658780.sys.comcast.net with ESMTPS
	id svtUv4yCBaz7DswIDvU5Rj; Thu, 19 Feb 2026 05:09:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1771477778;
	bh=K2aA/IKom/eLScKfFtYucCBEoGDdXCIlJvc5RGmNE8A=;
	h=Received:Received:Date:From:To:Message-ID:Subject:MIME-Version:
	 Content-Type:Xfinity-Spam-Result;
	b=DlFc93pLbmAc9FKFvPq+PYDooZFsQZKd42qq2euNRJxpOpCtZIA22L56+S4sD6lGF
	 nfZF+SgAfrlqhRvyFHE8ZZ6x5RKMFIF5k3uWZunNezb4i7mADgv2KoXcOqSh7meg2C
	 UUqlKWGsIZANHi8Gl+242Zk19O2Osf1NR5Q2VRZiaXC86RYlHoZ2bF9irXcAsbK748
	 Z4/Xlcd8MRng25/uM9GqtkJubSnLLVZNFqqlZoMiKB+xGx78k5t4/6ddai0PiPGUSB
	 hpn68Hv2UG2RN5Mo3SmngpZZWQdltQQ798HEzVpXMe0xtATxiaQ79CroRfuaVKvgDk
	 4zTV8eVoUP9Aw==
Received: from oxapp-ch2f-12o.email.comcast.net ([96.117.85.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by resomta-a2p-630472.sys.comcast.net with ESMTPS
	id swIDvuQTQrB4WswIDvEBjZ; Thu, 19 Feb 2026 05:09:37 +0000
Date: Wed, 18 Feb 2026 23:09:37 -0600 (CST)
To: Chris Wozny <woznych@gmail.com>, usrp-users@lists.ettus.com
Message-ID: <1906365718.58968.1771477777288@connect.xfinity.com>
In-Reply-To: <CAEZoMYMR5b=ZT8MQgkVQ4Z0OsZNzjvrLMhbf0RmoV66O7LYHKg@mail.gmail.com>
References: <CAEZoMYMR5b=ZT8MQgkVQ4Z0OsZNzjvrLMhbf0RmoV66O7LYHKg@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev83
X-Originating-IP: 2601:243:2401:b4a0:c9d3:fdd7:4c53:1156
X-Originating-Port: 37574
X-Originating-Client: open-xchange-appsuite
X-CMAE-Envelope: MS4xfM8WSsKJKfwQ6BiQeDDLK4TEdXd+1sXUXqVZpKdyM9LsLEsU81wtIKrb2I4RuhIrsnEwr1E9d7otbRCX+JmGNZDXaiyTmBHCJdZiMhZljp1p9seS3eUY
 OE3c6x0N6uoHXl1eRWQBTWluifZnkfl3Te1xUFPy77Mfufamrags6Z7EVnRXLOZW0DuFPXqIjgioP54zhrvy9hsXemsq7mb4/v8q/NGvLA+4e8QMMfFVZrbz
 nomRydvwMS4O31JqvfLw6w==
Message-ID-Hash: D66EY6EZ2NAZWLOID4WP3DQBU2SVZP6V
X-Message-ID-Hash: D66EY6EZ2NAZWLOID4WP3DQBU2SVZP6V
X-MailFrom: joe1518@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410/ZBX Session-to-Session Phase Coherence with multi_usrp API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D66EY6EZ2NAZWLOID4WP3DQBU2SVZP6V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: JOE QUATTROCHI via USRP-users <usrp-users@lists.ettus.com>
Reply-To: JOE QUATTROCHI <joe1518@comcast.net>
Content-Type: multipart/mixed; boundary="===============6165738910692906316=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.ettus.com];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FREEMAIL_REPLYTO(0.00)[comcast.net];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[comcast.net:s=20190202a];
	HAS_REPLYTO(0.00)[joe1518@comcast.net];
	HAS_XOIP(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	HAS_X_PRIO_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,comcast.net:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns,connect.xfinity.com:mid]
X-Rspamd-Queue-Id: 75BB315C11E
X-Rspamd-Action: no action

--===============6165738910692906316==
Content-Type: multipart/alternative;
	boundary="----=_Part_58967_1319068897.1771477777272"

------=_Part_58967_1319068897.1771477777272
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

fraud unsubscribe me now

> On 02/18/2026 8:29 PM CST Chris Wozny <woznych@gmail.com> wrote:
>  
>  
> We're working on a two-channel phase interferometry application using an X410 with two ZBX daughterboards and am having difficulty achieving consistent inter-channel phase measurements across application restarts. I'm hoping someone on the list has experience with this and can point me in the right direction. I've found quite a few emails on the mailing list from about a year ago on the topic, but they didn't seem to have a resolution (as far as I could tell).
>  
> Here's my current configuration:
> 
> NI USRP X410 (Rev 7)
> Two ZBX daughterboards
> MPM Version: 5.3
> FPGA Version: 8.3 (UC_200)
> FPGA git hash: c37b318.clean
>  
> I'm using UHD 4.7.0.0 with the Multi_USRP API in C++. The ports I'm connected to are the RX1 SMA ports on the same daughterboard (A:0 and A:1). The X410 is also connected to an external 10 MHz + 1 PPS reference from an Octoclock. I'm feeding these receive ports with a pulsed waveform from a signal generator connected via a splitter.
> 
> Problem:
> 
> Within a single execution of the application, the phase difference between the two channels is extremely stable and consistent pulse-to-pulse. However, when the application is restarted the phase offset changes to an essentially arbitrary value. Across five consecutive runs we observed delta phase values of approximately -25, -154, -25, 74, and -119 degrees at 3050 MHz.
>  
> The same code (timed command tune requests) and test equipment setup was working with an X310. The phase differences were consistent over a period of a few days of application restarts and power cycles. It seems like there are some fundamental architectural differences between the X310 with two UBX-160s and the X410 with two ZBXs that prevent the same task from being accomplished.
>  
> Here are the steps we've taken thus far to try and get the same initial phase on both channels from one run of the application to another:
> 
> 1. Switched clock and time source to "external" to lock to the Octoclock's 10 MHz and 1 PPS reference and polled the ref_locked sensor before proceeding.
> 2. Used set_time_next_pps() rather than set_time_now() to latch device time on a PPS edge, followed by a sleep longer than one second to guarantee the latch has occurred.
> 3. Configured subdev spec (A:0 A:1), per-channel parameters (sample rate, bandwidth, gain, antenna), and get_rx_stream() all after the ref_locked wait and PPS latch.
> 4. Issued simultaneous tune commands to both channels using set_command_time() aligned to the next PPS edge (get_time_now().get_full_secs() + 1.0), followed by another sleep greater than 1 second to allow LO lock.
> 5. Attempted explicit LO sharing via set_rx_lo_source("internal", "LO1"/"LO2", chan) on both channels, however set_rx_lo_export_enabled() was not supported on this radio so we abandoned that.
> 
> The within-run phase stability is excellent (sub-degree variation pulse-to-pulse), which suggests the hardware is working correctly. The problem appears to be that something is initializing to an arbitrary phase state on each UHD session that is not being reset by any of the above steps.
> 
> The ultimate question we have: with an X410 and two ZBX daughterboards is multi-channel phase coherence across multiple UHD sessions possible? If so, are there any steps we might be missing or out of order from what we tried above? Feeding in a known signal every time we start a session is not an option.
>  
> There was some chatter in the mailing list about newer versions of UHD resolving this, but other replies from March 2025 left it ambiguous (to me at least) as to whether this was fixed for X410s or X440s or fixed at all.
>  
> Any guidance you all might provide is greatly appreciated!
>  
> Best,
> Chris
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> 

------=_Part_58967_1319068897.1771477777272
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!doctype html>
<html>
 <head> 
  <meta charset="UTF-8"> 
 </head>
 <body>
  <div style="font-size: 12pt; font-family: helvetica,arial,sans-serif; color: #333333;">
   <span style="font-family: helvetica; font-size: 12pt;">fraud unsubscribe me now</span>
  </div> 
  <blockquote type="cite"> 
   <div>
    On 02/18/2026 8:29 PM CST Chris Wozny &lt;woznych@gmail.com&gt; wrote:
   </div> 
   <div>
    &nbsp;
   </div> 
   <div>
    &nbsp;
   </div> 
   <div dir="ltr">
    We're working on a two-channel phase interferometry application using an X410 with two ZBX daughterboards and am having difficulty achieving consistent inter-channel phase measurements across application restarts. I'm hoping someone on the list has experience with this and can point me in the right direction. I've found quite a few emails on the mailing list from about a year ago on the topic, but they didn't seem to have a resolution (as far as I could tell). 
    <div>
     &nbsp;
    </div> 
    <div>
     Here's my current configuration:
     <br>
     <br>
    </div> 
    <div>
     NI USRP X410 (Rev 7)
    </div> 
    <div>
     Two ZBX daughterboards
    </div> 
    <div>
     MPM Version: 5.3
     <br>FPGA Version: 8.3 (UC_200)
     <br>FPGA git hash: c37b318.clean
    </div> 
    <div>
     &nbsp;
    </div> 
    <div>
     I'm using UHD 4.7.0.0 with the Multi_USRP API in C++. The ports I'm connected to are the RX1 SMA ports on the same daughterboard (A:0 and A:1). The X410 is also connected to an external 10 MHz + 1 PPS reference from an Octoclock. I'm feeding these receive ports with a pulsed waveform from a signal generator connected via a splitter.
    </div> 
    <div>
     <br>Problem:
    </div> 
    <div>
     <br>Within a single execution of the application, the phase difference between the two channels is extremely stable and consistent pulse-to-pulse. However, when the application is restarted the phase offset changes to an essentially arbitrary value. Across five consecutive runs we observed delta phase values of approximately -25, -154, -25, 74, and -119 degrees at 3050 MHz.
    </div> 
    <div>
     &nbsp;
    </div> 
    <div>
     The same code (timed command tune requests) and test equipment setup was working with an X310. The phase differences were consistent over a period of a few days of application restarts and power cycles. It seems like there are some fundamental architectural differences between the X310 with two UBX-160s and the X410 with two ZBXs that prevent the same task from being accomplished.
    </div> 
    <div>
     &nbsp;
    </div> 
    <div>
     Here are the steps we've taken thus far to try and get the same initial phase on both channels from one run of the application to another:
     <br>
     <br>1. Switched clock and time source to "external" to lock to the Octoclock's 10 MHz and 1 PPS reference and polled the ref_locked sensor before proceeding.
     <br>2. Used set_time_next_pps() rather than set_time_now() to latch device time on a PPS edge, followed by a sleep longer than one second to guarantee the latch has occurred.
     <br>3. Configured subdev spec (A:0 A:1), per-channel parameters (sample rate, bandwidth, gain, antenna), and get_rx_stream() all after the ref_locked wait and PPS latch.
     <br>4. Issued simultaneous tune commands to both channels using set_command_time() aligned to the next PPS edge (get_time_now().get_full_secs() + 1.0), followed by another sleep greater than 1 second to allow LO lock.
     <br>5. Attempted explicit LO sharing via set_rx_lo_source("internal", "LO1"/"LO2", chan) on both channels, however set_rx_lo_export_enabled() was not supported on this radio so we abandoned that.
     <br>
     <br>The within-run phase stability is excellent (sub-degree variation pulse-to-pulse), which suggests the hardware is working correctly. The problem appears to be that something is initializing to an arbitrary phase state on each UHD session that is not being reset by any of the above steps.
     <br>
     <br>The ultimate question we have: with an X410 and two ZBX daughterboards is multi-channel phase coherence across multiple UHD sessions possible? If so, are there any steps we might be missing or out of order from what we tried above? Feeding in a known signal every time we start a session is not an option.
    </div> 
    <div>
     &nbsp;
    </div> 
    <div>
     There was some chatter in the mailing list about newer versions of UHD resolving this, but other replies from March 2025 left it ambiguous (to me at least) as to whether this was fixed for X410s or X440s or fixed at all.
    </div> 
    <div>
     &nbsp;
    </div> 
    <div>
     Any guidance you all might provide is greatly appreciated!
    </div> 
    <div>
     &nbsp;
    </div> 
    <div>
     Best,
    </div> 
    <div>
     Chris
    </div> 
   </div> _______________________________________________
   <br>USRP-users mailing list -- usrp-users@lists.ettus.com
   <br>To unsubscribe send an email to usrp-users-leave@lists.ettus.com
  </blockquote>
 </body>
</html>
------=_Part_58967_1319068897.1771477777272--

--===============6165738910692906316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6165738910692906316==--
