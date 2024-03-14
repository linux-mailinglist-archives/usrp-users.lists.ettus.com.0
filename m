Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCAC87C195
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 17:57:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D15438537A
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 12:57:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710435464; bh=Zu4GQxNJYRfBhrMmOILhmGJtATr2iMY5X4Fja4X/P8k=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Ey0vghb3IVHYyAwRxT+yWeda+VmgV4QdE9xB4NNgOjWEjHCIf+DrU74035lbyuj/N
	 VmUbHB8e7ifhBzwli9cZ+LDzyfcVWu9OU2Q8MhQPlq9kXnXPMoyXOx7wo8POekYQHU
	 Un+gdv8JlzVJPhfenKWkZxjeEndNwB0wTx7Grl71I6znFh16wHBd54dIROE8PWGv86
	 KotRCmrrAr4veNd8/p5F2ZmpWmP/jI1kXuu8Fgl1ClqGSIRdF1X8fIkXd2DVHwtc0F
	 J39YJ88GF86iJKsav+e0Egv9xD+9G0zgauATYG/tcH2YbwQ9hpcscrYz619dW7Wbcf
	 cy9+P7wrPU0SA==
Received: from ms11p00im-qufo17281601.me.com (ms11p00im-qufo17281601.me.com [17.58.38.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 37F0F38524F
	for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 12:56:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="TUXDtqGV";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1710435413; bh=qc0RxqOGXHD2BvU3EOfqbCL8Ozu/vKbcSxUR4iXnQgo=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To;
	b=TUXDtqGVnEExwKAEsSt7fw1GZLdO5MRhNY9/RBVfm0kofd1yySC9uNCexAmn7FkdM
	 4ETciVrkS0T7nIJhY7jLeJSKpe9vrkF/vC/OPx/AF/lY4gHhyJzZ5hjk7pHblzEkII
	 nhL4YvmKj7YjLnTnxNidzzDEZ3R6eInffrdSOlb+hvjqCUCxPiDmK8uJtAHlHYFWqZ
	 s1pdI1k7oNk9tecJggP8gyht4DnVOfBhR9WBMpnZYfB0TjwEAMuf+J+bypSc6Ytrt6
	 z7ao3YInjqFnA46HtPmHaJaXUo34vTNJJNyohyzfpWYUCSIPtwK6wmLTKr1pGh4SUn
	 nDj3pnjrM8a2Q==
Received: from smtpclient.apple (ms11p00im-dlb-asmtpmailmevip.me.com [17.57.154.19])
	by ms11p00im-qufo17281601.me.com (Postfix) with ESMTPSA id EF565AA08A7
	for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 16:56:52 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
Message-Id: <D4276B0A-B6FC-43E8-9DAB-CA51FFFA86AC@me.com>
Date: Thu, 14 Mar 2024 09:56:40 -0700
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3774.400.31)
X-Proofpoint-GUID: _fVNCdWe4USwZEJ3sHQB7I6KQRfDzrhM
X-Proofpoint-ORIG-GUID: _fVNCdWe4USwZEJ3sHQB7I6KQRfDzrhM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-14_13,2024-03-13_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 malwarescore=0
 spamscore=0 mlxscore=0 phishscore=0 suspectscore=0 bulkscore=0
 mlxlogscore=596 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2403140128
Message-ID-Hash: KPBYM7NFWYCOXGHNNH5UCMODLRE7AI6L
X-Message-ID-Hash: KPBYM7NFWYCOXGHNNH5UCMODLRE7AI6L
X-MailFrom: jimgrubb@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NI 2944 to USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KPBYM7NFWYCOXGHNNH5UCMODLRE7AI6L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Grubb <jimgrubb@me.com>
Content-Type: multipart/mixed; boundary="===============3024165647565001235=="


--===============3024165647565001235==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_00766DFE-9754-4143-A70A-59D30064CC19"


--Apple-Mail=_00766DFE-9754-4143-A70A-59D30064CC19
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I have an NI 2944 which I would like to use with gnu radio. =20

I found the kb article describing how to load the X310 FPGA image here:

https://kb.ettus.com/Running_UHD_and_GNU_Radio_on_NI_USRP-RIO

I=E2=80=99d like to know how to find the IP address for the SFP+ 10G E =
port.  Is there a default address provisioned?  Does the box use DHCP =
and try to get its address from a DHCP server?

Thanks for any advice you can give me to make the conversion go =
smoothly.

Best,
Jim


--Apple-Mail=_00766DFE-9754-4143-A70A-59D30064CC19
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">I have an NI =
2944 which I would like to use with gnu radio. =
&nbsp;<div><br></div><div>I found the kb article describing how to load =
the X310 FPGA image here:</div><div><br></div><div><a =
href=3D"https://kb.ettus.com/Running_UHD_and_GNU_Radio_on_NI_USRP-RIO">htt=
ps://kb.ettus.com/Running_UHD_and_GNU_Radio_on_NI_USRP-RIO</a></div><div><=
br></div><div>I=E2=80=99d like to know how to find the IP address for =
the SFP+ 10G E port. &nbsp;Is there a default address provisioned? =
&nbsp;Does the box use DHCP and try to get its address from a DHCP =
server?</div><div><br></div><div>Thanks for any advice you can give me =
to make the conversion go =
smoothly.</div><div><br></div><div>Best,</div><div>Jim</div><div><br></div=
></body></html>=

--Apple-Mail=_00766DFE-9754-4143-A70A-59D30064CC19--

--===============3024165647565001235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3024165647565001235==--
