Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC756DAF6E
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 17:10:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C0A5384783
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 11:10:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680880250; bh=rnUwp2VoTau1zeeX9jOQ1JkFTfBGv8Ltqe/2NXf14vI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tx0vJcG2RDP9Cl8cTFR4rT+IvNY3Ns7DqE0ojU+k84cgZufM1BD+gT/ELsjB4T3yY
	 nOJnVua6LcTNFxD2D2I7DrAhM8F9uNMK5/JhYpcafCO+bkWVulqUP7k/DmZmMqChwp
	 f9r8LgBQU7r2AUWFMoH1X+qagvk+gj6pfR+MV15cqO7pUQcAH5Wu3nm2Zv4SkVJIt+
	 epso9jh4l6mpu/+AGvatTSjtI7iApqMRDImpRsFTU51wvtr9tISzuPuH17IFd453XI
	 PWWnwxZ5CUW/kccZNaNYpraOlr6Myf0rDZOo+v0BS7sTDq1igSBMewxKt4XytWU9ix
	 5E1VWNaSudtOQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B7FC384AF8
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 11:10:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680880205; bh=qpa/p7ZiQsbGymiaiBRBqeXTKr71eYJ175JM0DsUQZg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=fIvWIM2pk43zlD764cV8SeLJeLadgMSnP6iQU6UjcDoVUGtIk95TJYWJeRAKP90cj
	 sgkuL01R9vIQcmmJfPv9HwvhRZ9oeScYkAfJqZ2ajr9R4XWRuol3+feoKTB2a85AUo
	 iiqpyu9zKviHmYEjqPNDd+NudiUSjNsh9dy+sR7S3B7baze2fK/Ee6p9BVmToopSq0
	 MSI+GXjMfkjikTVYnZT3sOxMzbCp1ImFZAIMmJMyXMmEgk46gDvlLPn77LYqucIuN0
	 f8pSKMOXiGP+zVmGtaRBs4F6rIAGf9CMxX7bmAAU+24OKFd3mxjblcmcLzZ7M8SdMN
	 uFaAlk9PNAKfQ==
Date: Fri, 7 Apr 2023 15:10:05 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <OgfyS2G2rlwvCg9EEVnHaEFbxgU3IDG7AjQ6pwiA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: S5EOhpoEKhUiygXxYE1NWtk4Q7D3ojGoRzc3fD4EGw@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: CDRYTOUU4Z35PC3W5ITZ7AIN6EL7V2UD
X-Message-ID-Hash: CDRYTOUU4Z35PC3W5ITZ7AIN6EL7V2UD
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 x4_200 connectivity question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CDRYTOUU4Z35PC3W5ITZ7AIN6EL7V2UD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4509996941545037092=="

This is a multi-part message in MIME format.

--===============4509996941545037092==
Content-Type: multipart/alternative;
 boundary="b1_OgfyS2G2rlwvCg9EEVnHaEFbxgU3IDG7AjQ6pwiA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_OgfyS2G2rlwvCg9EEVnHaEFbxgU3IDG7AjQ6pwiA
Content-Type: text/plain; charset=us-ascii

* Utilizing the CG_400 bitfile which does not include DUC/DDC resampling thus supports only rates of 491.52 MS/s and 500 MS/s.

--b1_OgfyS2G2rlwvCg9EEVnHaEFbxgU3IDG7AjQ6pwiA
Content-Type: text/html; charset=us-ascii

<ul><li><p>Utilizing the CG_400 bitfile which does not include DUC/DDC resampling thus supports only rates of 491.52 MS/s and 500 MS/s.</p></li></ul>


--b1_OgfyS2G2rlwvCg9EEVnHaEFbxgU3IDG7AjQ6pwiA--

--===============4509996941545037092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4509996941545037092==--
