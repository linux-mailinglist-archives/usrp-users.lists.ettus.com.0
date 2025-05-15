Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E398AB8046
	for <lists+usrp-users@lfdr.de>; Thu, 15 May 2025 10:22:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31FD9385BBE
	for <lists+usrp-users@lfdr.de>; Thu, 15 May 2025 04:22:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747297360; bh=4TTiSrGOEOugH2RQkdVExaknV9dfvdY5+Tke0WtT7j8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=O2aXa38jzIDaVuv+m470LPeAqSAWUZUFbek2rr2WxVWQCGQInVPkWnHfBLqhb/i5H
	 dKqJxuF44AJ07PSPf2JOZbmTHF/IEDJjZDZxLvyVCL9g41fZJ2huZ6m5GlRccSOYvb
	 NFvrpOb5o4uiUqD7IEdu+HVb7VVM19htmrR3e16NoZaSqaJK8MRA7CBsnx3BgSVImq
	 471nWWMj+31gfeMkKyjE6oYGZkOlSLd2qNJvXhVGiKGZ48RuhzO5mTO9guTvkpgPCW
	 5th9G+9vZUBM3mpHsJ6dSd9qgMqwHN3stKabglP2mHpO78Qo+YUiOmGpcgm/JXdDY1
	 SVTSFB1tKF2Lw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 584A93859C5
	for <usrp-users@lists.ettus.com>; Thu, 15 May 2025 04:21:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747297317; bh=3S2HvADeMwEbajmlu/Dlc23sjbCNnAcpdH8//Or7Tcw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=YNjFMgyw38hdiRgWqEZfuJgOgbSfI4FazGT+/o93Z2HsTH9zOIXc6D+Nlzo89y5ey
	 NOUEOmtWLhIr7wx95zTTw9z8gfLJIfJp3KnVpogT6ESq9j7fJcfGQBIuu9AlzzksIp
	 uMFBJRlTQahjvh+U18/KZ7KlcrbKt3sfirkqeGs9iANQRbFn+p2l2ZP0ExYGZl14Yg
	 n988dAr4ynHVymzlze5HKPACyX+wzsprIX/7WydkL0zzDSGOKlEKYusc3g7KBjBrDD
	 f39cNWHLfIXSOax/uYejcGum9m5fx4KYxiPWwjxuNu+K0ZZMPqzDrup9+9mxrJByec
	 knddti5tUH+rg==
Date: Thu, 15 May 2025 08:21:57 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <rrQaGxqUTFoF5ljCao4AhesYLO94IOyuKKkKioZ8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A41WgqYxaqL5+hcW3u98R7W2TcP0fMPSdmmzpesHN6Exw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 6OCI6LRHH2XEWESRNKU2Q3JB3D7257L5
X-Message-ID-Hash: 6OCI6LRHH2XEWESRNKU2Q3JB3D7257L5
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 transmit multi streams on single radio channel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6OCI6LRHH2XEWESRNKU2Q3JB3D7257L5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7060653555567694221=="

This is a multi-part message in MIME format.

--===============7060653555567694221==
Content-Type: multipart/alternative;
 boundary="b1_rrQaGxqUTFoF5ljCao4AhesYLO94IOyuKKkKioZ8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rrQaGxqUTFoF5ljCao4AhesYLO94IOyuKKkKioZ8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you for your hints. Actually I implemented such configuration and i=
t seems to work too  :D, the signal is sum up and then transmitted.

I have some issues that I would like to understand how to fix:

\-The input signal to every streamer is int16, now since the samples comi=
ng from the 4 streamers of each channel are sum up, do you think that I h=
ave to divide the IQ signal value by 4 in order to avoid clipping, or is =
there any auto scaling inside?

\-I don=E2=80=99t know how to fine tuning the RF frequency. Normally I wo=
uld send a tune request with txstreamer->post_output_action() method, but=
 in this case I get an error which is telling me that =E2=80=9Ccannot for=
ward action tune_request from TxSteramer#0:OUTPUT_EDGE:0, no neighbour fo=
und!=E2=80=9D

Could you help me with that?

--b1_rrQaGxqUTFoF5ljCao4AhesYLO94IOyuKKkKioZ8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank you for your hints. Actually I implemented such configuration an=
d it seems to work too  :D, the signal is sum up and then transmitted.</p=
><p>I have some issues that I would like to understand how to fix:</p><p>=
-The input signal to every streamer is int16, now since the samples comin=
g from the 4 streamers of each channel are sum up, do you think that I ha=
ve to divide the IQ signal value by 4 in order to avoid clipping, or is t=
here any auto scaling inside?</p><p><br></p><p>-I don=E2=80=99t know how =
to fine tuning the RF frequency. Normally I would send a tune request wit=
h txstreamer-&gt;post_output_action() method, but in this case I get an e=
rror which is telling me that =E2=80=9Ccannot forward action tune_request=
 from TxSteramer#0:OUTPUT_EDGE:0, no neighbour found!=E2=80=9D</p><p><br>=
</p><p>Could you help me with that?</p><p><br></p>


--b1_rrQaGxqUTFoF5ljCao4AhesYLO94IOyuKKkKioZ8--

--===============7060653555567694221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7060653555567694221==--
