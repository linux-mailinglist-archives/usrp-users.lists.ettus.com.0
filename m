Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EC646E7B1
	for <lists+usrp-users@lfdr.de>; Thu,  9 Dec 2021 12:40:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8CFF3848EE
	for <lists+usrp-users@lfdr.de>; Thu,  9 Dec 2021 06:40:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="key not found in DNS" (0-bit key; unprotected) header.d=bitstovolts.com header.i=@bitstovolts.com header.b="LZIWVVhv";
	dkim-atps=neutral
Received: from mail.webarch.email (mail.webarch.email [81.95.52.48])
	by mm2.emwd.com (Postfix) with ESMTPS id DF0F53844A8
	for <usrp-users@lists.ettus.com>; Thu,  9 Dec 2021 06:39:34 -0500 (EST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 53BB31A88FA6;
	Thu,  9 Dec 2021 11:39:25 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bitstovolts.com;
	s=20200213; t=1639049972;
	h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=oph1GeatNgSU/bSXtthJbj04Uip0lHlQXAK9FGBQl6w=;
	b=LZIWVVhv4zWUevr1pIbZGdTuW5JmzO+l1a/uI9QtUX9IXguuRvFjnQp6FjONV7zU1dQKCg
	SXMOmPyL5rGXOEW9pxGdQ4eboRDsx4uWqHIQpAOHuKkOcjSy8kow2NqBPd7K2/xCINqAS1
	WpeBoGEmcttWvaXeYUvX1o3/bYj/nCdLjGr7g5WboJ1GKrA1wt2KylI8O/6baY2vI5Kns6
	9VF8zJK4P26I/yrkzAokRCwmW0S+qqX8Apb5LPIuFbw7XSzcWtvpz59oDvUrL3C5ZEXJzE
	kszvjQzUF//W6qVpcb8GNLgFJQvPEE8DJRLmxOTPANxcFyaoKI6AcOjPLyxCbA==
Message-ID: <9f6e7c4b-821f-c9af-e79d-968646dd1c86@bitstovolts.com>
Date: Thu, 9 Dec 2021 11:39:22 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
To: Jonathan Pratt <jpratt@srcaus.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MN2PR16MB3502AF60E99998815E99E8E5B9709@MN2PR16MB3502.namprd16.prod.outlook.com>
From: Derek Kozel <derek@bitstovolts.com>
In-Reply-To: <MN2PR16MB3502AF60E99998815E99E8E5B9709@MN2PR16MB3502.namprd16.prod.outlook.com>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: PDY575JMOVD5OEUWLAW4DQ75TOMKROOB
X-Message-ID-Hash: PDY575JMOVD5OEUWLAW4DQ75TOMKROOB
X-MailFrom: derek@bitstovolts.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: mapping of channels in gnu radio with X310 with twin Rx radios
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PDY575JMOVD5OEUWLAW4DQ75TOMKROOB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Jonathan,

Most of this information relates to the subdevice specification and 
channel number mapping, described on this manual page.
https://files.ettus.com/manual/page_configuration.html#config_subdev

If you run uhd_usrp_probe you'll see a description of the available 
radio hardware for your specific configuration. An X310 has two 
daughterboard slots, A and B. The TwinRX has two receivers, 0 and 1. The 
complete subdevice spec for your radio is thus "A:0 A:1 B:0 B:1". These 
are channels [0,1,2,3] in UHD, and thus up into GNU Radio. These (in my 
experience) map by default to Antennas [RFA TX/RX, RFA RX2, RFB TX/RX, 
RFB RX2]. (more on that at the end)

1) The default channel used in a single channel streaming case is 
Channel 0, mapped to subdevice A:0 using antenna RFA TX/RX.

A different single channel can be addressed in (at least) two ways. You 
can change the order of the subdevice spec (Making a headache for 
yourself), or change the channel mapping. I would manually specify the 
default subdevice spec (to make it explicit and clear) as "A:0 A:1 B:0 
B:1" and then under "Channels" in GNU Radio, specify the array "[2]" for 
instance to say that the single channel is the "2" index of the 
subdevice spec, aka B:0. There's no problem sourcing data from any 
particular subset of channels.

Discussed in 
https://files.ettus.com/manual/page_multiple.html#multiple_channumbers

2) By two receivers I assume you mean two X310s. This manual page talks 
about the basics, and not basics, of working with device/motherboard 
indexes in addition to the subdevice spec. The antenna connectors in the 
GNU Radio tab are indexed by channel number, so once you've selected 
your subdevice spec (for sanity's sake really do keep the same on all 
the devices) and your channel map array (select which receivers are in 
use, and which order the user channel numbers map to those receivers) 
the antenna list should make sense.
https://files.ettus.com/manual/page_multiple.html

IE: Two X310s with two TwinRX each, both specified in the same GNU Radio 
USRP Source block. Subdev default "A:0 A:1 B:0 B:1", Channel map 
[0,2,4,6] would use every other receiver from the 8 available. MB0 A:0 
B:0, MB1 A:0 B:0. Changing the antenna selector for channel index 2 
would change it for MB1 A:0.

Yes, you must select 2 motherboards and should supply both IP addresses 
or device argument IDs in the USRP Source block.

3) No, but yes. You can put a single TwinRX in either slot. Mixing with 
other daughterboard types might now be supported, but was not for a long 
time, check with NI Support on the latest. If you put the TwinRX in the 
B slot you will have receivers B:0 B:1 available. Run uhd_usrp_probe to 
see this in detail. I'm nearly positive that the unknown daughterboard 
in side A will not be prefered in the UHD default channel selection, but 
am not 100% sure, so check the behavior on the bench. If you manually 
specify the subdev spec as "B:0 B:1" then channel 0 (default) will 
definitely be the first TwinRX receiver.

Regards,
Derek

Bits to Volts Ltd

On 12/9/2021 7:06 AM, Jonathan Pratt wrote:
> Hi all
>
> We have an X310 with 2 x TWIN RX radios in it.
>
> We want to set up a GNU radio flow for this setup but not sure exactly how connections are mapped.
>
> 1. If we create a block (UHD: USRP source) with only one channel, which receiver is the data coming from - in particular which antenna is being used with the normal connection of left Twin RX (looking from the front) Antenna 1 to  RF A TX/RX and Antenna 2 to RFA RX2; and for the right Twin RX Antenna 1 to RFB RX/TX and Antenna A RFB RX2. The presumption is that it is RFA TX/RX but we would like to be certain. Is it possible to address a different receiver as a single channel? Is there a problem with only sourcing data from less than all of the receivers? The reason for doing this is because we can't get enough data from the X310 with all receivers being polled so we want to focus on a single receiver output if possible
>
> 2. If there are two receivers and the block is configured for four channels do the antenna connections in the RF Options tab refer to the connections of the specific radios? Does the MB option on the General tab need to be set to 2 for this to work properly?
>
> 3. If we install only one of the Twin RX boards, does it matter which position (RFA or RFB) that we install the board?
>
> Is there some link that contains this kind of information?
>
> Thanks
>
> Kind regards
> Jonathan Pratt
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
