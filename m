Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4414E9BCA72
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2024 11:28:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 498A83859BF
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2024 05:28:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730802538; bh=0CJNvg8q5LqBh9j5p8DswoUZtllapObTL7udQh+BB0M=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=tET0OX5lPIfvrTQVYL0+eAmL8DMWiviIWLM2hPR15tTxuAyPkHBqDbV+XhDlwJmc7
	 DcVFImaU/Ke9QBmSNmzQRaIqQOHIP56W+XVzkRecOBF4xFK2+CJesg/yUj6sI2xb4J
	 0fmdygnT9c0oi4tLnZrNavmZAhqlpQ/M8B0YqknqaWLkD+6nuHwmdCzRMYgT9O/jsJ
	 jRV5Ab+k1A436guo3DPJcaDdHseyvoLAj5PhM/fD+UUaiu1zvxnCy3K0ucLru7G3Nb
	 hV5DXj6kqKVv3MMZC104tFtB2sc2zHzzNSWxIDpcADbJ/jGk8jyntNzSxemkItwMnx
	 N8tlbW3vPjDmw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7DC5638599C
	for <usrp-users@lists.ettus.com>; Tue,  5 Nov 2024 05:28:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730802514; bh=TXwq3R2SmeDpFOqd87kS+ebtZ3a+KA6yLPYIay7I4fI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=KLOQNhu56FemfdRXRS0vXH5/C6ZV1zE6Iahzc2ulTay01Ntm/Xi965ck941Vbxzlo
	 BBDm6g6dUPAazyfuYb3pQ73SpojpD9EvQNci3tnDT2sgx5z4eZXVaOaJDp2m30Aaqj
	 Ahheug0yD1rujEzlcWS5csFVDRqCd+rqkMiV4dQE5NTgp5a/yhF/MbAb2l0ohF5XEQ
	 SYN4Zxp3c4W5N/00eC6hXrDtbriXpUxPxBBiIB2Hxrxl5p++HYIx7wZFehrnFNn4/P
	 8StQ1tUg4WZKYtYfYt/LnDYkYMCW9kKLnN0njPtQA2brC2CBgGUQcAR9SenGTVJhYR
	 cUyEhLW/BXRkg==
Date: Tue, 5 Nov 2024 10:28:34 +0000
To: usrp-users@lists.ettus.com
Message-ID: <hUSZgU7rXdtJzTMZYXZ31xIqZ5aXIz4oHZ3AvCfgc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e17p6ROK7fe6rWTzJF81Y8fT8S1fPy5WNQIKoXaoUo@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: HOV3MXFMH5APGFFK5OGOBFEGPOTS5MHG
X-Message-ID-Hash: HOV3MXFMH5APGFFK5OGOBFEGPOTS5MHG
X-MailFrom: rubenthill@ymail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 with fft_cp FPGA image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HOV3MXFMH5APGFFK5OGOBFEGPOTS5MHG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: rubenthill--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: rubenthill@ymail.com
Content-Type: multipart/mixed; boundary="===============4007260594222250827=="

This is a multi-part message in MIME format.

--===============4007260594222250827==
Content-Type: multipart/alternative;
 boundary="b1_hUSZgU7rXdtJzTMZYXZ31xIqZ5aXIz4oHZ3AvCfgc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_hUSZgU7rXdtJzTMZYXZ31xIqZ5aXIz4oHZ3AvCfgc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

PS: maybe I should have checked for typos before sending the message. I h=
ope it is understandable, if not I=E2=80=99ll send a corrected version. S=
orry for the inconvenience.

--b1_hUSZgU7rXdtJzTMZYXZ31xIqZ5aXIz4oHZ3AvCfgc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>PS: maybe I should have checked for typos before sending the message. =
I hope it is understandable, if not I=E2=80=99ll send a corrected version=
. Sorry for the inconvenience. </p>


--b1_hUSZgU7rXdtJzTMZYXZ31xIqZ5aXIz4oHZ3AvCfgc--

--===============4007260594222250827==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4007260594222250827==--
