Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E7FBC6507
	for <lists+usrp-users@lfdr.de>; Wed, 08 Oct 2025 20:40:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F9BE385A3B
	for <lists+usrp-users@lfdr.de>; Wed,  8 Oct 2025 14:40:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759948834; bh=wfVlLLwhcajPEFGK0AO0Lf0jujiTgCgUwx9TCTdUYe8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rfxq7VUrSOxolV0+Ty499EcOy+R6uhLEPc0/B0h+SfEOZvA6NP+mtQGuWOU5BztSE
	 WmEANHXBusOrwPQZaSebksBGGcgO7+myuI40wIAsWvA5LVwfK2MkYItKGfoTW/fIYp
	 7ZOhgCU9wERroNy8DZid/f8FSLC1bXf1hfngukfw81Bz0BIOvAQq7f056outQJzptG
	 Dj1eu8AL/8uZX/MzpUjuXJVcD3rg8qMEzYP6/X7Po9DOBEeIaEk0sqNW6mOnjIlvzw
	 MyzrhkWmswA32YlAQfK2LPY7vEZbxgjv8Az/rDHc53ytg+WzGF2jW5gDGyAM1Z294/
	 JYiHkXh1TZIVA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B24E3857F8
	for <usrp-users@lists.ettus.com>; Wed,  8 Oct 2025 14:39:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759948771; bh=Qnd6pHLh9Y/FuQAAEFeW86tWJ5TlBg4DhUEsS2G5alA=;
	h=Date:To:From:Subject:From;
	b=LojzcdLREhE/iAjPJLRjXoM1BPf5wBSAL3wx2kaay4RR2gWHRMIlw8a/AMv436BJi
	 W20stsalXWnZDgH+hw9z0RHGK97sbPj3NLGz+zX5+vWEmq0Iqfwv+42SfCpD9w4+h3
	 6VxIVi1Kh3FMrKr0lhUT64ZJSHc9T06Ofx/F4pYt4cZN5VnhlhLe7cuct9Zj35i40B
	 O9aQqExxcH11GEpP9xj1fThq0ArHDf/L6y8+CwFXVK+HcczFaGC3+ySvnvrr8bHAUI
	 6U6TbJAYtVhQcwXbbqnbjdcyahcu+j6PSO1KnWfnxz+vXdWx/w0YrsTLV1m3UN7Nk3
	 NV7rMiThG5mCg==
Date: Wed, 8 Oct 2025 18:39:31 +0000
To: usrp-users@lists.ettus.com
From: ryan.a.wolfarth@gmail.com
Message-ID: <5D6pJksoat65AvVsHRzz6mSqsEI3UGvJsMi93HDD0e0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: TX4VBDCEPBST6BNNTUT3U4LNM4AWEO4F
X-Message-ID-Hash: TX4VBDCEPBST6BNNTUT3U4LNM4AWEO4F
X-MailFrom: ryan.a.wolfarth@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Accessing DDR within OOT RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TX4VBDCEPBST6BNNTUT3U4LNM4AWEO4F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0360569114993134480=="

This is a multi-part message in MIME format.

--===============0360569114993134480==
Content-Type: multipart/alternative;
 boundary="b1_5D6pJksoat65AvVsHRzz6mSqsEI3UGvJsMi93HDD0e0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5D6pJksoat65AvVsHRzz6mSqsEI3UGvJsMi93HDD0e0
Content-Type: text/plain; charset=us-ascii

Greetings,

I'm writing to request a heading-check on the design of an RFNoC block that needs to conditionally save/recall an arbitrary number of samples. I successfully built & ran a version of the gain example to convince myself that the build environment was setup correctly. Now I'm struggling to add the DDR interface to the design. 

My first thought was to port the functionality of the replay block to an OOT block that contains decision logic to save/recall the samples. By using the replay block's YAML file as a starting point, I expected rfnoc_modtool to generate HDL similar to what can be seen in rfnoc_block_replay.v. Unfortunately, the AXI memory mapped interface is absent in the resulting HDL. That makes me think that my YAML definition lacks specificity, or that the interface was added manually. I understand rfnoc_modtool is meant to be a starting point, so am I expecting too much? 

HDL is not in my wheelhouse, but I'm working with another engineer who has experience. We appreciate any insight & advice that this forum provides.

Thank you,

Ryan

--b1_5D6pJksoat65AvVsHRzz6mSqsEI3UGvJsMi93HDD0e0
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Greetings,</p><p>I'm writing to request a heading-check on the design of=
 an RFNoC block that needs to conditionally save/recall an arbitrary number=
 of samples. I successfully built &amp; ran a version of the gain example t=
o convince myself that the build environment was setup correctly. Now I'm s=
truggling to add the DDR interface to the design. </p><p>My first thought w=
as to port the functionality of the replay block to an OOT block that conta=
ins decision logic to save/recall the samples. By using the replay block's =
YAML file as a starting point, I expected rfnoc_modtool to generate HDL sim=
ilar to what can be seen in rfnoc_block_replay.v. Unfortunately, the AXI me=
mory mapped interface is absent in the resulting HDL. That makes me think t=
hat my YAML definition lacks specificity, or that the interface was added m=
anually. I understand rfnoc_modtool is meant to be a starting point, so am =
I expecting too much? </p><p>HDL is not in my wheelhouse, but I'm working w=
ith another engineer who has experience. We appreciate any insight &amp; ad=
vice that this forum provides.</p><p>Thank you,</p><p>Ryan</p>

--b1_5D6pJksoat65AvVsHRzz6mSqsEI3UGvJsMi93HDD0e0--

--===============0360569114993134480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0360569114993134480==--
