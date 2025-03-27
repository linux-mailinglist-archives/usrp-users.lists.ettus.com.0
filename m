Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D176A73E15
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 19:43:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B962385646
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 14:43:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743101010; bh=QvHe/SRRaqGTpOPm5cZ+RIaMnsG3Wzj7XA/1i4kzIwU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ubfAqgGQDLQZXx5A725I+aiO/yv8Ld97tHa6zuLC04vnPZQTrLWhlYvWQ/qKP3TyZ
	 rRXgYehZcnJ7nH8CQvLh4AaUt/by7R4v8vcykj0yCAJVFJZGw4wolGbAflOAajFv+w
	 uQl42LNEtCzLT7Igo+5aB9tJtyUMkzJzI0laszQaxSXL871FvXhwp47uM9A/3t9XXs
	 t0wW8Ye1O9c1FYufiMWH1vOY2yONdXj99Swm4WRyQkCpgdgciuwkv/o0xuVEQzE1ji
	 3UlaQU0ydHva4MAuYbpsYzLnf1crTMys62kdPjVk2XEuFPjDRg7PUSX0CnGd1NGLdI
	 zwWGnzjcgHQUA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D648385434
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 14:43:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743100991; bh=fJ7697yJ4fBTkQ7vO69qaY6zSSfGyxnUQ9F9XYtBOm4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=gEefOwLJjwd47PBjdh95kY5AeLme3iGznlxoSZHIhbWwHhcbq9/uO29IQZiJ+wz68
	 602gjHVaZU7m6dx2L5eqzja9q8HgiHEahgf8IWjLXg2uVNk+liETK8I0bZeCLhp5E0
	 fGBgj4mnH+Xu/kRYCaRqcmYHluHqcg+VQJdzuFFcOCfXCCG76oIfsDUZ5R+VXJlgCO
	 XrLnOlItxZBDM9F8IRh+cXN147s3szPF00QjmA2rHy7TOUO4/JXW09Gr7v/61/To6W
	 8ncF/YD6uqWDNwQpAndHCfj00i7KAVSKJkORyP7DysEQ5rcnRMkORE/ehQjMhLziaH
	 IOXHlin0lebJg==
Date: Thu, 27 Mar 2025 18:43:11 +0000
To: usrp-users@lists.ettus.com
From: heath.j.stamm@gmail.com
Message-ID: <AGvxBfikcSfEUTgSd5kHd5ySwZFjhgUeDmuDlI4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAOEzSFQX9ziPf52R=rYzyAnpebcu+t1fEt_GTCtTQGVswhsSLg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: WRHNNAPMKLQUXRCSXZ4PBQIH46CBO6Y2
X-Message-ID-Hash: WRHNNAPMKLQUXRCSXZ4PBQIH46CBO6Y2
X-MailFrom: heath.j.stamm@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Phase Coherent but not Phase Aligned
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WRHNNAPMKLQUXRCSXZ4PBQIH46CBO6Y2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7086997726795600568=="

This is a multi-part message in MIME format.

--===============7086997726795600568==
Content-Type: multipart/alternative;
 boundary="b1_AGvxBfikcSfEUTgSd5kHd5ySwZFjhgUeDmuDlI4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_AGvxBfikcSfEUTgSd5kHd5ySwZFjhgUeDmuDlI4
Content-Type: text/plain; charset=us-ascii

Thanks for that reminder.  I took a look at that example.  We are using the RFNoC API (using the python bindings) and not the MultiUSRP API.  I assume the same sequence can be achieved setting up the SDR through RFNoC?

--b1_AGvxBfikcSfEUTgSd5kHd5ySwZFjhgUeDmuDlI4
Content-Type: text/html; charset=us-ascii

<p>Thanks for that reminder.  I took a look at that example.  We are using the RFNoC API (using the python bindings) and not the MultiUSRP API.  I assume the same sequence can be achieved setting up the SDR through RFNoC?</p>


--b1_AGvxBfikcSfEUTgSd5kHd5ySwZFjhgUeDmuDlI4--

--===============7086997726795600568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7086997726795600568==--
