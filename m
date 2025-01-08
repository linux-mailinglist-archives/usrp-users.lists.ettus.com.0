Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE9EA0648B
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 19:35:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02F0A385D2C
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 13:35:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736361307; bh=oWRziPBmqkKveZfM13vYC2KlL8q1jpWMRv3Nprlp+cw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=w9Fe9unbl7hnKo5363l5fAFsHsqoYCZMfLRzVsdie4W56Heig6WVxxBjU0bE5dQPb
	 y9bEgH+fCvedxeIoKdL5ypvEVMGB07bys00dSEv/BE0RlDksGT2vt2ZKeSSMPSprZ0
	 OLWSuUbBU8kSDgxBNLNHBS1RCKg59fUX9ngNlv1/aj4uBWqsuNmwUui+lrbgmyTX4N
	 vpgKHV7gL86TrTAOlgAXdDe3ZSrAzupf2u1gEXNdNBw3M2fmsqV6CcsU3kRJSbBdXg
	 KKaXHQljqQWYhjAYmqrq+uVo/msAnXJ6ZdPZfZUqMsuI+FjtERm/d6nesvej9s8Lbk
	 ZIF+TAico3JGw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF5C3385CF7
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 13:34:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736361262; bh=LdK249zoIuR3oMBhouchQgfDxeKLCYJDv2+Wq6wGRIA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=qpBKofXbuI7/jKnnPPPxkAgUqdnClDwtnzHZwkIWPaHxaC1tqwGeegwyxu30tDN19
	 8q8ATuy7YwaCJ2K4pC3hxg//YxBmFwwjPN+aNJQdjn5sWq5QS7Zf6AsRtYKM8D/QF5
	 njQb6ZG+D7VwrH5wugRmq/1yMM9Gd2oh7SnwN37VdYRXHlA9U0CrCbvEG+tjdVEhUE
	 h6bsZy92kCixGDGW3gKgJscvbeNh64B/kpILB9AuWBgN6N/4J/csdbz4zsq52OtRz3
	 h8MTrqqGEttd2kG9ZmJpvSRJ5g1Oiyax0SY2UxbHi+hy5613u0f160oDmQ7Dq2P6UD
	 UvzmB5gnAIXRQ==
Date: Wed, 8 Jan 2025 18:34:22 +0000
To: usrp-users@lists.ettus.com
From: nriedel@serranosystems.com
Message-ID: <zm9g7ckmjEF3f3aDDgmdgX2RMTEkwMAvYmzS73E8vQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A4GZO1OkD_LP43N=XSxkwNxQ=sggriuWUsgBBnWcZLQUA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: Q23K7CX4OVYJQFEVVCLGDXWZKEAOCQKF
X-Message-ID-Hash: Q23K7CX4OVYJQFEVVCLGDXWZKEAOCQKF
X-MailFrom: nriedel@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q23K7CX4OVYJQFEVVCLGDXWZKEAOCQKF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8342613876781427145=="

This is a multi-part message in MIME format.

--===============8342613876781427145==
Content-Type: multipart/alternative;
 boundary="b1_zm9g7ckmjEF3f3aDDgmdgX2RMTEkwMAvYmzS73E8vQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_zm9g7ckmjEF3f3aDDgmdgX2RMTEkwMAvYmzS73E8vQ
Content-Type: text/plain; charset=us-ascii

Hi Martin, Marcus & Rob,

Thank you for your previous responses.  Cy is working for me on this development. Let me jump in and explain what we are trying to accomplish.

We are using an x310 USRP to transmit samples from a custom C++ application over a 10Gb Ethernet interface.  The target sample rate is 200 MSps, with 16-bit I/Q samples.   We have receive functions running running reliably over the 10Gb Ethernet interface at the 200 MSps rate.

We would like to stream the transmit samples continuously, and we want the sample timing to be synchronized to GPS time (our x310 is fitted with the internal GPSDO).

We understand that we may have occasional errors on the 10Gb Ethernet link, and that we will need to recover from them.  We are trying to understand the best combination of burst size and packet size to accomplish this.

We initially tried making the burst size and the packet size the same.  So each packet has 1996 samples, and the metadata in each packet has start_of_burst, end_of_burst, and has_timestamp all set true.  The time_spec in the metadata is updated by 1996 ticks for each packet, corresponding to the number of samples in each packet.  We have flow control enabled on the transmit stream:

    uhd::stream_args_t tx_stream_args("sc16", "sc16");

    tx_stream_args.args\["enable_fc"\] = "1"; // Enable flow control

    tx_stream_args.args\["stream_mode"\] = "full_packet"; // Required for handling flow control responses

    tx_stream = usrp->get_tx_stream(tx_stream_args);

Similar to the tx_timed_samples example, we set the time_spec of the first packet to be 1 second in the future, to be sure that we have enough samples queued up in the USRP before it actually begins transmitting.

This approach does not seem to work at all.  We observe that after sending 64 packets, the call to tx_send() takes almost one second to return.  So we believe the flow control is working, and there are 64 packets queue in the USRP.  

Very soon after that, we get an async message with EVENT_CODE_BURST_ACK.  The time_spec in that message is one sample time after the end of the first packet.  Very soon after that, we receive a number of async messages with EVENT_CODE_TIME_ERROR.  The time_spec in each of these appears to be 2 samples after the end of the corresponding packet.

1\.  Is is possible to send adjacent bursts?  That is, with time_spec values that are exactly 1996 samples after the previous burst?  Or is some gap required between the bursts? Based on some experiments with the tx_timed_samples example, I think there must be a gap of at least one sample between the bursts.

2\.  Is there any limit to how long a burst can be?  Currently, we are thinking to send the samples in one continuous burst.  Then, if an error is detected, (e.g. EVENT_CODE_TIME_ERROR, EVENT_CODE_UNDERFLOW), we will end the burst and start a new burst.  Only the first packet in the burst will include the time_spec parameter.

Thanks for your help!

Neal Riedel

Serrano Systems, Inc.

--b1_zm9g7ckmjEF3f3aDDgmdgX2RMTEkwMAvYmzS73E8vQ
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin, Marcus &amp; Rob,</p><p>Thank you for your previous responses=
.  Cy is working for me on this development. Let me jump in and explain wha=
t we are trying to accomplish.</p><p>We are using an x310 USRP to transmit =
samples from a custom C++ application over a 10Gb Ethernet interface.  The =
target sample rate is 200 MSps, with 16-bit I/Q samples.   We have receive =
functions running running reliably over the 10Gb Ethernet interface at the =
200 MSps rate.</p><p>We would like to stream the transmit samples continuou=
sly, and we want the sample timing to be synchronized to GPS time (our x310=
 is fitted with the internal GPSDO).</p><p>We understand that we may have o=
ccasional errors on the 10Gb Ethernet link, and that we will need to recove=
r from them.  We are trying to understand the best combination of burst siz=
e and packet size to accomplish this.</p><p>We initially tried making the b=
urst size and the packet size the same.  So each packet has 1996 samples, a=
nd the metadata in each packet has start_of_burst, end_of_burst, and has_ti=
mestamp all set true.  The time_spec in the metadata is updated by 1996 tic=
ks for each packet, corresponding to the number of samples in each packet. =
 We have flow control enabled on the transmit stream:</p><p>    uhd::stream=
_args_t tx_stream_args("sc16", "sc16");</p><p>    tx_stream_args.args["enab=
le_fc"] =3D "1"; // Enable flow control</p><p>    tx_stream_args.args["stre=
am_mode"] =3D "full_packet"; // Required for handling flow control response=
s</p><p>    tx_stream =3D usrp-&gt;get_tx_stream(tx_stream_args);</p><p>Sim=
ilar to the tx_timed_samples example, we set the time_spec of the first pac=
ket to be 1 second in the future, to be sure that we have enough samples qu=
eued up in the USRP before it actually begins transmitting.</p><p>This appr=
oach does not seem to work at all.  We observe that after sending 64 packet=
s, the call to tx_send() takes almost one second to return.  So we believe =
the flow control is working, and there are 64 packets queue in the USRP.  <=
/p><p>Very soon after that, we get an async message with EVENT_CODE_BURST_A=
CK.  The time_spec in that message is one sample time after the end of the =
first packet.  Very soon after that, we receive a number of async messages =
with =16EVENT_CODE_TIME_ERROR.  The time_spec in each of these appears to b=
e 2 samples after the end of the corresponding packet.</p><p>1.  Is is poss=
ible to send adjacent bursts?  That is, with time_spec values that are exac=
tly 1996 samples after the previous burst?  Or is some gap required between=
 the bursts? Based on some experiments with the tx_timed_samples example, I=
 think there must be a gap of at least one sample between the bursts.</p><p=
>2.  Is there any limit to how long a burst can be?  Currently, we are thin=
king to send the samples in one continuous burst.  Then, if an error is det=
ected, (e.g. EVENT_CODE_TIME_ERROR, EVENT_CODE_UNDERFLOW), we will end the =
burst and start a new burst.  Only the first packet in the burst will inclu=
de the time_spec parameter.</p><p>Thanks for your help!</p><p>Neal Riedel</=
p><p>Serrano Systems, Inc.</p>

--b1_zm9g7ckmjEF3f3aDDgmdgX2RMTEkwMAvYmzS73E8vQ--

--===============8342613876781427145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8342613876781427145==--
