Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD80C35D875
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 09:05:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C46B538415B
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 03:05:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=itsystems.it header.i=@itsystems.it header.b="JXarzvcR";
	dkim-atps=neutral
Received: from www.itsystems.it (www.itsystems.it [62.94.30.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 711FE383FB9
	for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 03:04:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=itsystems.it; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vWxFl4GoN3ofeuf9agGvxcGEFWBuX19tY2UetuOSA4s=; b=JXarzvcRQIGSOBPMyc3PrnUAze
	4y1AoNPlRZJ3dOzVqoMUORTHohV4rfemMtALY7Hn3oJBVgxFKOO6rOaaUNjB29+FCFo0fkEcxvMDD
	0ongSI+mBS0P7vrMUvagq9HK0DoX9sM2Ypyec4dLr5s4EZiRNYTumQtr87ncp+cZXL1g=;
Received: from [10.10.0.138]
	by www.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <p.palana@itsystems.it>)
	id 1lWD5L-0004bF-Sv
	for usrp-users@lists.ettus.com; Tue, 13 Apr 2021 07:03:58 +0000
To: usrp-users@lists.ettus.com
References: <b4cb345657e64c14b5fc1bfa84d34922@gtri.gatech.edu>
From: Paolo Palana <p.palana@itsystems.it>
Message-ID: <804ea930-44e5-aad0-cf5c-77d13b0afbf7@itsystems.it>
Date: Tue, 13 Apr 2021 09:05:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b4cb345657e64c14b5fc1bfa84d34922@gtri.gatech.edu>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "v-mx.virt.itsystems.it",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Cheers to all the mailing list. I have similar problem too
    (the device is an X310 with TwinRx, UHD-3.15 on ubuntu 20.04). My NoC Block
    too has 2 input and 2 output at a different data rate. The start streaming
    goes smootly and it se [...]
 Content analysis details:   (-2.9 points, 5.0 required)
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
Message-ID-Hash: GTHI2O3HWXDS5GNVUMY2M4IZY7YYW455
X-Message-ID-Hash: GTHI2O3HWXDS5GNVUMY2M4IZY7YYW455
X-MailFrom: p.palana@itsystems.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI Stream Issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GTHI2O3HWXDS5GNVUMY2M4IZY7YYW455/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2136741116856235711=="

This is a multi-part message in MIME format.
--===============2136741116856235711==
Content-Type: multipart/alternative;
 boundary="------------6EC15A635402C87039F1CC9A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6EC15A635402C87039F1CC9A
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Cheers to all the mailing list.

I have similar problem too (the device is an X310 with TwinRx, UHD-3.15
on ubuntu 20.04). My NoC Block too has 2 input and 2 output at a
different data rate. The start streaming goes smootly and it seems to
work for a while, but when I stop the streaming (during my tests I
streamed for a very short time, say 10 secs) I had the following error
from UHD.

=A0 [ERROR] [UHD] Exception caught in safe-call. in
ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness_t
_endianness =3D uhd::ENDIANNESS_BIG] at ~/host/lib/rfnoc/ctrl_iface.cpp:5=
0
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
(CE_03_Port_61) no response packet - AssertionError: bool(buff) in
uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [with
uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D long
unsigned int] at ~/host/lib/rfnoc/ctrl_iface.cpp:151

It seems too me that the internal FPGA bus for some reason is stuck. In
fact when I see the signals with ILA after the stop streaming I can see
that the i_tready signal for the second input in my Noc Block is low,
while the the i_tvalid is high.

In my implementation I'm not using the axi_wrapper, but directly the
chdr_deframer_2clk and chdr_framer_2clk.

I'm pretty shure that the logic of my NoC Block is (almost) correct
because I have the same one running with UHD-3.10.3 without any problem.

Up to now I'm unable to pinpoint the problem, What can be the
problem?Any suggestion

Thank you for your attention

Paolo




--------------6EC15A635402C87039F1CC9A
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <p>Cheers to all the mailing list.</p>
    <p>I have similar problem too (the device is an X310 with TwinRx,
      UHD-3.15 on ubuntu 20.04). My NoC Block too has 2 input and 2
      output at a different data rate. The start streaming goes smootly
      and it seems to work for a while, but when I stop the streaming
      (during my tests I streamed for a very short time, say 10 secs) I
      had the following error from UHD.</p>
    <p>=A0 <font size=3D"-1">[ERROR] [UHD] Exception caught in safe-call.
        in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with
        uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG] at
        ~/host/lib/rfnoc/ctrl_iface.cpp:50
        this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError:
        IOError: Block ctrl (CE_03_Port_61) no response packet -
        AssertionError: bool(buff) in uint64_t
        ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double)
        [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG;
        uint64_t =3D long unsigned int] at
        ~/host/lib/rfnoc/ctrl_iface.cpp:151</font></p>
    <p>It seems too me that the internal FPGA bus for some reason is
      stuck. In fact when I see the signals with ILA after the stop
      streaming I can see that the i_tready signal for the second input
      in my Noc Block is low, while the the i_tvalid is high. <br>
    </p>
    <p>In my implementation I'm not using the axi_wrapper, but directly
      the chdr_deframer_2clk and chdr_framer_2clk.</p>
    <p>I'm pretty shure that the logic of my NoC Block is (almost)
      correct because I have the same one running with UHD-3.10.3
      without any problem.<br>
      <font size=3D"-1"></font></p>
    <p>Up to now I'm unable to pinpoint the problem<font size=3D"-1">, </=
font>What
      can be the problem?<font size=3D"-1"> </font>Any suggestion<font
        size=3D"-1"><br>
      </font></p>
    <p>Thank you for your attention</p>
    <p>Paolo<font size=3D"-1"><br>
      </font></p>
    <p><font size=3D"-1"><br>
      </font></p>
    <p><font size=3D"-1"><br>
      </font></p>
  </body>
</html>

--------------6EC15A635402C87039F1CC9A--

--===============2136741116856235711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2136741116856235711==--
