Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC56B77483E
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 21:29:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02FB3384AD9
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 15:29:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691522953; bh=39NbJBOaPD7YZ+K3eBrnZ9k0eAXnPztzOJlS3kZz+VM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nSbvm9EZQ//xLIsDLqQtLgfWzYVfoViO5bK6L4mslZ23mgrr52xVTsyvXcAlDdmdg
	 zUnjbTbGuVei8Hqbmtv9/sVPzJigE7dOc5GVLvmbHqA5dnR8wAqNh//TUERCuq/9ou
	 xYKDLI0yvkYcK+hOSL980O1LtuLJxiUyhdoSq929SiihkePCYPhNu+OgjMKpcBltht
	 vm9CG2wg7uLwQL4Q8+Jrijb5EEE46PRSSJmo8Y2gNQsHyDRDzuFmOy1KNzgW3nKMoT
	 qrcuDuscq63VxDYfJcIAIzEJdTwv38+MGujg7SF7cdRwAYsYbDL6OVOMvO+7tcKE5O
	 T4dRQAXrnkP3g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D99A384AD5
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 15:28:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691522919; bh=BnfgSNAfzBqAa1dkFjGA2yFoqpGkLMmOrCKqz9M3Hek=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=nco08rWwrwYLMJbz6fN4d8GGoA5lRgpiHao9R17hMgiHHoBmwLPfEIKBXYYYX1hRJ
	 jYUSkgIcL/9d5RYoJUXtso/KiSS3xH15EsAVeohh27egNH3XtVoMW78/9gU16I7s8l
	 txu4V2OWAbJCg2NjP69eZts6ktZKSFtilltrZkPezYyhZW9lrDfqYaDrq/q+UHmCcl
	 KDrJKBG1U2rUlycemJzkOb2xutsfaGeSs4Aku6BikJh/Xtek7VJBCCckwpSEhg2W+s
	 EqUOkS3jLsXwCMGmB/Ysf6pWAG467SOhztxw2twTsHiWriHFFLxIBMjxMG6HQy4mc9
	 vliO0GLrMfq5Q==
Date: Tue, 8 Aug 2023 19:28:39 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <HBwGLaxrkIvGeOun7uWJ8eui9XEWBCpBLk59L0leDA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3e97860a-2d30-d269-7883-9c86a2be0fa9@gmail.com
MIME-Version: 1.0
Message-ID-Hash: V7NOXWMYTEEKMHXGMS4MCIOVCZKUADBP
X-Message-ID-Hash: V7NOXWMYTEEKMHXGMS4MCIOVCZKUADBP
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V7NOXWMYTEEKMHXGMS4MCIOVCZKUADBP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5164434801871748880=="

This is a multi-part message in MIME format.

--===============5164434801871748880==
Content-Type: multipart/alternative;
 boundary="b1_HBwGLaxrkIvGeOun7uWJ8eui9XEWBCpBLk59L0leDA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HBwGLaxrkIvGeOun7uWJ8eui9XEWBCpBLk59L0leDA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Oh, it is located under the install_prefix/share/uhd/images/. for me.

I have a UHD-4.3 installation and it is built from the source. It goes by=
 the name usrp_b210_fpga.rpt and it came bundled with uhd_images_download=
er. I don=E2=80=99t recall installing any image from an outside source.

Regards,

Eden.

--b1_HBwGLaxrkIvGeOun7uWJ8eui9XEWBCpBLk59L0leDA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Oh, it is located under the install_prefix/share/uhd/images/. for me.<=
/p><p>I have a UHD-4.3 installation and it is built from the source. It g=
oes by the name usrp_b210_fpga.rpt and it came bundled with uhd_images_do=
wnloader. I don=E2=80=99t recall installing any image from an outside sou=
rce.</p><p>Regards,</p><p>Eden.</p>


--b1_HBwGLaxrkIvGeOun7uWJ8eui9XEWBCpBLk59L0leDA--

--===============5164434801871748880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5164434801871748880==--
