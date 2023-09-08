Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E93798061
	for <lists+usrp-users@lfdr.de>; Fri,  8 Sep 2023 03:57:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2288E385020
	for <lists+usrp-users@lfdr.de>; Thu,  7 Sep 2023 21:57:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694138255; bh=pNyrdFSMQnWhZT9UlYcXf1xV44oxuDJoY94uorqJwUY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zmgjwDqRNAWyQBId9fF9oLvoh2PzJMl4Cg5yyBWt8TlP+Mn2mMTYjjt/tQW0jBmRx
	 5SODxsVbhLrIgGL0La8cxOwVYtZm+lnK3aIeKiMKSQeuUqgSJYlaspLtMFdJkNklLE
	 7RSF/VFyc/bJevmJW+pzcVWtKWC7WTD0wIbHjFDhdGHENBKXI54T8QfBBiXG/vIh26
	 8+5LD3APCbI8eicTfZd0TIlbJCt3/Omb3ob4HjnAG4fu6UDxrWeu6XIRJBpWjTcNst
	 LE2x8B4Y01GArwUXZoGG93VzaCdH6HPx8EbfXBjJSToRDFC+UH9MJgKnDDfAphAJej
	 RXXZzQk6NAORg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74B27384E54
	for <usrp-users@lists.ettus.com>; Thu,  7 Sep 2023 21:56:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694138196; bh=jfNRWoI1GPpU/MBcjVb9QzrHczmWeE7bzCxKaggk1lg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=QVtmKXQMk4fsqJGMW9Iwt/XOU8YymqZ1+I9UerNRO5UJJQLF8D49cH54jPuLoFJOX
	 Z5PYw1KPajwG+kN6jt003KXBKGYcUdJT1APpn7f6sx6glmUO1RwxWju+s0uaXczNsu
	 eAPmR13qfY++j/8y9FJWBeQUzV2IStwFTAOE5g2TXTbr+NAWMVaKt5VzEdeYkAaXd+
	 UIZy3JZk+n3emEcHUX+o+bnXkpsrMUWEIzbtD6mZrFCbQwuAyvf77SGsxzbR2+uoi0
	 kjcWBJ5uzN2BfNsstClftzIm5iL29s2J/Gr5ww5fx4GWndGHBSGCSIzHdLyNAbVtV7
	 8Az8rX2n/YHcA==
Date: Fri, 8 Sep 2023 01:56:36 +0000
To: usrp-users@lists.ettus.com
From: 1920swapnil@gmail.com
Message-ID: <ue30bkcCYOx0F1Qcq1qNKGl54sjfMBxCTwsFoSuPwU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: d76d87e8-f1f7-ba94-018f-8067a57a072b@gmail.com
MIME-Version: 1.0
Message-ID-Hash: F4SSH7FKU5OGZOIFS3ESQR6JB4Y4SBCX
X-Message-ID-Hash: F4SSH7FKU5OGZOIFS3ESQR6JB4Y4SBCX
X-MailFrom: 1920swapnil@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set the gain settings in C++ API for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F4SSH7FKU5OGZOIFS3ESQR6JB4Y4SBCX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0042243728696013153=="

This is a multi-part message in MIME format.

--===============0042243728696013153==
Content-Type: multipart/alternative;
 boundary="b1_ue30bkcCYOx0F1Qcq1qNKGl54sjfMBxCTwsFoSuPwU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ue30bkcCYOx0F1Qcq1qNKGl54sjfMBxCTwsFoSuPwU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have the version 4.4.0.0 on ubuntu 22.04. I followed the =E2=80=98 Buil=
ding and Installing the USRP Open-Source Toolchain (UHD and GNU Radio) on=
 Linux=E2=80=99 guide, and yes I did install GNU Radio afterwards. I=E2=80=
=99ll try to uninstall GNU Radio to see if that fixes the issue.

--b1_ue30bkcCYOx0F1Qcq1qNKGl54sjfMBxCTwsFoSuPwU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I have the version 4.4.0.0 on ubuntu 22.04. I followed the =E2=80=98 B=
uilding and Installing the USRP Open-Source Toolchain (UHD and GNU Radio)=
 on Linux=E2=80=99 guide, and yes I did install GNU Radio afterwards. I=E2=
=80=99ll try to uninstall GNU Radio to see if that fixes the issue. </p>


--b1_ue30bkcCYOx0F1Qcq1qNKGl54sjfMBxCTwsFoSuPwU--

--===============0042243728696013153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0042243728696013153==--
