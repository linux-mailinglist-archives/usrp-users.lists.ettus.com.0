Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 845F0523C47
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 20:12:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B850384315
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 14:12:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652292730; bh=oGC3hOnwz4idrCXGLHaztykXogxJxln8MbYKo78a9yg=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=p38rLo8jgZCegqH3rYFfVPpDSbb1j1b+ghEYs5FPqjsHtaAYB5wxw40k7R3yY1i8k
	 C1j4/X+8jXpIm++JPocGfilWt9XJ+uFjiNoT86iTB8Y9VWd1ar7EQ+2B6ZLhOG5IA+
	 FiZ1o8LtyJxgR6CC/61js4+wI9Yzwb1u7PFqBAv//7DZoW6IUK5cNtWnpa/mvoGgeC
	 JgVUlxSDF+RlkWM1tbEBR2VFvapMdVI6hif/abXfGEA0zCfi6LUszIDpYoEHaq9t9x
	 QH+ujo2guBR6HL+xRsw0qiyqPPe7BWY9cyjpLVgVDj5HND4kWtdMMSiBJZWKdngXIZ
	 aBmsnGvGtoTAA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30DAB3842A7
	for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 14:10:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652292658; bh=hugvNntXF6gdm+jqajaOM4DD6LGLreoA/HS7tdGu40k=;
	h=Date:To:From:Subject:From;
	b=fR1JHSgvYHrBZGd9GWoKWBP8bYOxT9jyjhfRuoEt/hMXJHuQ+etC8ALdB7/BNQ1Ax
	 7kSvuOg+hdxV+kstIGqlqnZOrQMj6DL5FmDmKANpBAgyjI4fdGPkUxrc2t3Ie9dnhI
	 ZvhVOxoI6NITn9MjJclXKj9ak00uwYy2t0WFObCnnXsE4FoWOddwrO9zjT0gCgpb7Y
	 fjD625O4XgCp8mFtkugwB2WMzRSnxrJ7pP2S5JLiEepiiFufDc8HZAJ+84r4Lu7JVD
	 N6V7iSMoE+SPwcHBqLD+HWBqmQKV8HZ6T+MpfTrnOZC1JyjoEpSg9L9VWQVQNaTZ6q
	 Xal5FBmZ9aD1Q==
Date: Wed, 11 May 2022 18:10:58 +0000
To: usrp-users@lists.ettus.com
From: rblack@swri.org
Message-ID: <wJnU0NzoU1ulUt2QW5uXOtwMHcw6At3XHw6A0Oc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: MPJM3CC7AQM6XESECKYP344JKZXPMZ7Y
X-Message-ID-Hash: MPJM3CC7AQM6XESECKYP344JKZXPMZ7Y
X-MailFrom: rblack@swri.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC  DDC or DUC frequency change
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MPJM3CC7AQM6XESECKYP344JKZXPMZ7Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0024788502593762717=="

This is a multi-part message in MIME format.

--===============0024788502593762717==
Content-Type: multipart/alternative;
 boundary="b1_wJnU0NzoU1ulUt2QW5uXOtwMHcw6At3XHw6A0Oc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wJnU0NzoU1ulUt2QW5uXOtwMHcw6At3XHw6A0Oc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

A question for anyone:  when changing the frequency of a DUC (or DDC) wou=
ld you expect the output of the block to be phase continuous through the =
change?   Phase-continuous behavior would be typical for many DDC impleme=
ntations,  but with the RFNoc block I am seeing big, arbitrary phase jump=
s with the tune frequency change=E2=80=A6..

--b1_wJnU0NzoU1ulUt2QW5uXOtwMHcw6At3XHw6A0Oc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>A question for anyone:  when changing the frequency of a DUC (or DDC) =
would you expect the output of the block to be phase continuous through t=
he change?   Phase-continuous behavior would be typical for many DDC impl=
ementations,  but with the RFNoc block I am seeing big, arbitrary phase j=
umps with the tune frequency change=E2=80=A6..</p>


--b1_wJnU0NzoU1ulUt2QW5uXOtwMHcw6At3XHw6A0Oc--

--===============0024788502593762717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0024788502593762717==--
