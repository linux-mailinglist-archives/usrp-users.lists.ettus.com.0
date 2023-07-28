Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C44766919
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jul 2023 11:38:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E93A384CB4
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jul 2023 05:38:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690537122; bh=/U/ZK7Fx23GJ1qxypolow4UOduFV4rvvvf6/y3BTA2M=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ReyCVAfFk664OBCqa0yW8UdhPAGzivs3gp5BkGc3oOItzrgdlCkfJFuYyeDjdt+za
	 ENtAvkMjJcFIc1Ek9AYfWDjobhI9PG3VPztAxAObte+K1b2xQx42M8VZRpahUdhmuR
	 kfchC+nnBEvnIyFAARG5ocLDQGEdjWXC7WRb+pGZveGxavW8NC+Q0y36eSDB+CtpL+
	 Rz0AnLW0g/P98PsfDaacaIjhzNlViMT5ThdTAsmc/JlOctQ6nrvkSWj9W88GCd7hdP
	 04kh5+AFKv0fNYq9FwT2WFwSI+29l4UMgxCTs/QvxPRBc0A+oH3SBOTVEJuH3mDVRe
	 O444Qy9R9pdFg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B0CA384C24
	for <usrp-users@lists.ettus.com>; Fri, 28 Jul 2023 05:38:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690537087; bh=tcvFMCb2bknhhb+bbLxzCKv95maAQ2Szj58vfNJtlqw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=TNz3+J2vNPHMDqAb8lVGvR5zsXted5tOWD/aXaxI3qRxvPH799a6jSxB2IRKavhq2
	 3OW630UL/JlT2DpO4vvUnyhPMLbUC1dH7D90kQ/fmYuGRaisOJzPJhUwAcD2wQFMtJ
	 2VAtV4CwqcAiYEfNR1kgs3LXD712R4oVMENh2jJJd9pUZJpYaoFfTBy5VMfpPcMNvw
	 vLRCVU7CBOEcjC7zb6j4iUJ5xMeogcyLc4jq2sbvZx9lX+iYW6hBSn8biVmDK3MbY3
	 xMnXYy7cfUs4M386ClpCjJVAfQKLEhrGIZ/s8o7E2gCtAJ0ddhaI12uNN3spPHTjpH
	 +6yC9R3aSM1Xg==
Date: Fri, 28 Jul 2023 09:38:07 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <qR7SKZbVv8uqxx9keIc7gDcVIMfMPp1n9HTamts@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 14381bbf-65a9-9e23-9b0c-474fdf83302b@gmail.com
MIME-Version: 1.0
Message-ID-Hash: ORBXH3ILZAQSFXHGZDRN6ZKD3MBSJUAP
X-Message-ID-Hash: ORBXH3ILZAQSFXHGZDRN6ZKD3MBSJUAP
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Which optical transceivers are compatible with X410?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ORBXH3ILZAQSFXHGZDRN6ZKD3MBSJUAP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0513568251326863431=="

This is a multi-part message in MIME format.

--===============0513568251326863431==
Content-Type: multipart/alternative;
 boundary="b1_qR7SKZbVv8uqxx9keIc7gDcVIMfMPp1n9HTamts"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qR7SKZbVv8uqxx9keIc7gDcVIMfMPp1n9HTamts
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Marcus,

The page was edited yesterday. A link to a list was added and now it=E2=80=
=99s clear what it references to.

The list doesn=E2=80=99t include any QSFP28 optical modules (just 3m copp=
er cable) so the original question to the community is still valid.

Best Regards,\
Piotr Krysik

--b1_qR7SKZbVv8uqxx9keIc7gDcVIMfMPp1n9HTamts
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Marcus,</p><p>The page was edited yesterday. A link to a list wa=
s added and now it=E2=80=99s clear what it references to.</p><p>The list =
doesn=E2=80=99t include any QSFP28 optical modules (just 3m copper cable)=
 so the original question to the community is still valid.</p><p>Best Reg=
ards,<br>Piotr Krysik</p>


--b1_qR7SKZbVv8uqxx9keIc7gDcVIMfMPp1n9HTamts--

--===============0513568251326863431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0513568251326863431==--
