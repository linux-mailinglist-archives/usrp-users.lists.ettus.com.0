Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 865D572AF7E
	for <lists+usrp-users@lfdr.de>; Sun, 11 Jun 2023 00:25:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01812384AAA
	for <lists+usrp-users@lfdr.de>; Sat, 10 Jun 2023 18:25:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686435928; bh=ZlNP4E/gH2gTrNg+yh6qog33iM/RcH5u82hNSHkBPzs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DYiWmaMJxpHZe+uL/chS98b19TxKedC8ZZqTVUJYoK2FW74FJKS9AFW53wHHUpddY
	 12+VCOwwe7+6MeqT1n92USV3wK612sr9eeHmtwFZfRFCOSWGLDtTCNnaken84KOFvH
	 lqimEqLkRfhYdq0e3HglLxHhiRKIHwUAqLuy6BvkuKbmy14ePcb4E7EZM5ZkvV+Ldg
	 wBt3Kp9ELnZEYU5NJmwQtURgrKO2YT9z+f1lvHOzrDEPMbAixeTQ/7yAF8CVZxNJd7
	 fz9ta/Zpaz127FJMdapTKdkCHu3yrCudVgo7ROQPL7r/JddKWLHUeYKrM67kR1Qs3m
	 iOHoSzNgqG5Ew==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03417384A48
	for <usrp-users@lists.ettus.com>; Sat, 10 Jun 2023 18:25:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686435903; bh=/vuoiDHUOwBOFpLd3Awd3PVLYcGmNX/+7H+ZVRnycls=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=0O2vcNv1Nu3fH7kpj8cY+2AIUC2yOHEA3guchFqB5NK41UDgSTiXwoE232MlyPiLY
	 fafOchg4t7nk1DB7AwFeEFO3FYmy8qQ9M4cbzFzuDoKHlhqUMzYIAi/dEfhLzVvjYD
	 USrNOV5k+NeI8FAp7EQn43fIIuPa4WPo6QdLEJoUqBYaRb7yDVa5SRJ7RoMWdf8F4T
	 L9stiOKeoyIf+ZJ8g+ucROlsAeaSBQp0uzdtgrZczwMcoTd83oSLbTzP444CbGFasZ
	 nvTh7WfnGbDmSeH4OoKUgjSSmTi7zm9iyWYh3O4CV37zHLKzW10PcXwZpmuLSvUAiJ
	 rcOImX7t3xepg==
Date: Sat, 10 Jun 2023 22:25:02 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <TfHACVn578zIUky7RSGJdGurepnjOxBgX5XJuE9Yro@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=h1YTwiRshyEHUmqPFC_QJ3EP+xqvcfTThfGaLyoscvSA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 6CZQGCSJIXBVKPZ6STT2JCBXR5IRVI7T
X-Message-ID-Hash: 6CZQGCSJIXBVKPZ6STT2JCBXR5IRVI7T
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 TX issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6CZQGCSJIXBVKPZ6STT2JCBXR5IRVI7T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0874429595103760086=="

This is a multi-part message in MIME format.

--===============0874429595103760086==
Content-Type: multipart/alternative;
 boundary="b1_TfHACVn578zIUky7RSGJdGurepnjOxBgX5XJuE9Yro"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_TfHACVn578zIUky7RSGJdGurepnjOxBgX5XJuE9Yro
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Correcting the MEM_DATA_W of the replay block from 128 to 64 ended up doi=
ng the trick. Very strange that running with vs without the =E2=80=94GUI =
flag with the rfnoc_image_builder command changed the result, but regardl=
ess I can open the GUI and save the project now with a functioning transm=
it.

I also tried checking the logs of the compilation for anything hinting to=
 what was different across both compilations, but could not find anything=
, but its possible I may have missed something.

--b1_TfHACVn578zIUky7RSGJdGurepnjOxBgX5XJuE9Yro
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Correcting the MEM_DATA_W of the replay block from 128 to 64 ended up =
doing the trick. Very strange that running with vs without the =E2=80=94G=
UI flag with the rfnoc_image_builder command changed the result, but rega=
rdless I can open the GUI and save the project now with a functioning tra=
nsmit.</p><p>I also tried checking the logs of the compilation for anythi=
ng hinting to what was different across both compilations, but could not =
find anything, but its possible I may have missed something.</p>


--b1_TfHACVn578zIUky7RSGJdGurepnjOxBgX5XJuE9Yro--

--===============0874429595103760086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0874429595103760086==--
