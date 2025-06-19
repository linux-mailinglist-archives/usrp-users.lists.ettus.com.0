Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7BCAE0420
	for <lists+usrp-users@lfdr.de>; Thu, 19 Jun 2025 13:42:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33A1A3861FC
	for <lists+usrp-users@lfdr.de>; Thu, 19 Jun 2025 07:42:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750333368; bh=YhQfLCZ35SWuCXgY8RT9x9P/1pIhQNaEbdFZpAZ8qlk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ssZozArNREaZaO5VXZHNqs2F/h8LlWq7h9l6lpWw5/WfisOWpCjTWWY0c92YDuobS
	 M1DfiBGgfyePozc+h0Wgnwb8LC27zV9XLwURrsrriZSsqQBEv/j52uaI/ks+pHfW9v
	 OhSLgxoHX/MceklL14RmUzpUGudITmHOpeHXiuvVx7Lq020ZdoVqmtS5YwbtUB4+ZA
	 SPFuSx4APGbJmDT2tHix2WY0Bl5gOJzJ55UDgaL3I2CIWstWT8Zo8Pogdi11N4cCI0
	 9RmuAB2xvCfBHfMPEyt8zHEWMhCb4I/O0QCf2akly80PF6EpaPNCkz1xkvGQ9gZHV3
	 3+cZGi69ltW9g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62B4B38612C
	for <usrp-users@lists.ettus.com>; Thu, 19 Jun 2025 07:41:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750333307; bh=dsAQxB8+LlbHhjxkmula6GxR0YSi0KT/gttDdHyPImw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=g0Nh4DxsUyOKImLwG3vOAWRWEJoS68lDLAZ9yzUrG3bpzBeB0Lwyi7rGL6nsVS0UZ
	 v+UkSjqsLKdCRik7VhNlkOxR6R5WtONQEZUoqQVFp8/Xbzy2W4NhTj1kPiortaiuVq
	 E1JM8BOpJzGusH9Q511fq7ydkLLOCEtwnl8qeqgHAqm81SQHQ7SZ0oAIhR/QaGaMjU
	 SfgLCk0zmyjTJCWs4EX+PzDfSvKdpL414WbAAo2tDNDUGjEanudHfLBw3JBkdeDA1O
	 rngk/dRk+x1uajwQOVy/4NcQI4gYiKsdsiVF5pPeq9mLCl/rSk67toTqPxNerryfV8
	 1KAv8THyr2QTw==
Date: Thu, 19 Jun 2025 11:41:47 +0000
To: usrp-users@lists.ettus.com
From: anant.tripathi@technosci.com
Message-ID: <sIEkYJdh3zZYYxyerYH5S72lmPc4VrmUTNroHSnPE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A6V-hoY51--WByrj4jcpGdQDBL0wuJ+o2mpXQW31dpPHA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: Q45TJ5PWIFBWEAKHAWML7JMXVS525EQI
X-Message-ID-Hash: Q45TJ5PWIFBWEAKHAWML7JMXVS525EQI
X-MailFrom: anant.tripathi@technosci.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to access the external 1PPS clock, from GPSDO, to be used inside a custom RFNOC block?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q45TJ5PWIFBWEAKHAWML7JMXVS525EQI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3239860821287940402=="

This is a multi-part message in MIME format.

--===============3239860821287940402==
Content-Type: multipart/alternative;
 boundary="b1_sIEkYJdh3zZYYxyerYH5S72lmPc4VrmUTNroHSnPE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_sIEkYJdh3zZYYxyerYH5S72lmPc4VrmUTNroHSnPE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks a ton for the replies!! I guess I don=E2=80=99t need the 1PPS dire=
ctly.\
\
I do have some other questions for RFNOC blocks and software configurabil=
ity, I=E2=80=99ll create a separate thread for that.

--b1_sIEkYJdh3zZYYxyerYH5S72lmPc4VrmUTNroHSnPE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks a ton for the replies!! I guess I don=E2=80=99t need the 1PPS d=
irectly.<br><br>I do have some other questions for RFNOC blocks and softw=
are configurability, I=E2=80=99ll create a separate thread for that.</p>


--b1_sIEkYJdh3zZYYxyerYH5S72lmPc4VrmUTNroHSnPE--

--===============3239860821287940402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3239860821287940402==--
