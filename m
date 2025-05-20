Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B0FABE5CC
	for <lists+usrp-users@lfdr.de>; Tue, 20 May 2025 23:10:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 897A13841B0
	for <lists+usrp-users@lfdr.de>; Tue, 20 May 2025 17:10:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747775443; bh=ZsTsl552WbGg+AmkrrHUTyhum7rDZQAqHgXKArYVaDQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lmFEKNfEz+hVAQOMmF3aw6uwzWHcKQo++C5z7R+eOqq5RfeSwhIuZHvTTSWONKB3S
	 baC5j+Ntj2ekSilJEPiz9mteRi6UxUiULAlpypEpjG7yEQys7WwVM05gD2YtViF6Jk
	 oZr41hJDWg97ETBSBvcckUld82cZfTakhGL8lmfdZMextsBat3Lvv/iZgTJc2WdT3S
	 ZwGAc/Din7IoV0T4XOp00Ze8hd5qdxIEiszVL8BbbqE9EHHFERFP0wMMxYg7SG4G0y
	 y9lrw/NLTXobUT/MGr7O9j95cDKeVkdELLtaYqSj++YSlMscx+z4IYfyfE7RROJyqw
	 r5GcYO4a65WTg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 989E4383555
	for <usrp-users@lists.ettus.com>; Tue, 20 May 2025 17:10:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747775426; bh=A4cHalaj9tIgDAPwBcrpTiWDS8Mq8lCCXWG8c71zWc8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=k+SubEhgmoVkV4GGV8mFnQ+Hucbq0/F1OjGbfvg4AQ+r51J4Sg2iZtPuzPDZKsJDD
	 po0n5XP+azvdJd8cAZmjWx2lkZkOH5HvRlmlbYRysIq2SrZk8VXPuJnmaJYQkbH4/G
	 O8IU70JSNCOsIMHWU60MFiXLrsg39NGstWH/ksXqOktj6wknir4b+MC5Mix9zkAqHJ
	 rC+MoBjZ7BFyAudjDRZrXHZtMG44JMsWIxJMIEMOH9D7/2fC0rD+I+xAut/kyfbzFm
	 h+ByYfbepGUNUHOBdmsCryOlX6dKu5wXwMD3c7HGnjK0dV70TX1jKGdBxMZ6i+Fkuj
	 PlCj80Szy9aJQ==
Date: Tue, 20 May 2025 21:10:26 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <a9nwcsBWvolQr9UBhVy5xnNJ2NpKnDKXXkqNAUQFg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A5krjvTwdvz3M1vnrSygeEEnGiojGNMZGH3ciTCAtEsFw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: DUTORIULKAUDNXGKDKL36XLELL2V24AC
X-Message-ID-Hash: DUTORIULKAUDNXGKDKL36XLELL2V24AC
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal quality using RFNoC DUC blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DUTORIULKAUDNXGKDKL36XLELL2V24AC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3067855596264143985=="

This is a multi-part message in MIME format.

--===============3067855596264143985==
Content-Type: multipart/alternative;
 boundary="b1_a9nwcsBWvolQr9UBhVy5xnNJ2NpKnDKXXkqNAUQFg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_a9nwcsBWvolQr9UBhVy5xnNJ2NpKnDKXXkqNAUQFg
Content-Type: text/plain; charset=us-ascii

Where can I find more info about the fine frequency tuning?

In a more complex example where I need to set offset frequencies in a multichannel DUC what is the correct sequence to keep the fine tuning?

Ty

C

--b1_a9nwcsBWvolQr9UBhVy5xnNJ2NpKnDKXXkqNAUQFg
Content-Type: text/html; charset=us-ascii

<p>Where can I find more info about the fine frequency tuning?</p><p>In a more complex example where I need to set offset frequencies in a multichannel DUC what is the correct sequence to keep the fine tuning?</p><p>Ty</p><p><br></p><p>C</p>


--b1_a9nwcsBWvolQr9UBhVy5xnNJ2NpKnDKXXkqNAUQFg--

--===============3067855596264143985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3067855596264143985==--
