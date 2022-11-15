Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC4D62A03C
	for <lists+usrp-users@lfdr.de>; Tue, 15 Nov 2022 18:25:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70CF9383F54
	for <lists+usrp-users@lfdr.de>; Tue, 15 Nov 2022 12:25:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668533132; bh=I81uI/KuxAsDHtYvc5AZr0rVY1a66DnhxK9z8PD6tWA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BwvNkFhXN/qW0YH5inE8IDkLXOhZLSOFM+fy+WNrhY2N1wmk04p9r2lBIvFbAw4mT
	 0gX6RJd+aZ2f/SKlothOZGOifUHwsNwo1RHo5NU1nvCZMJQU8Q+N47i4xstdrax8n2
	 nPxWLIENUEh1P/fQqMCAtF3PskaOk5JxBQDsucg6k7uc9jj9bH2kh+4q939+KEVaBB
	 VxfvEqx39d1yDAyLVt3kaM7C2BhSbJtWLeMi/44t8n28qqsX4HQc1yFryN9Ip2C+EZ
	 XORtwS8MM3+XGSIk1rDxQeltFVk5Hp5xF/P8rMVLDazZ8SQYUYaqg/iCcAkEEUZ51l
	 BgU2EURUc5TaA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0971F383B67
	for <usrp-users@lists.ettus.com>; Tue, 15 Nov 2022 12:24:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668533048; bh=X06+neHZOpKtI+G0aHmxGwKP2S/O3kO+swyzeJaEPuY=;
	h=Date:To:From:Subject:From;
	b=HoW7KxoUolb/B6zQjzXQH2XPFiKdKgvv1JNqRDwwdQmsE9tXHKfJLWbs+SF1QbvKD
	 76S9cY7Dh7jvnqhMNbIOoo6tXpmGbpoKb8ZzlMoWbh6bcSc6A9Nclc9blhNaM6rqFA
	 A+jbnxZjrsdMHavJ4vz3aWcq3FcfMaGgqmyQuY3G+2GTtGIA6h0wDd75V8oQLkxZAs
	 NPLb3iRfQbA6LHrWcOgrtDbd2+OyN5jH1wi5dRDdvethE7M4sEdxKpDf2K7JK3FZgF
	 iPx3Q8wwiC4JK7PxI8Q4XcvMtrUkdNVkrNGb6wQZqZL5jq5Rbj+c6PhmC/gZzR+CQp
	 GCaOI0XTWS0kQ==
Date: Tue, 15 Nov 2022 17:24:08 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <EQAVWF11WON3bH2ChYEXOP78I3Gi0jz2UsdXTsbOE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 7MOXWJXZQ76HB5UO7NLALSGK7WFKM6NJ
X-Message-ID-Hash: 7MOXWJXZQ76HB5UO7NLALSGK7WFKM6NJ
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Accessing DDC block control in mutli_usrp application
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7MOXWJXZQ76HB5UO7NLALSGK7WFKM6NJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4932316567461586732=="

This is a multi-part message in MIME format.

--===============4932316567461586732==
Content-Type: multipart/alternative;
 boundary="b1_EQAVWF11WON3bH2ChYEXOP78I3Gi0jz2UsdXTsbOE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EQAVWF11WON3bH2ChYEXOP78I3Gi0jz2UsdXTsbOE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Is there a method for accessing a ddc_block_control object from a multi_u=
srp object? I have been skimming the various RFNoC examples, and it seems=
 the preferred method of accessing RFNoC objects is via the graph API. Th=
e problem is I can=E2=80=99t create an RFNoC graph for an existing multi_=
usrp object without getting a runtime exception.

It looks like in UHD 3.X there was a method get_device3() which gave acce=
ss to the underlying RFNoC structure. I am using UHD 4.2 with an x310.=20

Perhaps there is a reason that multi_usrp and RFNoC APIs appear mostly or=
thogonal. The reason I want access to this block directly is it has a set=
_freq() method that takes a frequency and a timestamp. Currently in my ap=
plication I use the timed command API to digitally retune at a specified =
time. The issue that I encounter is I have to ensure that my channels are=
 serialized in time, because if the freq hop timed command for channel A =
is t0, and channel B is t1, but the packet commanding channel B arrives f=
irst, I have to ensure my application holds the B command, waits for the =
A command to arrive, and issues the A command first. I would really like =
to be able to issue freq shifts independent of channel, but maintain the =
proper timestamping.

On top of that, I find the set_timed_command API cumbersome. I occasional=
ly crash from longer runs with my application. I don=E2=80=99t have the e=
xact runtime exception name, but it has something to do with a buffer bei=
ng full and crashing when too many timed commands are issued.

--b1_EQAVWF11WON3bH2ChYEXOP78I3Gi0jz2UsdXTsbOE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Is there a method for accessing a ddc_block_control object from a multi_=
usrp object? I have been skimming the various RFNoC examples, and it seems =
the preferred method of accessing RFNoC objects is via the graph API. The p=
roblem is I can=E2=80=99t create an RFNoC graph for an existing multi_usrp =
object without getting a runtime exception.</p><p>It looks like in UHD 3.X =
there was a method get_device3() which gave access to the underlying RFNoC =
structure. I am using UHD 4.2 with an x310. </p><p>Perhaps there is a reaso=
n that multi_usrp and RFNoC APIs appear mostly orthogonal. The reason I wan=
t access to this block directly is it has a set_freq() method that takes a =
frequency and a timestamp. Currently in my application I use the timed comm=
and API to digitally retune at a specified time. The issue that I encounter=
 is I have to ensure that my channels are serialized in time, because if th=
e freq hop timed command for channel A is t0, and channel B is t1, but the =
packet commanding channel B arrives first, I have to ensure my application =
holds the B command, waits for the A command to arrive, and issues the A co=
mmand first. I would really like to be able to issue freq shifts independen=
t of channel, but maintain the proper timestamping.</p><p>On top of that, I=
 find the set_timed_command API cumbersome. I occasionally crash from longe=
r runs with my application. I don=E2=80=99t have the exact runtime exceptio=
n name, but it has something to do with a buffer being full and crashing wh=
en too many timed commands are issued. </p>

--b1_EQAVWF11WON3bH2ChYEXOP78I3Gi0jz2UsdXTsbOE--

--===============4932316567461586732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4932316567461586732==--
