Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8935350E7
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 16:43:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D695E3843E2
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 10:43:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653576233; bh=h2ZnSp7d5uurhFx30gk1zo3+iNZRl2oB8KFBCMqCKQo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PY2+3yF2vq9t/bfXIZKdW5f/1pxKlY2L+uiLSQcCMB91MNkIgcWKzrFNoHAuJsnGi
	 V13t5C/VBlktvyMsm8wCzF9Zf/jg8FS9K4q2Ymi7zMLgvm8+mdGQHhnglP941Hwmv1
	 Lb6RHJTExZgbmil8CkJwyDl5MKHOPyIPqf0NBTELEVxj9301CIW0G2ahVjBJWvOTC+
	 KOztq575H1amZPrMJWnGSE/o1FKVQTNnrHHnj2jrFcBEm3B6zypwxTAixiD3DJYjtK
	 Fj5QD3GsfzMzzZFrHh/ajv0mr7XipSmVswpKSnvFmrRC/CeakK2STVl1PPDxi9vaCB
	 fAvp4/tf4CWuA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C61C384DA6
	for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 10:31:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653575496; bh=mHbdFI3ObqmIszngspwY2rzrTpudtv/id4DlUnnTdtg=;
	h=Date:To:From:Subject:From;
	b=DqhSQXdsqzNMX4VE8aAGO7vzN358tKsfnc+/Olk4/Ulj+1QIVnHDn9TirdIOhG9+O
	 Upm/h7bV5bNqDskf8Qf9BnxsnmQzZYUBggq3xYExdUtKR8idXbNigVexCIIpspZaLi
	 na82RtQUwOzQpBgMJdZuEz1gn6ldPdM3+Vs32+LLkY9Patd6LgTpsCD+vR1I69mBya
	 Qt26Ah8t617LvMKaC535bOJd8+xsVXG8w6lVyv+21+nfzhhGscQCzcqpNu4z6bNQXM
	 JFZMlfWhnGeamUEUGxB1zuC00xndrhB69N7eqzwyx/EbV/E13FNmAl7RzZmDnCgr2i
	 27OiSJUWkqiIQ==
Date: Thu, 26 May 2022 14:31:36 +0000
To: usrp-users@lists.ettus.com
From: luca.vigna@argotecgroup.com
Message-ID: <lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: ZWZNWRFZB23KU2YDE53IFAGBSWQXPJCX
X-Message-ID-Hash: ZWZNWRFZB23KU2YDE53IFAGBSWQXPJCX
X-MailFrom: luca.vigna@argotecgroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X300 DDC - Filter Taps
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZWZNWRFZB23KU2YDE53IFAGBSWQXPJCX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1991041089488709853=="

This is a multi-part message in MIME format.

--===============1991041089488709853==
Content-Type: multipart/alternative;
 boundary="b1_lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg
Content-Type: text/plain; charset=us-ascii

Hi all!

I am starting to look through some of the FPGA code of the USRP X300 in order to understand which is the DDC chain configuration in the default image.

I have understood that in the DDC chain there is 1 CIC filter + 3 Halfband filters. Since I want to characterize the DDC chain I have the following questions:

1. How are they used? I suppose that the halfband filters are used based on the decimation factor we need (max. 1024)

2. Which is the order of the CIC filter?

3. How many taps each halfband filters have? Which are the taps?

Thank you in advance,

Luca

--b1_lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg
Content-Type: text/html; charset=us-ascii

<p>Hi all!</p><p><br></p><p>I am starting to look through some of the FPGA code of the USRP X300 in order to understand which is the DDC chain configuration in the default image.</p><p><br></p><p>I have understood that in the DDC chain there is 1 CIC filter + 3 Halfband filters. Since I want to characterize the DDC chain I have the following questions:</p><ol><li><p>How are they used? I suppose that the halfband filters are used based on the decimation factor we need (max. 1024)</p></li><li><p>Which is the order of the CIC filter?</p></li><li><p>How many taps each halfband filters have? Which are the taps?</p></li></ol><p><br></p><p>Thank you in advance,</p><p>Luca</p>


--b1_lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg--

--===============1991041089488709853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1991041089488709853==--
