Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF67B36E99
	for <lists+usrp-users@lfdr.de>; Tue, 26 Aug 2025 17:49:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 004EA385FBA
	for <lists+usrp-users@lfdr.de>; Tue, 26 Aug 2025 11:49:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756223395; bh=l7a3wlgB/Z4502DESuwToQLgVeJdo3rAu5a4Nemw4Kk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tCb753i6JLNdYDqPnNZvZ82W4UaySwtPeO+ukBrZFQORKNdTLNjIbd4vXhwjqDhpw
	 TR6iL3JKAgf8wlkY04hVWG/55UxHcJOyyyL0VzqNwuuOKoCFWCsxWK9pBOt9LESs1a
	 6XzztQE7aHIfx+4zC13cPr+uTYdwHvoOvT6zENcSaZSAat13fKHXGxKKyZkG8S/rXH
	 W+qRbhpNX/EHtZFZuAr4ru/qsJ+Bb3Q5i75Uey7V1DOTT4oCU2wQ0OsKJVxScX+l9y
	 VvYVOmVhokirpKlisD3G5LJZHYlX+YeZuLZUi6958oCBWuKtsqm1VAh+cv0fE3QJcW
	 utxFS+eir47WQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D73E385F08
	for <usrp-users@lists.ettus.com>; Tue, 26 Aug 2025 11:49:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756223341; bh=YPRD0j6o1f2c1ps1zu7e6KaKmNVm62kT8qFK3n2mc7Q=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=aQHX6DbuQYA0IHD/36x9TYAAoIbG0g+SYc76UHdLHVgnrIBBnbqm9lVE5soVymGJR
	 PxAQ3+jtALIsbF5JKCyOHquTpOuSeNTlrAcwWR7hq3KK2I5lGCwqdcA5nDFawiIWQr
	 QWAmxyVhLV2ySuuiPJa7sD4h1D5ZRI93NZwoflmyhvWI5EXRBNwdcPcXu7qJCDlgzR
	 67LbbAQYjFhWhgOPDFXcbjAnWus7HeU6fEqt0DwXPL20KGOo6yxhaLD2LOU70tTT2g
	 jmjiATvtbfFk21MNeNR7isYFwZaqPU7XlagKKX2zz92Txh4n7CV7qfVLlExtOHhH+r
	 ZMaDhtUUUYi7w==
Date: Tue, 26 Aug 2025 15:49:01 +0000
To: usrp-users@lists.ettus.com
From: dennis.joosens@uantwerpen.be
Message-ID: <URBT2oW9yHCCQED5wSMVTZS2picdEqDS37NNg6h5mmI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 2e747d9f-1d80-4eba-bd6d-9de663a1cbf1@febo.com
MIME-Version: 1.0
Message-ID-Hash: JNDOXATQLKI5VK4W4Q4UCPQKPYMFVLGA
X-Message-ID-Hash: JNDOXATQLKI5VK4W4Q4UCPQKPYMFVLGA
X-MailFrom: dennis.joosens@uantwerpen.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: PPS signal OctoClock-G
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JNDOXATQLKI5VK4W4Q4UCPQKPYMFVLGA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9153367314251778955=="

This is a multi-part message in MIME format.

--===============9153367314251778955==
Content-Type: multipart/alternative;
 boundary="b1_URBT2oW9yHCCQED5wSMVTZS2picdEqDS37NNg6h5mmI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_URBT2oW9yHCCQED5wSMVTZS2picdEqDS37NNg6h5mmI
Content-Type: text/plain; charset=us-ascii

Hi John,

Thanks for this interesting insight!

However, I would think it is measured at 50 ohms as the outputs of the PPS on the OctoClock-G are SMA connectors. As far as I am aware, SMA connectors do not have a 1 Mohm impedance. 

I found that inverters are placed before the PPS outputs, which have a minimum output of 2.4 V and a typical output of 3.4 V. The input of the USRP B210 (which takes in the signal from the OctoClock-G) has an input range of 1.8 V to 5 V. So, I am not ruling out that mismatching or matching at 1 Mohm can work too.

So it is not really an error in the datasheet. But, it would have been nice if they had added an extra row in the table, pointing out at which impedance this was measured, similar to the 10 MHz signal.

--b1_URBT2oW9yHCCQED5wSMVTZS2picdEqDS37NNg6h5mmI
Content-Type: text/html; charset=us-ascii

<p>Hi John,</p><p>Thanks for this interesting insight!</p><p>However, I would think it is measured at 50 ohms as the outputs of the PPS on the OctoClock-G are SMA connectors. As far as I am aware, SMA connectors do not have a 1 Mohm impedance. </p><p>I found that inverters are placed before the PPS outputs, which have a minimum output of 2.4 V and a typical output of 3.4 V. The input of the USRP B210 (which takes in the signal from the OctoClock-G) has an input range of 1.8 V to 5 V. So, I am not ruling out that mismatching or matching at 1 Mohm can work too.</p><p>So it is not really an error in the datasheet. But, it would have been nice if they had added an extra row in the table, pointing out at which impedance this was measured, similar to the 10 MHz signal. </p>


--b1_URBT2oW9yHCCQED5wSMVTZS2picdEqDS37NNg6h5mmI--

--===============9153367314251778955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9153367314251778955==--
