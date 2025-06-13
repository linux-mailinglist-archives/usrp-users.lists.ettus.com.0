Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DBFAD8CFB
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jun 2025 15:19:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94F3E3861EE
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jun 2025 09:19:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749820759; bh=cwYcW489tI8/ylCJEfMRlTVi61FITgFgoNxAUQoQhQw=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=lNaIWCmbP9O0lbRk3YttbXLJMxqR7NTSAx2ZjLWlJI4wAkLixGfhVPb/ULzJ7AXiF
	 cjTz6F5Pq//j5bxvRtHDoBhiZX+FqshRQBa0GmtCEl91jAmyE5FM/rs8ZJ6jjIYcyB
	 9qwxzBblgX2zgo542OBN5oV10aC8Y1AzM0kolgaiBh7QdwZWefjAP0Nho3ihI/nWND
	 0Q7xuvLFMXQ4/b8V5hmxAMQTVf3opINn0NZmBTPRKoSeQT9lvMczJlJxSCKgXXwbMq
	 15Y2WpohopVRx7OsDM0Y7n7Mpz2QeKsiKOjH57CIykRN2BZ79+4JO80cgMCkWglGZn
	 g5HbJEt8bqEaQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB1B6386191
	for <usrp-users@lists.ettus.com>; Fri, 13 Jun 2025 09:18:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749820690; bh=3V7EysC8p8iswiL9OdPlrqtVal+5p0P95KQi21DcUoc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=0ZOlF9th830TyWDLHiOLWcvI2t6DOwJMREx45+VX3NVP4687UsfCxIPs8WsKJhSXK
	 r/c3MNl8AP4O3gtmqk00VMzDiIYMaHKlwWo7I4nw9/8bOjsYBJWK+qZ87akvNh+s97
	 pA4Cygyfqtm8/gBEUsVIGBt2yTyMYDEtw+2rR0y3EkvF4lwDQOgDh/3tMehEvfM/OG
	 aJHs8Ov0QExPXpoyn5fliL2BXrEbHcl06O06hOUmt7KbKZqUGEbiVMlRQWfwlSKdNN
	 TG3W02/myGoIUWUYTQWsKAQbScneKE+xCIDrXGjIV6yXGW7y01ySz/8+bUZOTacyML
	 BYBnV6Qu9cGfQ==
Date: Fri, 13 Jun 2025 13:18:10 +0000
To: usrp-users@lists.ettus.com
Message-ID: <SNCcre76vsniBhNvCxZvImtLPkldHahRk3nvsbtH94@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: WBTCYg2mY0obZphbp4U1z5hMPTfPZPsGehf2E09c@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: BLX4PBAKDPQTJKPLI2ADVXV6D4L4FOMU
X-Message-ID-Hash: BLX4PBAKDPQTJKPLI2ADVXV6D4L4FOMU
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to access the external 1PPS clock, from GPSDO, to be used inside a custom RFNOC block?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BLX4PBAKDPQTJKPLI2ADVXV6D4L4FOMU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============5489142772938915517=="

This is a multi-part message in MIME format.

--===============5489142772938915517==
Content-Type: multipart/alternative;
 boundary="b1_SNCcre76vsniBhNvCxZvImtLPkldHahRk3nvsbtH94"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_SNCcre76vsniBhNvCxZvImtLPkldHahRk3nvsbtH94
Content-Type: text/plain; charset=us-ascii

anant.tripathi@technosci.com wrote:

> Pretty much what the title says, our goal is to sync the timestamps to the rising edge of the 1PPS signal such that they get reset exactly on the rising edge of the 1pps signal, and increment the count of a custom metadata tag, to the outgoing stream to the UHD application that we are working on.

---

Hey,\
\
If you are using the existing PPS in port, [there are already existing functions that can set the timestamps to an arbitrary value on the next PPS edge.](https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1mb__controller_1_1timekeeper.html#a7a33e5c85c32cfb8c23937eb29b51a84)\
\
Since you did not specify which USRP device you are using I am just going to give the general approach.\
\
Via RFNoC Python API you should be able to access these via the timekeeper on the motherboard:\
\
`graph = uhd.rfnoc.RfnocGraph("addr=<Address of your device>") # Set pps source to external here if you need it, depending on device this would be the time_source=external argument.`

`tk = graph.get_mb_controller().get_timekeeper(0)              # Some devices have more then one timekeeper, using 0 as default.`

`tk.set_ticks_next_pps(0)                                      # Sets timestamp counter to 0 on next pps edge, you can also set it to an arbitrary value here.`

\
Regarding getting GPIO access from within your custom RFNoC block, that is dependent on the device you have, and can be a little bit more complicated.

Hope this helps a little.

Regards, \
Niels

--b1_SNCcre76vsniBhNvCxZvImtLPkldHahRk3nvsbtH94
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>anant.tripathi@technosci.com wrote:</p><blockquote><p>Pretty much what t=
he title says, our goal is to sync the timestamps to the rising edge of the=
 1PPS signal such that they get reset exactly on the rising edge of the 1pp=
s signal, and increment the count of a custom metadata tag, to the outgoing=
 stream to the UHD application that we are working on.</p></blockquote><div=
 contenteditable=3D"false" class=3D""><hr></div><p>Hey,<br><br>If you are u=
sing the existing PPS in port, <a href=3D"https://uhd.readthedocs.io/en/lat=
est/classuhd_1_1rfnoc_1_1mb__controller_1_1timekeeper.html#a7a33e5c85c32cfb=
8c23937eb29b51a84" title=3D"">there are already existing functions that can=
 set the timestamps to an arbitrary value on the next PPS edge.</a><br><br>=
Since you did not specify which USRP device you are using I am just going t=
o give the general approach.<br><br>Via RFNoC Python API you should be able=
 to access these via the timekeeper on the motherboard:<br><br><code>graph =
=3D uhd.rfnoc.RfnocGraph("addr=3D&lt;Address of your device&gt;") # Set pps=
 source to external here if you need it, depending on device this would be =
the time_source=3Dexternal argument.</code></p><p><code>tk =3D graph.get_mb=
_controller().get_timekeeper(0)              # Some devices have more then =
one timekeeper, using 0 as default.</code></p><p><code>tk.set_ticks_next_pp=
s(0)                                      # Sets timestamp counter to 0 on =
next pps edge, you can also set it to an arbitrary value here.</code></p><p=
><code><br></code>Regarding getting GPIO access from within your custom RFN=
oC block, that is dependent on the device you have, and can be a little bit=
 more complicated.</p><p>Hope this helps a little.</p><p><br></p><p>Regards=
, <br>Niels</p>

--b1_SNCcre76vsniBhNvCxZvImtLPkldHahRk3nvsbtH94--

--===============5489142772938915517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5489142772938915517==--
